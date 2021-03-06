DROP DATABASE IF EXISTS travelers_db;

CREATE DATABASE travelers_db;
USE travelers_db;

CREATE TABLE traveler (
	id INTEGER auto_increment NOT NULL,
    name VARCHAR (30),
    email VARCHAR (30),
     primary key (id)
);

CREATE TABLE location (
	id INTEGER auto_increment NOT NULL,
    name VARCHAR (30),
    traveler_id INTEGER,
     primary key (id),
     foreign key (traveler_id) references traveler (id)
     
);

CREATE TABLE trips (
	id INTEGER auto_increment NOT NULL,
    location_id INTEGER,
    trip_budget INTEGER,
    traveller_amount INTEGER, 
	primary key (id),
	foreign key (location_id) references location (id)
);


