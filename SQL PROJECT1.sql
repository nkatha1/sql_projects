/* ENSURES ALL VALUES IN A COLUMN ARE ALL DIFFERENT */
CREATE TABLE certificate(
					graduant_cert INT,
                    cert_name VARCHAR(20) UNIQUE,-- with the unique constraint the products name cannot be the same
                    price decimal (4, 2)
                    );
/* if you forget the unique constraint */
ALTER table certificate
ADD constraint
UNIQUE (product_name);
SELECT * FROM certificate;
/* INSERT THE VALUES IN THE TABLE */
INSERT INTO certificate
		values(1, "first", 3.99),
				(2, "second", 4.20),
                (3, "third", 5.29);
SELECT * FROM certificate; 
/* NOT NULL CONSTRAINT */
CREATE TABLE certificate (
		graduant_cert INT,
        cert_name varchar(20),
        price decimal (4, 2) NOT NULL);
SELECT * FROM CERTIFICATE;
ALTER TABLE certificate -- it makes changes in the table 
MODIFY price DECIMAL(4,2) NOT NULL;
SELECT * FROM certificate;
INSERT INTO certificate -- to insert something in the table since you insert a new one since we used the unique constraint 
VALUES (4,"fourth", 0.00);
select * from certificate;
/* CHECK CONSTRAINT */
/* IT CAN BE USED TO LIMIT WHAT VALUES ARE IN A COLUMN */
CREATE TABLE graduants(
		course_studied varchar(20),
        last_name varchar(20),
        first_name varchar(20),
        level_of_education varchar (20),
        email_adress varchar(200),
        CONSTRAINT pay_check check(hourly_pay <=10)
        );
SELECT * FROM graduants;
ALTER TABLE graduants
ADD hourly_pay decimal(2,5);
SELECT * FROM graduants;
/* TO A TABLE THAT ALREADY EXISTS */
ALTER TABLE graduants
ADD CONSTRAIT pay_check check (hourly_pay <=10);
select * from graduants;
/* to a table that does not exist */
/* TO DELETE A CHEck THAT HAS BEEN ADDED */
ALTER TABLE graduants
drop pay_check;
select * from graduants;

        


			

