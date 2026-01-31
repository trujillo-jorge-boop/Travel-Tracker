------------------------------------------------------------- TRAVEL TRACKER PROJECT-----------------------------------

1.- Create the database travel_tracker en PostgresSQL

	CREATE DATABASE travel_tracker;

2.- In your index.js or file of conection make sure your credentials are correct

	const db = new pg.Client({
		user: "postgres",
		host: "localhost",
		database: "travel_tracker",  //name of the database
		password: "your_password",   //your password of postgresSQL
		port: 5432,
	});
	
3.-Run the file queries.sql in the terminal to create the main tables (users, visited_countries, countries)

	psql -U postgres -d travel_tracker -f db/schema.sql

4.- Import the file countries.csv into the table countries to have all the country_code and country_name

5.- Install dependencies of the project

	npm install
	
6.- Start the server

	npm start
	
7.- Open your browser

	http://localhost:3000
