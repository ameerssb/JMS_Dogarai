Bature Journals is a web-based Journal Management System developed using Python and the Django framework. It provides a comprehensive solution for managing academic journals, including paper search, author management, reviewer management, editor management, and administration capabilities. This README file serves as a guide to understanding the system and its functionalities.

Features

Paper Search:
Search for journal papers based on title, author, keyword, or category.
View detailed information about each paper, including abstract, publication date, and associated authors.

Author Management:
Maintain a database of authors contributing to the journal.
Add new authors and their information.
Edit and update author details.
Track the publications and submission history of authors.

Reviewer Management:
Manage a pool of reviewers responsible for reviewing papers.
Add, remove, and update reviewer profiles.
Assign papers to reviewers for review.
Track the status of assigned reviews.
Evaluate reviewer performance based on feedback and ratings.

Editor Management:
Manage a team of editors responsible for overseeing the journal.
Add, remove, and update editor profiles.
Assign papers to editors for final decision-making.
Monitor the progress of assigned papers.
Communicate with reviewers and authors regarding papers.

Admin Panel:
Access control and user management.
Configure system settings and preferences.
Generate reports and statistics.
Handle system maintenance and backups.

Installation:
Clone the repository to your local machine.
git clone https://github.com/ameerssb/JMS_Dogarai.git

Install the required dependencies:
cd JMS_Dogarai
pip install -r requirements.txt

Set up the database:
Create a new database using your preferred database management system (e.g., PostgreSQL, MySQL).

Update the database configuration in the settings.py file with your database details.

Run database migrations to create the necessary tables:
python manage.py migrate

Create a superuser for admin access:
python manage.py createsuperuser

Start the development server:
python manage.py runserver

Access the application:
Open a web browser and navigate to http://localhost:8000 (or the specified port if modified).
Login with the superuser account created in step 5.

Usage
Login to the application using your administrator account.
Explore the different sections: Paper Search, Authors, Reviewers, Editors, and Admin.
Perform various actions such as searching, adding, editing, and deleting records based on the respective sections' functionality.
Customize settings, manage users, and generate reports using the Admin Panel.
Regularly backup the database to prevent data loss.
Support and Contribution
For any issues or inquiries, please contact the support team at baturesanisufyan@gmail.com. Contributions to the project are welcome. If you encounter a bug or have a feature request, please submit an issue on the project's GitHub repository.

License
This project is licensed under the MIT License. Feel free to use and modify the system as per your requirements.


