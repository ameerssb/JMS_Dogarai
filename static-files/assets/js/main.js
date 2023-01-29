

function remove(){
    document.getElementById("normal").style.display = "none";
    document.getElementById("advanced").style.display = "block"    

}

function add(){
    document.getElementById("normal").style.display = "block";
    document.getElementById("advanced").style.display = "none";

}

const xhr = new XMLHttpRequest();
function year2022(e) {
    if (e.target.checked){
        xhr.open("GET","?year="+document.getElementById("2022").val);
        xhr.send();
        console.log(xhr.response)
    }
}

function year2021(e) {
    if (e.target.checked){
        console.log("pressed "+document.getElementById("2021"))
    }    
}

function year2020(e) {
    if (e.target.checked){
        console.log("pressed "+document.getElementById("2020"))
    }
}
