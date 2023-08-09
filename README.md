ToDo Application with Docker, PostgreSQL, and pgAdmin
This is a simple ToDo application built using Django. It is designed to run inside Docker containers, utilizing PostgreSQL as the database and pgAdmin for database management.

Table of Contents
Prerequisites
Setup
Environment Variables
Building and Running
Usage
Accessing pgAdmin
Contributing
License
Prerequisites
Before you begin, make sure you have the following installed:

Docker: Install Docker
Docker Compose: Install Docker Compose
Setup
Environment Variables
Rename the .env.example file to .env.
Open the .env file in a text editor and set the following environment variables:
DEBUG: Set to True for development mode, and False for production mode.
SECRET_KEY: Django secret key for secure sessions. Generate one using python -c 'import secrets; print(secrets.token_hex(24))'.
DB_NAME: Name of the PostgreSQL database.
DB_USER: PostgreSQL username.
DB_PASSWORD: PostgreSQL password.
DB_HOST: Hostname for the PostgreSQL database (use db if running with Docker Compose).
DB_PORT: PostgreSQL port (default is 5432).
PGADMIN_DEFAULT_EMAIL: Email for the pgAdmin admin user.
PGADMIN_DEFAULT_PASSWORD: Password for the pgAdmin admin user.
Building and Running
Clone this repository: git clone https://github.com/yourusername/todo-django-docker.git
Navigate to the project directory: cd todo-django-docker
Build and start the Docker containers: docker-compose up -d --build
Apply database migrations: docker-compose exec web python manage.py migrate
Create a superuser for Django admin access: docker-compose exec web python manage.py createsuperuser
Your ToDo application should now be up and running!

Usage
Access the ToDo application by opening a web browser and navigating to http://localhost:8000/.

To access the Django admin panel, go to http://localhost:8000/admin/ and log in using the superuser credentials you created.

Accessing pgAdmin
You can access pgAdmin for managing the PostgreSQL database by opening a web browser and navigating to http://localhost:5050/. Log in using the admin user credentials you provided in the .env file.

Contributing
Contributions are welcome! Feel free to fork this repository, make improvements, and create pull requests.

License
This project is licensed under the MIT License.

