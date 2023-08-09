# ToDo Application with Docker, PostgreSQL, and pgAdmin

This is a simple ToDo application built using Django. It is designed to run inside Docker containers, utilizing PostgreSQL as the database and pgAdmin for database management.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup](#setup)
  - [Environment Variables](#environment-variables)
  - [Building and Running](#building-and-running)
- [Usage](#usage)
- [Accessing pgAdmin](#accessing-pgadmin)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before you begin, make sure you have the following installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Setup

### Environment Variables

1. Rename the `.env.example` file to `.env`.
2. Open the `.env` file in a text editor and set the following environment variables:
   - `DEBUG`: Set to `True` for development mode, and `False` for production mode.
   - `SECRET_KEY`: Django secret key for secure sessions. Generate one using `python -c 'import secrets; print(secrets.token_hex(24))'`.
   - `POSTGRES_DB`: Name of the PostgreSQL database.
   - `POSTGRES_USER`: PostgreSQL username.
   - `POSTGRES_PASSWORD`: PostgreSQL password.
   - `POSTGRES_HOST`: Hostname for the PostgreSQL database (use `db` if running with Docker Compose).
   - `POSTGRES_PORT`: PostgreSQL port (default is `5432`).
   - `PGADMIN_DEFAULT_EMAIL`: Email for the pgAdmin admin user.
   - `PGADMIN_DEFAULT_PASSWORD`: Password for the pgAdmin admin user.
   - `PGADMIN_LISTEN_PORT` : pgadmin port (default is `5050`)

### Building and Running

1. Clone this repository: `git clone https://github.com/Abrahamkivosh/todo-app.git`
2. Navigate to the project directory: `cd todo-app`
3. Build and start the Docker containers: `docker-compose up -d --build`
4. Apply database migrations: `docker-compose exec app python manage.py migrate`
5. Create a superuser for Django admin access: `docker-compose exec app python manage.py createsuperuser`

Your ToDo application should now be up and running!

## Usage

Access the ToDo application by opening a web browser and navigating to `http://localhost:8000/`.

To access the Django admin panel, go to `http://localhost:8000/admin/` and log in using the superuser credentials you created.

## Accessing pgAdmin

You can access pgAdmin for managing the PostgreSQL database by opening a web browser and navigating to `http://localhost:5050/`. Log in using the admin user credentials you provided in the `.env` file.

## Contributing

Contributions are welcome! Feel free to fork this repository, make improvements, and create pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
