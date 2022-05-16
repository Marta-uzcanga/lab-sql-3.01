use sakila;

-- 1. drop column picture from staff
ALTER TABLE staff
DROP COLUMN picture;

select * from sakila.staff;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from sakila.customer 
where first_name = 'Tammy' and last_name = 'sanders';

select * from sakila.staff; 


INSERT INTO sakila.staff(first_name, last_name, address_id, email, store_id, active, username, password, last_update) 
VALUES ('Tammy', 'Sanders', 79, 'tammy.sander@sakilastaff.com', 2, 1, 'Tammy', ' ', '2006-02-15 04:57:20');
select * from sakila.staff; 



-- 3 Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there. 
-- You can query those pieces of information. For eg., you would notice that you need customer_id information as well.
--  To get that you can use the following query:

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select film_id from sakila.film
where title = 'Academy Dinosaur';

select * from sakila.inventory
where film_id = 1;


select * from sakila.rental;

INSERT INTO rental(rental_date, inventory_id, customer_id, return_date, staff_id, last_update) 
VALUES ('2022-05-16 12:26:30', 3, 130, '2022-05-20 12:26:30 ', 1, '2022-05-16 12:26:30');
select * from sakila.rental
where customer_id = 130 and inventory_id = 3; 