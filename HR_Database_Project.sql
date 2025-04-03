
Create Database HRDatabaseMangement

Use HRDatabaseMangement

CREATE TABLE regions (
region_id INT PRIMARY KEY,
region_name VARCHAR (25) DEFAULT NULL)

CREATE TABLE countries (
country_id CHAR (2) PRIMARY KEY,
country_name VARCHAR (40) DEFAULT NULL,
region_id INT NOT NULL,
FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE
CASCADE ON UPDATE CASCADE)


CREATE TABLE locations (
location_id INT PRIMARY KEY,
street_address VARCHAR (40) DEFAULT NULL,
postal_code VARCHAR (12) DEFAULT NULL,
city VARCHAR (30) NOT NULL,
state_province VARCHAR (25) DEFAULT NULL,
country_id CHAR (2) NOT NULL,
FOREIGN KEY (country_id) REFERENCES countries (country_id) ON DELETE
CASCADE ON UPDATE CASCADE)

CREATE TABLE jobs (
job_id INT PRIMARY KEY,
job_title VARCHAR (35) NOT NULL,
min_salary DECIMAL (8, 2) DEFAULT NULL,
max_salary DECIMAL (8, 2) DEFAULT NULL)

CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR (30) NOT NULL,
location_id INT DEFAULT NULL,
FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE
CASCADE ON UPDATE CASCADE)


CREATE TABLE employees (
employee_id INT PRIMARY KEY,
first_name VARCHAR (20) DEFAULT NULL,
last_name VARCHAR (25) NOT NULL,
email VARCHAR (100) NOT NULL,
phone_number VARCHAR (20) DEFAULT NULL,
hire_date DATE NOT NULL,
job_id INT NOT NULL,
salary DECIMAL (8, 2) NOT NULL,
manager_id INT DEFAULT NULL,
department_id INT DEFAULT NULL,
FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON DELETE CASCADE ON
UPDATE CASCADE,
FOREIGN KEY (department_id) REFERENCES departments (department_id) ON
DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (manager_id) REFERENCES employees (employee_id)
)

CREATE TABLE dependents (
dependent_id INT PRIMARY KEY,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
relationship VARCHAR (25) NOT NULL,
employee_id INT NOT NULL,
FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON DELETE
CASCADE ON UPDATE CASCADE)


INSERT INTO regions(region_id,region_name)
VALUES (1,'Europe')
INSERT INTO regions(region_id,region_name)
VALUES (2,'Americas')
INSERT INTO regions(region_id,region_name)
VALUES (3,'Asia')
INSERT INTO regions(region_id,region_name)
VALUES (4,'Middle East and Africa')

INSERT INTO countries(country_id,country_name,region_id)
VALUES ('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('ZW','Zimbabwe',4);

INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');


INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (19,'Stock Manager',5500.00,8500.00);


INSERT INTO departments(department_id,department_name,location_id)
VALUES (1,'Administration',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (2,'Marketing',1800);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (3,'Purchasing',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (4,'Human Resources',2400);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (5,'Shipping',1500);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (6,'IT',1400);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (7,'Public Relations',2700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (8,'Sales',2500);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (9,'Executive',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (10,'Finance',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (11,'Accounting',1700);


INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
VALUES 
(100, 'Steven', 'King', 'steven.king@sqltutorial.org', '515.123.4567', '1987-06-17', 4, 24000.00, NULL, 9),
(101, 'Neena', 'Kochhar', 'neena.kochhar@sqltutorial.org', '515.123.4568', '1989-09-21', 5, 17000.00, 100, 9),
(102, 'Lex', 'De Haan', 'lex.dehaan@sqltutorial.org', '515.123.4569', '1993-01-13', 5, 17000.00, 100, 9),
(103, 'Alexander', 'Hunold', 'alexander.hunold@sqltutorial.org', '590.423.4567', '1990-01-03', 9, 9000.00, 102, 6),
(104, 'Bruce', 'Ernst', 'bruce.ernst@sqltutorial.org', '590.423.4568', '1991-05-21', 9, 6000.00, 103, 6),
(105, 'David', 'Austin', 'david.austin@sqltutorial.org', '590.423.4569', '1997-06-25', 9, 4800.00, 103, 6),
(106, 'Valli', 'Pataballa', 'valli.pataballa@sqltutorial.org', '590.423.4560', '1998-02-05', 9, 4800.00, 103, 6),
(107, 'Diana', 'Lorentz', 'diana.lorentz@sqltutorial.org', '590.423.5567', '1999-02-07', 9, 4200.00, 103, 6),
(108, 'Nancy', 'Greenberg', 'nancy.greenberg@sqltutorial.org', '515.124.4569', '1994-08-17', 7, 12000.00, 101, 10),
(109, 'Daniel', 'Faviet', 'daniel.faviet@sqltutorial.org', '515.124.4169', '1994-08-16', 6, 9000.00, 108, 10),
(110, 'John', 'Chen', 'john.chen@sqltutorial.org', '515.124.4269', '1997-09-28', 6, 8200.00, 108, 10),
(111, 'Ismael', 'Sciarra', 'ismael.sciarra@sqltutorial.org', '515.124.4369', '1997-09-30', 6, 7700.00, 108, 10),
(112, 'Jose Manuel', 'Urman', 'josemanuel.urman@sqltutorial.org', '515.124.4469', '1998-03-07', 6, 7800.00, 108, 10),
(113, 'Luis', 'Popp', 'luis.popp@sqltutorial.org', '515.124.4567', '1999-12-07', 6, 6900.00, 108, 10),
(114, 'Den', 'Raphaely', 'den.raphaely@sqltutorial.org', '515.127.4561', '1994-12-07', 14, 11000.00, 100, 3),
(115, 'Alexander', 'Khoo', 'alexander.khoo@sqltutorial.org', '515.127.4562', '1995-05-18', 13, 3100.00, 114, 3),
(116, 'Shelli', 'Baida', 'shelli.baida@sqltutorial.org', '515.127.4563', '1997-12-24', 13, 2900.00, 114, 3),
(117, 'Sigal', 'Tobias', 'sigal.tobias@sqltutorial.org', '515.127.4564', '1997-07-24', 13, 2800.00, 114, 3),
(118, 'Guy', 'Himuro', 'guy.himuro@sqltutorial.org', '515.127.4565', '1998-11-15', 13, 2600.00, 114, 3),
(119, 'Karen', 'Colmenares', 'karen.colmenares@sqltutorial.org', '515.127.4566', '1999-08-10', 13, 2500.00, 114, 3),
(120, 'Matthew', 'Weiss', 'matthew.weiss@sqltutorial.org', '650.123.1234', '1996-07-18', 19, 8000.00, 100, 5),
(121, 'Adam', 'Fripp', 'adam.fripp@sqltutorial.org', '650.123.2234', '1997-04-10', 19, 8200.00, 100, 5),
(122, 'Payam', 'Kaufling', 'payam.kaufling@sqltutorial.org', '650.123.3234', '1995-05-01', 19, 7900.00, 100, 5),
(123, 'Shanta', 'Vollman', 'shanta.vollman@sqltutorial.org', '650.123.4234', '1997-10-10', 19, 6500.00, 100, 5),
(126, 'Irene', 'Mikkilineni', 'irene.mikkilineni@sqltutorial.org', '650.124.1224', '1998-09-28', 18, 2700.00, 120, 5),
(145, 'John', 'Russell', 'john.russell@sqltutorial.org', NULL, '1996-10-01', 15, 14000.00, 100, 8),
(146, 'Karen', 'Partners', 'karen.partners@sqltutorial.org', NULL, '1997-01-05', 15, 13500.00, 100, 8),
(176, 'Jonathon', 'Taylor', 'jonathon.taylor@sqltutorial.org', NULL, '1998-03-24', 16, 8600.00, 100, 8),
(177, 'Jack', 'Livingston', 'jack.livingston@sqltutorial.org', NULL, '1998-04-23', 16, 8400.00, 100, 8),
(178, 'Kimberely', 'Grant', 'kimberely.grant@sqltutorial.org', NULL, '1999-05-24', 16, 7000.00, 100, 8),
(179, 'Charles', 'Johnson', 'charles.johnson@sqltutorial.org', NULL, '2000-01-04', 16, 6200.00, 100, 8),
(192, 'Sarah', 'Bell', 'sarah.bell@sqltutorial.org', '650.501.1876', '1996-02-04', 17, 4000.00, 123, 5),
(193, 'Britney', 'Everett', 'britney.everett@sqltutorial.org', '650.501.2876', '1997-03-03', 17, 3900.00, 123, 5),
(200, 'Jennifer', 'Whalen', 'jennifer.whalen@sqltutorial.org', '515.123.4444', '1987-09-17', 3, 4400.00, 101, 1),
(201, 'Michael', 'Hartstein', 'michael.hartstein@sqltutorial.org', '515.123.5555', '1996-02-17', 10, 13000.00, 100, 2),
(202, 'Pat', 'Fay', 'pat.fay@sqltutorial.org', '603.123.6666', '1997-08-17', 11, 6000.00, 201, 2),
(203, 'Susan', 'Mavris', 'susan.mavris@sqltutorial.org', '515.123.7777', '1994-06-07', 8, 6500.00, 101, 4),
(204, 'Hermann', 'Baer', 'hermann.baer@sqltutorial.org', '515.123.8888', '1994-06-07', 12, 10000.00, 101, 7),
(205, 'Shelley', 'Higgins', 'shelley.higgins@sqltutorial.org', '515.123.8080', '1994-06-07', 2, 12000.00, 101, 11);



INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (1,'Penelope','Gietz','Child',206);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (2,'Nick','Higgins','Child',205);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (3,'Ed','Whalen','Child',200);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (4,'Jennifer','King','Child',100);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (5,'Johnny','Kochhar','Child',101);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (6,'Bette','De Haan','Child',102);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (7,'Grace','Faviet','Child',109);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (9,'Joe','Sciarra','Child',111);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (10,'Christian','Urman','Child',112);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (11,'Zero','Popp','Child',113);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (12,'Karl','Greenberg','Child',108);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (13,'Uma','Mavris','Child',203);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (14,'Vivien','Hunold','Child',103);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (15,'Cuba','Ernst','Child',104);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (16,'Fred','Austin','Child',105);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (17,'Helen','Pataballa','Child',106);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (18,'Dan','Lorentz','Child',107);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (19,'Bob','Hartstein','Child',201);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (20,'Lucille','Fay','Child',202);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (21,'Kirsten','Baer','Child',204);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (22,'Elvis','Khoo','Child',115);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (23,'Sandra','Baida','Child',116);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (24,'Cameron','Tobias','Child',117);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (25,'Kevin','Himuro','Child',118);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (26,'Rip','Colmenares','Child',119);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (27,'Julia','Raphaely','Child',114);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (28,'Woody','Russell','Child',145);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (29,'Alec','Partners','Child',146);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (30,'Sandra','Taylor','Child',176);



-- Task 1

--(1)
--(A)

Select * From employees

--(B)

select employee_id,first_name,last_name,hire_date from employees

--(C)

select first_name, last_name, salary, salary 'new salary' from employees

--(D)

Select *, Salary*2 'new_salary' from employees


--(2)
--(A)

select employee_id, first_name, last_name, hire_date, salary from employees

--(B)

Select * From employees
order by first_name

--(C)

Select * From employees
order by first_name asc, last_name desc

--(D)

Select * From employees
order by salary desc

--(E)

Select * From employees
order by hire_date

--(F)

Select * From employees
order by hire_date desc


--(3)
--(A)

select salary from employees
order by salary desc

--(B)

Select distinct salary from employees

--(C)

Select job_id, salary from employees

--(D)

SELECT DISTINCT job_id, salary 
FROM employees

--(E)

select distinct phone_number from employees

--(4)
--(A)

select * from employees
order by first_name 

--(B)

Select Top 5 *  from employees

--(C)

select * from employees
order by employee_id
OFFSET 3 rows fetch next 5 rows only

--(D)

select Top 5 * from employees
order by salary desc

--(E)

Select * From employees
Where salary = (Select Max(salary) From employees
Where salary < (Select Max(Salary) From employees))

--(5)
--(A)

Select * From employees
Where salary > 14000
Order By salary Desc

--(B)

Select * From employees
Where department_id = 5

--(C)

Select * From employees
Where last_name Like 'chen%'

--(D)

Select * From employees
Where hire_date > '1999-01-01'

--(E)

Select * From employees
Where Year(hire_date) = 1999

--(F)

Select * From employees
Where last_name like '%Himuro%'

--(G)

Select * From employees
Where phone_number is Null

--(H)

Select * From employees
Where department_id <> 8

--(I)

Select * From employees
Where department_id not in(8,10)

--(J)

Select * from employees
Where salary > 10000

--(K)

Select * from employees	
Where department_id = 8
And salary > 10000

--(L)

select * from employees
where salary < 10000

--(M)

select * from employees
where salary >= 9000

--(N)

select * from employees
where salary <= 9000

--(6)
--(A)

Alter table course Add credit_Hours int

--(B)

ALTER TABLE courses 
ADD fee DECIMAL(10,2) AFTER course_name, 
ADD max_limit INT AFTER fee

--(C)

ALTER TABLE courses 
MODIFY fee DECIMAL(10,2) NOT NULL;

--(D)

ALTER TABLE courses DROP COLUMN fee

--(E)

ALTER TABLE courses 
DROP COLUMN max_limit, 
DROP COLUMN credit_hours;


--Task 2

--Part 1 

--(1)

Select * from employees
Where salary Between 5000 And 7000

--(2)

Select * From employees
Where salary In (7000,8000)

--(3)

Select * From employees
Where phone_number is null	

--(4)

select * from employees
Where salary between 9000 And 12000

--(5)

Select * from employees
Where department_id in (8,9)

--(6)

Select * from employees
Where first_name Like 'jo%'

--(7)

Select * from employees
Where first_name Like '_h%'

--(8)

Select * from employees
Where salary > (Select Max(salary) from employees
Where department_id = 8)

-- A. Find all employees whose salaries are greater than the average salary of every department
SELECT * 
FROM employees 
WHERE salary > ALL (SELECT AVG(salary) FROM employees GROUP BY department_id);

-- B. Find all employees who have dependents
SELECT * 
FROM employees 
WHERE employee_id IN (SELECT employee_id FROM dependents);

-- C. Find all employees whose salaries are between 2,500 and 2,900
SELECT * 
FROM employees 
WHERE salary BETWEEN 2500 AND 2900;

-- D. Find all employees whose salaries are NOT in the range of 2,500 and 2,900
SELECT * 
FROM employees 
WHERE salary NOT BETWEEN 2500 AND 2900;

-- E. Find all employees who joined the company between January 1, 1999, and December 31, 2000
SELECT * 
FROM employees 
WHERE hire_date BETWEEN '1999-01-01' AND '2000-12-31';

-- F. Find employees who have NOT joined the company from January 1, 1989, to December 31, 1999
SELECT * 
FROM employees 
WHERE hire_date NOT BETWEEN '1989-01-01' AND '1999-12-31';

-- G. Find employees who joined the company between 1990 and 1993
SELECT * 
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1993-12-31';

-- Part 3: Name-Based Queries

-- A. Find all employees whose first names start with "Da"
SELECT * 
FROM employees 
WHERE first_name LIKE 'Da%';

-- B. Find all employees whose first names end with "er"
SELECT * 
FROM employees 
WHERE first_name LIKE '%er';

-- C. Find employees whose last names contain "an"
SELECT * 
FROM employees 
WHERE last_name LIKE '%an%';

-- D. Retrieve employees whose first names start with "Jo" and are followed by at most 2 characters
SELECT * 
FROM employees 
WHERE first_name LIKE 'Jo_'
   OR first_name LIKE 'Jo__';

-- E. Find employees whose first names start with any number of characters and are followed by at most one character
SELECT * 
FROM employees 
WHERE first_name LIKE '%_';

-- F. Find all employees whose first names start with "S" but NOT "Sh"
SELECT * 
FROM employees 
WHERE first_name LIKE 'S%' 
AND first_name NOT LIKE 'Sh%';


--Part 4
-- A. Retrieve all employees who work in department ID 5
SELECT * 
FROM employees 
WHERE department_id = 5;

-- B. Get employees who work in department ID 5 and have a salary not greater than 5000
SELECT * 
FROM employees 
WHERE department_id = 5 
AND salary <= 5000;

-- C. Get all employees who are not working in departments 1, 2, or 3
SELECT * 
FROM employees 
WHERE department_id NOT IN (1, 2, 3);

-- D. Retrieve all employees whose first names do not start with the letter D
SELECT * 
FROM employees 
WHERE first_name NOT LIKE 'D%';

-- E. Get employees whose salaries are not between 1,000 and 5,000
SELECT * 
FROM employees 
WHERE salary NOT BETWEEN 1000 AND 5000;


--Part 5
-- A. Get employees who do not have any dependents
SELECT * 
FROM employees 
WHERE employee_id NOT IN (SELECT employee_id FROM dependents);

-- B. Find all employees who do not have phone numbers
SELECT * 
FROM employees 
WHERE phone_number IS NULL OR phone_number = '';

-- C. Find all employees who have phone numbers
SELECT * 
FROM employees 
WHERE phone_number IS NOT NULL AND phone_number <> '';


-- 1. Find employees who do not have any dependents
SELECT * FROM employees 
WHERE employee_id NOT IN (SELECT employee_id FROM dependents);

-- 2. Find all employees who do not have phone numbers
SELECT * FROM employees 
WHERE phone_number IS NULL;

-- 3. Find all employees who have phone numbers
SELECT * FROM employees 
WHERE phone_number IS NOT NULL;

-- 4. Get information of department IDs 1, 2, and 3
SELECT * FROM departments 
WHERE department_id IN (1, 2, 3);

-- 5. Get information of employees who work in department IDs 1, 2, and 3
SELECT * FROM employees 
WHERE department_id IN (1, 2, 3);

-- 6. Retrieve first name, last name, job title, and department name of employees in department IDs 1, 2, and 3
SELECT e.first_name, e.last_name, j.job_title, d.department_name 
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IN (1, 2, 3);

-- 7. Get country names of US, UK, and China
SELECT country_name FROM countries 
WHERE country_name IN ('US', 'UK', 'China');

-- 8. Retrieve locations located in the US, UK, and China
SELECT * FROM locations 
WHERE country_id IN (SELECT country_id FROM countries WHERE country_name IN ('US', 'UK', 'China'));

-- 9. Join countries table with locations table
SELECT c.country_name, l.* 
FROM countries c
LEFT JOIN locations l ON c.country_id = l.country_id;

-- 10. Find the country that does not have any locations in the locations table
SELECT country_name FROM countries 
WHERE country_id NOT IN (SELECT DISTINCT country_id FROM locations);

-- 11. Join 3 tables: regions, countries, and locations
SELECT r.region_name, c.country_name, l.city 
FROM regions r
JOIN countries c ON r.region_id = c.region_id
JOIN locations l ON c.country_id = l.country_id;

-- 12. Query employees to see who reports to whom using self-join
SELECT e1.employee_id AS Employee_ID, e1.first_name AS Employee_Name, 
       e2.employee_id AS Manager_ID, e2.first_name AS Manager_Name
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.employee_id;

-- 13. Find employees who do not have a manager
SELECT * FROM employees 
WHERE manager_id IS NULL;

-- 14. Retrieve employees whose salaries are greater than the average salary of every department
SELECT * FROM employees 
WHERE salary > ALL (SELECT AVG(salary) FROM employees GROUP BY department_id);

-- 15. Find all employees who have dependents
SELECT DISTINCT e.* FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id;

-- 16. Find all employees whose salaries are between 2,500 and 2,900
SELECT * FROM employees 
WHERE salary BETWEEN 2500 AND 2900;

-- 17. Find all employees whose salaries are not in the range of 2,500 and 2,900
SELECT * FROM employees 
WHERE salary NOT BETWEEN 2500 AND 2900;

-- 18. Find employees who joined the company between January 1, 1999, and December 31, 2000
SELECT * FROM employees 
WHERE hire_date BETWEEN '1999-01-01' AND '2000-12-31';

-- 19. Find employees who did not join between January 1, 1989, and December 31, 1999
SELECT * FROM employees 
WHERE hire_date NOT BETWEEN '1989-01-01' AND '1999-12-31';

-- 20. Find employees who joined between 1990 and 1993
SELECT * FROM employees 
WHERE YEAR(hire_date) BETWEEN 1990 AND 1993;

-- 21. Retrieve all employees whose first names start with 'Da'
SELECT * FROM employees 
WHERE first_name LIKE 'Da%';

-- 22. Retrieve all employees whose first names end with 'er'
SELECT * FROM employees 
WHERE first_name LIKE '%er';

-- 23. Retrieve employees whose last names contain 'an'
SELECT * FROM employees 
WHERE last_name LIKE '%an%';

-- 24. Retrieve employees whose first names start with 'Jo' and are followed by at most 2 characters
SELECT * FROM employees 
WHERE first_name LIKE 'Jo_'
   OR first_name LIKE 'Jo__';

-- 25. Retrieve employees whose first names start with any number of characters and are followed by at most one character
SELECT * FROM employees 
WHERE first_name LIKE '_%';

-- 26. Retrieve employees whose first names start with 'S' but not 'Sh'
SELECT * FROM employees 
WHERE first_name LIKE 'S%' AND first_name NOT LIKE 'Sh%';














































































































































