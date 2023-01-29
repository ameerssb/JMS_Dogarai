from django.shortcuts import render,HttpResponseRedirect
from django.views import View
from .models import Publish_Papers_Info,Articles_Papers_Info
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
# Create your views here.

class Home(View):
    def get(self,request):

        context = {}

        return render(request, 'Journals/index.html', context)


def Sort(papers,year):
    p = []
    papers = list(papers)
    for i in papers:
        print(i.authors)
        if year in str(i.publish_time):
            p.append(i)
    return p


#function for counting number of rows
def Count(query):
    add = 0
    for inc in query:
        add +=1
    return add

class Search(View):
    display = 5
#   q = "SELECT MATCH (title) AGAINST ('Calculation of prompt' IN NATURAL LANGUAGE MODE) Score,title FROM journals_papers_info WHERE MATCH (title) AGAINST ('Calculation of prompt' IN NATURAL LANGUAGE MODE) ORDER BY MATCH (title) AGAINST ('Calculation of prompt' IN NATURAL LANGUAGE MODE) DESC;"

    def get(self, request):
        display = self.display
        count = 0
        if request.GET.get('keyword'):
            keyword = request.GET.get('keyword')
            if request.GET.get('by') == 'date':
                try:
                    query = ("SELECT * FROM journals_papers_info WHERE MATCH (title,journal,abstract,authors) AGAINST ('%s' IN NATURAL LANGUAGE MODE) ORDER BY MATCH (title) AGAINST ('%s' IN NATURAL LANGUAGE MODE),publish_time DESC;" %(keyword,keyword))
                    papers = Publish_Papers_Info.objects.raw(query)
                    count = Count(papers)
                except:
                    papers = ""
                by = 'date'
            else:
                try:
                    query = ("SELECT * FROM journals_papers_info WHERE MATCH (title,journal,abstract,authors) AGAINST ('%s' IN NATURAL LANGUAGE MODE) ORDER BY MATCH (title) AGAINST ('%s' IN NATURAL LANGUAGE MODE) DESC;" %(keyword,keyword))
                    papers = Publish_Papers_Info.objects.raw(query)
                    count = Count(papers)                    
                except:
                    papers = ""
                by = 'relevance'
            if request.GET.get('year'):
                year = request.GET.get('year')
                papers = Sort(papers,year)
                count = Count(papers)                
            else:
                year = '';
        else:
            papers,keyword,by,count,year = "","","","",""
        page = request.GET.get('page')
        if request.GET.get('display'):
            display = request.GET.get('display')
            display = int(display)
        paginator = Paginator(papers, display)
        try:
            papers = paginator.page(page)
        except PageNotAnInteger:
            papers = paginator.page(1)
        except EmptyPage:
            papers = paginator.page(paginator.num_pages)

        context = {'papers':papers, 'display': display,'keyword':keyword,'by':by, 'count': count, 'y':year}

        return render(request, 'Journals/search.html', context)


class Signin(View):
    def get(self,request):

        context = {}

        return render(request, 'Journals/signin.html', context)

    def post(self,request):

        if request.POST.get('Email') and request.POST.get('Password'):

            if request.GET.get('next'):
                return HttpResponseRedirect(request.GET.get('next'))
            return HttpResponseRedirect('/')

class More(View):
    def get(self,request,pk):
        paper = Publish_Papers_Info.objects.get(cord_uid=pk)

        context = {'paper':paper}

        return render(request, 'Journals/expand.html', context)

class Browse(View):
    def get(self,request):
        count = 0
        letter = ''
        if request.GET.get('by-letter'):
            letter = request.GET.get('by-letter')
            try:
                if letter.isalpha():
                    if len(letter) == 1:
                        papers = Publish_Papers_Info.objects.filter(title__istartswith=letter).values().order_by('-publish_time')
                        count = papers.count()
                    else:
                        papers = Publish_Papers_Info.objects.filter(title__icontains=letter).values().order_by('-publish_time')
                        count = papers.count()
                else:
                    papers = Publish_Papers_Info.objects.filter(title__regex=r'^\d').values().order_by('-publish_time')
                    count = papers.count()
            except:
                papers = ""
                            
        else:
            try:
                papers = Publish_Papers_Info.objects.filter(title__istartwith='A').values().order_by('-publish_time')
                count = papers.count()
            except:
                papers = ""
        page = request.GET.get('page')
        paginator = Paginator(papers, 10)
        try:
            papers = paginator.page(page)
        except PageNotAnInteger:
            papers = paginator.page(1)
        except EmptyPage:
            papers = paginator.page(paginator.num_pages)

        context = {'papers':papers, 'keyword':letter,'count': count,}

        return render(request, 'Journals/browse.html', context)



#                query1 = f"SELECT * FROM journals_papers_info WHERE MATCH (title) AGAINST ('{keyword}' IN NATURAL LANGUAGE MODE)  ORDER BY publish_time DESC;"
#                query2 = f"SELECT * FROM journals_papers_info WHERE MATCH (journal) AGAINST ('{keyword}' IN NATURAL LANGUAGE MODE)  ORDER BY publish_time DESC;"
#                query3 = f"SELECT * FROM journals_papers_info WHERE MATCH (authors) AGAINST ('{keyword}' IN NATURAL LANGUAGE MODE)  ORDER BY publish_time DESC;"
#                query4 = f"SELECT * FROM journals_papers_info WHERE MATCH (abstract) AGAINST ('{keyword}' IN NATURAL LANGUAGE MODE)  ORDER BY publish_time DESC;"
#                papers1 = Publish_Papers_Info.objects.raw(query1)
#                papers2 = Publish_Papers_Info.objects.raw(query2)
#                papers3 = Publish_Papers_Info.objects.raw(query3)
#                papers4 = Publish_Papers_Info.objects.raw(query4)
#                papers5 = list(papers1) + list(set(list(papers2)) - set(list(papers1)))
#                papers6 = list(papers5) + list(set(list(papers3)) - set(list(papers5)))
#                papers = list(papers6) + list(set(list(papers4)) - set(list(papers6)))
