-- Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

use sakila;
create table rentals_may
select * from rental where rental_date like '____-05-%';

select * from rentals_may;

-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

create table rentals_june
select * from rental where rental_date like '____-06-%';
select * from rentals_june;

-- Check the number of rentals for each customer for May.
select customer_id,count(rental_id) as 'number of rentals may' from rentals_may group by customer_id;
-- Check the number of rentals for each customer for June.
select customer_id,count(rental_id) as 'number of rentals june' from rentals_june group by customer_id;