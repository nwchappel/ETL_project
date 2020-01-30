CREATE TABLE school (
	id INT PRIMARY KEY,
	longitude float,
	latitude float,
	address varchar,
	city varchar,
	zipcode INT,
	school_name varchar,
	school_type varchar
);

CREATE TABLE offense_codes (
	offense_code INT PRIMARY KEY,
	name varchar
);

CREATE TABLE crime (
	incident_number varchar PRIMARY KEY,
	offense_code INT,
	offense_code_group varchar,
	offense_description varchar,
	district varchar,
	date varchar,
	street varchar,
	latitude float,
	longitude float,
	FOREIGN KEY (offense_code) REFERENCES offense_codes (offense_code)
);

CREATE TABLE housing (
	id INT PRIMARY KEY,
	avg_rooms_per_dwelling float,
	percent_lower_status_population float, 
	pupil_teacher_ratio float,
	median_value float
);

select * from school;
select * from offense_codes;
select * from crime;
select * from housing;

SELECT c.incident_number, c.offense_code, oc.name, c.date, c.street, c.longitude, c.latitude
FROM crime AS c
JOIN offense_codes AS oc
ON c.offense_code= oc.offense_code;
