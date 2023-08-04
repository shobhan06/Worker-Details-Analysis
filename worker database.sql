create database ORG;
show databases;
use org;

show tables;

create table Worker(
worker_id int not null primary key auto_increment,
first_name char(25),
last_name char(25),
salary int(12),
joining_date date,
department char(25)
);
-- alter table worker modify joining_date date;

drop table worker;
insert into worker ( worker_id,first_name,last_name,salary,joining_date,department)
values 	(001, 'loveBabbar','Babbar', 21321, '01-01-15', 'HR'),
		(002, 'Navajit ','Siddu', 1321, '01-01-15', 'Admin'),
        (003, 'Suman','Saha', 21321, '01-01-15', 'HR'),
        (004, 'Nipa','sarkar', 21321, '01-01-22', 'Admin'),
        (005, 'Sujan','Saha', 21321, '01-01-31', 'Admin'),
        (006, 'Ovishek','Mohanto', 21321, '01-01-23', 'Account'),
        (007, 'Nipun','Sarkar', 21321, '01-05-22', 'Account'),
        (008, 'Shobhan','Saha', 21321, '01-02-22', 'Admin');
        
CREATE TABLE Bonus (
woker_ref_id INT references worker(worker_id) on delete cascade,
BONOS_AMOUNT INT(10),
BONUS_DATE DATE
-- FOREIGN KEY
-- REFERENCES
-- ON DELETE CASCADE
);
insert into bonus (woker_ref_id,BONOS_AMOUNT,BONUS_DATE)
values(001, 544, '14-01-20'),
		(002, 24, '14-05-20'),
		(003, 44, '04-05-20'),
        (001, 344, '04-01-20'),
        (002, 444, '04-06-20');


CREATE TABLE Title (
WORKER_REF_ID INT references worker(worker_id) on delete cascade,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATE
-- FOREIGN KEY
-- REFERENCES
-- ON DELETE CASCADE
);
insert into title(WORKER_REF_ID,WORKER_TITLE,AFFECTED_FROM) 
values (001, 'manager', '20-02-23'),
		(002, 'executive', '04-04-23'),
		(008, 'executive', '20-03-23'),
        (005, 'manager', '20-04-23'),
        (004, 'asst. manager', '20-02-23'),
        (007, 'manager', '20-01-23'),
        (006, 'lead', '20-05-23'),
        (003, 'lead', '20-04-23');
        
        select * from worker;
        select * from bonus ;
        select * from title ;
        
	
          
          