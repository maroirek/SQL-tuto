USE Sales;
CREATE TABLE Sales (
purshase_number INT NOT NULL  auto_increment,
test int default 1,
date_of_purshase DATE NOT NULL,
customer_id int ,
item_code VARCHAR(10) not null,
primary key (purshase_number),
foreign key(customer_id ) references costumers(customer_id ) ON DELETE CASCADE
);

alter table sales
alter column test drop default;

CREATE TABLE items (
item_id INT NOT NULL  auto_increment,
item_name VARCHAR(10) not null,
price int,
primary key (item_id)
);

CREATE TABLE Costumers (
customer_id INT NOT NULL primary key,
First_Name VARCHAR(10) not null ,
Last_Name VARCHAR(10) not null ,
email_address VARCHAR(10),
item int,
number_of_complaints int 
);

alter table Costumers
add foreign key(item ) references items(item_id ) ON DELETE CASCADE,
add unique key (email_address),
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO Costumers (customer_id, first_name, last_name, gender, email_address, number_of_complaints)
VALUES (6,'John', 'Mackinley', 'M', 'john.mcki', 0);

alter table costumers
change column number_of_complaints number_of_complaints int default 0 ;

INSERT INTO Costumers (customer_id, first_name, last_name, gender)
VALUES (1,'Johkkn', 'Minley', 'M');


create table company (
company_id VARCHAR (255),  
company_name VARCHAR (55) default "X",  
headquarters_phone_number VARCHAR (255),    
primary key(company_id),
unique key (headquarters_phone_number)
);

alter table costumers
modify First_Name VARCHAR(10) NULL ;




select * from Costumers;
select * from sales.Costumers;    

drop table sales ;
drop table Costumers;
drop table items ;