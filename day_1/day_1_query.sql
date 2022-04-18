--Hello World Query, SELECT all records from actor table
SELECT *
FROM actor;

-- Query for first_name and last_name data in the actor table
SELECT first_name, last_name
FROM actor;

--Query for first_name that equal Nick using WHERE clause
select first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a fisrt_name that equals nick using LIKE and WHERE clauses
select first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with "J" using the LIKE and WHERE clauses
-- and the % (wildcard)
select first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all first_name data that start with k and has 2 letters after
-- using LIKE and WHERE	and underscores __
select first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all the first_name data that starts with K and ends wuth th
-- using LIKE, WHERE, wildcard % and underscore _
select first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'K__%th';


-- Comparing operator are:
-- Grater than (>) -- less than(<)
-- Grater or equal (=>) -- less or equal(=<)
-- not equal (<>)

-- Explore Data in the payment table with a SELECT ALL
SELECT *
FROM payment;

 -- Query for data showing who paid 
 -- an amount greater than or equal to $7.99
 SELECT customer_id, amount, payment_id
 FROM payment 
 WHERE amount >= 7.99;
 
 -- Query for data showing who paid
 -- an amount greater than or equal to 2.00
 -- in ascending order
 
 SELECT customer_id, amount
 FROM payment 
 WHERE amount >= 2.00
 ORDER BY amount;
 
 -- Query for data showing amounts paid 
 -- between $2.00 AND 7.99
 SELECT customer_id, amount
 FROM payment 
 WHERE amount BETWEEN 2.00 AND 7.99;
 
 --Query for data showing cutomers who paid 
 -- an amount not equal <> to 0.00
 -- Order by descending order
 SELECT customer_id, amount
 FROM payment 
 WHERE amount <> 0.00
 ORDER BY amount DESC;
 
 ---------------------------------
select first_name
from actor
where first_name like 'Tom';

-- Query to display te Distinct count of amounts greater  than 5.99
select count(distinct amount)
from payment
where amount > 5.99;

-- Query to display the MAX() greater than 7.99
 select min(amount)
 from payment
 where amount > 7.99;
 
 select amount 
 from payment
 where amount = 7.99;
 
 -- Query to display different amounts grouped together
 -- along with theiir count
 select amount, count(amount) as amount_num
 from payment
 group by amount
 order by amount_num;
 
 -- query to display customer ids grouped together with their summed amounts
 select customer_id, sum(amount) as total
 from payment
 group by customer_id
 order by total;
 
 -- query to display customer ids and their custmer id & amount
 select customer_id, amount
 from payment
 group by amount, customer_id
 order by customer_id;
 
 -- query to display info from the  customer table 
 select *
 from customer;
 
 -- query to display the customer_id that shows up more than 5 times 
 -- group them by the customer email
 select count(customer_id), email
 from customer
 where email like 'j__%.org'
 group by email
 having count(customer_id) > 0;

 