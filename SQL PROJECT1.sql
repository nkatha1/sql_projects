CREATE DATABASE sqlPROJECT;
ALTER DATABASE sqlproject READ ONLY = 0;
CREATE TABLE graduants(
graduants_id INT,
first_name VARCHAR (20),
last_name VARCHAR (20),
course_studied VARCHAR (20),
graduation_date date
);
SELECT * FROM graduants;
RENAME TABLE employees to graduants;
SELECT * FROM graduants;
ALTER TABLE graduants
ADD level_of_education VARCHAR (20);
SELECT * FROM graduants;
ALTER TABLE graduants
DROP COLUMN graduation_date;
SELECT *FROM graduants;
ALTER TABLE graduants
RENAME COLUMN graduants_id TO email_adress;
SELECT * FROM graduants;
ALTER TABLE graduants
MODIFY COLUMN email_adress VARCHAR (200);
SELECT * FROM graduants;
ALTER TABLE graduants
MODIFY COLUMN course_studied VARCHAR(20)
first;
SELECT * FROM graduants;
ALTER TABLE graduants
MODIFY COLUMN last_name VARCHAR(20)
AFTER email_adress;
SELECT * FROM graduants;
ALTER TABLE graduants
DROP COLUMN email_adress;
SELECT * FROM graduants;
ALTER TABLE graduants
ADD COLUMN email_adress VARCHAR(200);
SELECT * FROM graduants;
INSERT INTO graduants
VALUES ("ENGINEERING","MAX","ALEX","MASTERS","max1@gmail.com");
SELECT * FROM graduants;
INSERT INTO graduants
VALUES ("SOFTWARE ENG","NKATHA","PATIENCE","DEGREE","n1@gmail.com"),
		("FINANCE","KANANA","MAUREEN","DEGREE","m1@gmail.com"),
        ("DATA ANALYST","NATALIE","PRINCE","CERTIFICATE","n4@gmail.com");
SELECT * FROM graduants;
INSERT INTO graduants (course_studied,last_name,first_name,level_of_education)
VALUES ("CIVIL ENG","KENDI","ANN","DIPLOMA");
SELECT * FROM graduants;
SELECT email_adress, course_studied
FROM graduants; 
SELECT *
FROM graduants
WHERE course_studied = "SOFTWARE ENG";
SELECT *
FROM graduants
WHERE level_of_education != "MASTERS";
SELECT *
FROM graduants
WHERE email_adress IS NULL;