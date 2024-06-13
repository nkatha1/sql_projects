select * from employee;
/* autocommit,commit,rollback*/
delete from employee;
select * from employee;
rollback; -- it restores the rows when they are deleted
select * from employee;
set autocommit = off;
commit; -- restores the columns 
select * from employee;

/* getting current date and time */
create table work(
					my_date DATE,
                    my_time TIME,
                    my_datetime DATETIME
                    );
select * from work;
insert into work
	values(current_date(),
			current_time(),
			now());
select * from work;
insert into work 
	values(current_date()+1,
			null,null);
select * from work;

/*unique constraint */
create table stationary(
						stationary_id INT,
                        stationary_name VARCHAR (20) unique,
                        stationary_purchasedate date
);
select * from stationary;
alter table stationary
add price decimal(4,2);
select * from stationary;
insert into stationary 
			values(1,"pens","2023-02-02",20.22),
					(2,"pencil","2024-03-05",20.43),
                    (3,"pens","2024-08-02",20.50);
select * from stationary; 
/* not null constraint*/
create table PRODUCTS (
							stationary_id INT,
                            stationary_name varchar(10),
                            stationary_price decimal(3,2) NOT NULL
                            );
SELECT * FROM PRODUCTS;
INSERT INTO products
			values(1,"covers", 2.02);
SELECT * FROM PRODUCTS;
/* CHECK CONSTRAINT */
/*it is used to limit what values can be placed in a column*/
select * from employee;
/*check constraint to a table that alredy exists*/
ALTER TABLE employee
ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 10.00);
SELECT * FROM EMPLOYEE;
INSERT INTO employee
values(6,"js","ax","2024-05-12",5.00); -- under hourly pay of 10.00
/* to delete a check*/
ALTER TABLE employee
DROP CHECK chk_hourly_pay;
SELECT * FROM employee;
/* DEFAULT CONSTRAINT */
/*In this one we don't exclusively set something*/
SELECT * FROM employee;
INSERT INTO employee
values (7, "peshy","vic",2024-08-09,21.00),
		(8,"wambo","ashley", 2024-09-08, 22.00);
SELECT * FROM employee;
CREATE TABLE products(
			stationary_id INT,
            stationary_name VARCHAR (20),
           stationary_price DECIMAL (4,2) NOT NULL);
SELECT * FROM products;
INSERT INTO products
VALUES (2, "pens", 2.04),
		(3, "pencils", 3.04),
        (4, "rubbers", 4.04);
SELECT * FROM products;
/* HOW TO DELETE FROM A TABLE */
DELETE FROM products
WHERE stationary_price >= 3.04;
SELECT * FROM products;

/* TO INCLUDE A CONSTRAINT TO AN ALREADY EXISTING TABLE*/
ALTER TABLE products
ALTER stationary_name set default 0;
SELECT * FROM products;

/* PRIMARY KEY CONSTRAINT (UNIQUE IDENTIFIER) /*
/* TO ADD A PRIMARY KEY TO A TABLE THAT ALREADY EXISTS 
you cannot have two rows with the same values*/
ALTER TABLE products
ADD CONSTRAINT
PRIMARY KEY (stationary_id);
SELECT * FROM products;
/* inserting new values in the existing table */
INSERT INTO products
values( 3, "rubbers", 3.04),
		( 4, "sharpener", 2.01);
SELECT * FROM products;
/* shows the column stationary price with the specified price */
SELECT stationary_price 
FROM products
WHERE stationary_price = 3.04;

/* AUTO INCREMENT */
/* WHEREVER WE INPUT A NEW KEY IN THIS IT INCREASES BY ONE */
CREATE TABLE transcations (
			transcations_id INT PRIMARY KEY auto_increment,
            amount decimal (6,3)
            );
SELECT * FROM transcations;
INSERT INTO transcations
values( 1,5.99);
select * from transcations;
INSERT INTO transcations (amount)
values ( 6.99);
select * from transcations;
INSERT INTO transcations (amount)
value (7.99);
select * from transcations;

            


