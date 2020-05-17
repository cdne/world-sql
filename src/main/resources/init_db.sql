DROP TABLE IF EXISTS city CASCADE;
DROP TABLE IF EXISTS country CASCADE;
DROP TABLE IF EXISTS countrylanguage CASCADE;

-- your code here which creates the tables

CREATE TABLE city (
   id INTEGER NOT NULL UNIQUE,
   name varchar(50) NOT NULL,
   countrycode varchar(3) NOT NULL,
   another_name varchar(50) NOT NULL,
   population integer NOT NULL
);

CREATE TABLE country(
    code VARCHAR(3) NOT NULL,
    name VARCHAR(50) NOT NULL,
    continent VARCHAR(50) NOT NULL,
    region VARCHAR(50) not null,
    surfacearea NUMERIC NOT NULL,
    established integer,
    capital_population integer NOT NULL,
    number1 float ,
    number2 float ,
    number3 float ,
    capital VARCHAR(50) not null,
    governmentform VARCHAR(50) NOT NULL,
    leader varchar(120),
    city_id integer references city(id),
    new_code VARCHAR(2) NOT NULL
);

CREATE TABLE countrylanguage (
    countrycode varchar(3) references country(code) NOT NULL UNIQUE,
    language varchar(50) NOT NULL UNIQUE,
    isofficial boolean NOT NULL,
    percentage REAL NOT NULL

);