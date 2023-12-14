CREATE DATABASE OnlineBookstore;
USE OnlineBookstore;
CREATE TABLE authors(author_id int PRIMARY KEY,author_name varchar(20),country varchar(20));
CREATE TABLE books(book_id int PRIMARY KEY,title varchar(20),author_id int,FOREIGN KEY(book_id) REFERENCES authors(author_id),price float,publication_year int);
CREATE TABLE orders(order_id int PRIMARY KEY,book_id int,FOREIGN KEY(order_id) REFERENCES books(book_id),customer_name varchar(20),order_date date);
INSERT INTO authors values(1,'Mahattma Gandhi','India');
INSERT INTO authors values(2,'Bal Gangadhar Tilak','India');
INSERT INTO authors values(3,'Jawahar Lal Nehru','India');
INSERT INTO authors values(4,'Chetan Bhagat','India');
INSERT INTO authors values(5,'Indira Gandhi','India');
INSERT INTO authors values(6,'Harper Lee','USA');
INSERT INTO authors values(7,'John Steinbeck','USA');

INSERT INTO books values(1,'Young India',1,500,2016);
INSERT INTO books values(2,'My Experiments',1,450,1925);
INSERT INTO books values(3,'Geeta Ram',2,360,1915);
INSERT INTO books values(4,'ORION',2,500,2000);
INSERT INTO books values(5,'The Discovery',3,640,1995);
INSERT INTO books values(6,'Five Points',4,700,2004);
INSERT INTO books values(7,'Half Girlfriend',4,500,2014);

INSERT INTO orders values(1,1,'Geethu','27.10.2023');
INSERT INTO orders values(2,1,'Arthy','2023-10-20');
INSERT INTO orders values(3,2,'Siva','2023-11-22');
INSERT INTO orders values(4,2,'Arunima','2023-11-24');
INSERT INTO orders values(5,3,'Deepika','2023-11-25');
INSERT INTO orders values(6,4,'Keerthi','2023-11-29');
INSERT INTO orders values(7,5,'Nivya','2023-11-22');

select * from authors;
select * from books;
select * from orders;

ALTER TABLE books add genre varchar(20);
ALTER TABLE orders add quantity int;

select b.title,a.author_name,a.country from books b join authors a on b.author_id=a.author_id;
select b.title,o.customer_name from books b join orders o on b.book_id=o.book_id;
