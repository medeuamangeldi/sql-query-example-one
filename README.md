### Running PostgreSQL with Docker Compose and Accessing it with pgAdmin

This repository provides a Docker Compose configuration to easily set up a PostgreSQL database and pgAdmin for database management. 

#### Running PostgreSQL and pgAdmin with Docker Compose

To run PostgreSQL and pgAdmin using Docker Compose, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the directory containing the `docker-compose.yml` file.
3. Open a terminal and run the following command:

   ```bash
   docker-compose up -d
   ```

   This command will start the PostgreSQL and pgAdmin containers in the background.

#### Accessing PostgreSQL with pgAdmin

Once the containers are running, you can access pgAdmin in your web browser by visiting `http://localhost:5050`. Use the following default credentials:

- **Email**: pgadmin4@pgadmin.org
- **Password**: admin

Within pgAdmin, you can add a new server connection by providing the following details:

- **Name**: Any name for your connection.
- **Host name/address**: `postgres`
- **Port**: `5432`
- **Username**: `postgres`
- **Password**: `changeme` (or the password you set in the `docker-compose.yml` file)

#### Task One SQL Query

The SQL query for Task One is provided in the `task_one.sql` file. This query retrieves specific information from the `table_first_task` table.

#### Output

The output of the SQL query is stored in the `output.csv` file. This file contains the results of executing the SQL query against the PostgreSQL database.