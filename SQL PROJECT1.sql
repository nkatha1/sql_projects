/* HOW TO CREATE A DATABASE */
CREATE DATABASE sqlPROJECT;
/*
 HOW TO ALTER A DATABASE
IF READ ONLY IS = 0 CHANGES CAN BE DONE
BUT IF READ ONLY = 1 CHANGES CANNOT BE EASILY DONE
 */
ALTER DATABASE sqlproject READ ONLY = 0;
/*
HOW TO  CREATE TABLES REMEMBER TO PUT THE VARIABLE TYPES AND THE NUMBER OF 
CHARACTERS ESPECIALLY IN VARCHAR
This table contains the columns which are id,first_name,last_name,email_adress
 */
CREATE TABLE graduants(
graduants_id INT, -- INTEGER AND PUT A COMMA AT THE END STATEMENT
first_name VARCHAR (20), -- VARIABLECHARACTER WITH 20 CHARACTERS
last_name VARCHAR (20),
course_studied VARCHAR (20),
graduation_date date -- NO COMMA OR SEMICOLON AT THE LAST STATEMENT
);
SELECT * FROM graduants;
RENAME TABLE employees to graduants; -- IT RENAMES THE TABLE
SELECT * FROM graduants; -- *SHOWS INCLUSIVE OF EVERYTHING
ALTER TABLE graduants -- TO CHANGE SOMETHING IN THE TABLE NO COMMA OR SEMICOLON AT END STATEMENT
ADD level_of_education VARCHAR (20);
SELECT * FROM graduants;
ALTER TABLE graduants
DROP COLUMN graduation_date; -- IT DROPS THE COLUMN graduation_name
ALTER TABLE graduants
RENAME COLUMN graduants_id TO email_adress; -- IT RENAMES THE COLUMN graduants_id TO email_adress
SELECT * FROM graduants;
ALTER TABLE graduants
MODIFY COLUMN email_adress VARCHAR (200); -- WHEN MODIFY SOMETHING ON THE COLUMN ENSURE YOU PUT THE VARIABLE TYPE
SELECT * FROM graduants;
ALTER TABLE graduants
MODIFY COLUMN course_studied VARCHAR(20)
first;
SELECT * FROM graduants;
ALTER TABLE graduants
MODIFY COLUMN last_name VARCHAR(20)
AFTER email_adress; -- IT PUTS THE last_name after email_adress
SELECT * FROM graduants;
ALTER TABLE graduants
DROP COLUMN email_adress;
SELECT * FROM graduants;
ALTER TABLE graduants
ADD COLUMN email_adress VARCHAR(200); -- ADDS THE COLUMN email_adress
SELECT * FROM graduants;
/* remember to always start with select * from then put enter then the information */
INSERT INTO graduants -- TO INSERT THE DATA IN THE COLUMNS as per the table named
VALUES ("ENGINEERING","MAX","ALEX","MASTERS","max1@gmail.com"); -- remember how to name the characters eg varchar is always in quotes
SELECT * FROM graduants;
/* HOW TO INSRT MULTIPLE VALUES IN A TABLE */
INSERT INTO graduants
VALUES ("SOFTWARE ENG","NKATHA","PATIENCE","DEGREE","n1@gmail.com"), -- after every end statement is a comma
		("FINANCE","KANANA","MAUREEN","DEGREE","m1@gmail.com"),
        ("DATA ANALYST","NATALIE","PRINCE","CERTIFICATE","n4@gmail.com"); -- remember after the last end statement here is a semicolon
SELECT * FROM graduants;
/* THE email_adress column will be NULL with the prson with the following specifications */
INSERT INTO graduants (course_studied,last_name,first_name,level_of_education)
VALUES ("CIVIL ENG","KENDI","ANN","DIPLOMA");
SELECT * FROM graduants;
/* TO SELECT SPECIFIC INFORMATION */
SELECT email_adress, course_studied
FROM graduants; 
SELECT *
FROM graduants
WHERE course_studied = "SOFTWARE ENG"; -- select specific information use WHERE CLAUSE 
SELECT *
FROM graduants
/* != IS THE OPERATOR THAT SHOWS THAT IT IS NOT EQUAL TO */
WHERE level_of_education != "MASTERS"; -- hence this one will show graduants with the level of education that is not masters
SELECT *
FROM graduants
/* TO FIND WHERE SPECIFIC INFORMATION IS NULL USE THE is NULL using = will lead to an error*/
WHERE email_adress IS NULL; -- it shows the column where email adress is NULL
/*BELOW IS HOW TO UPDATE OR DELETE DATA FROM A TABLE*/
UPDATE graduants 
SET email_adress = "a1@gmail.com", -- sets email adress of ANN
	level_of_education = NULL -- sets the level of educati to be NULL HENCE USE OF = NULL
WHERE first_name = "ANN";
SELECT * FROM graduants;
