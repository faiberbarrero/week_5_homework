select last_name
from actor
where last_name like 'Wahlberg';
-- there is 2 actors with that last name

select amount
from payment
where amount between 3.99 and 5.99
order by amount desc;
--  there are 5607 payments made between the amount given

select film_id, count(film_id)
from inventory
group by film_id
having count(film_id) > 7;
-- there are exactly 72 films tied at 8

select last_name
from customer
where last_name like 'William';
--  there are "0" customers with that last name

select count(staff_id), staff_id
from rental
group by staff_id;
-- employee "1" sold "8040" while employee "2" sold "8004"


select count(district), district
from address
group by district;
-- There are "378" different district names

select count(film_id), film_id
from film_actor
group by film_id
order by count(film_id) desc;
--  film_id "508" has the most actors with "15" total

select last_name, store_id
from customer
where store_id = '1' and last_name like '%es'
group by last_name, store_id
order by store_id asc;
-- counted "13" last names ending in "es" in store_id "1"

select amount, count(customer_id)
from payment
where customer_id between 380 and 430
group by amount
having count(customer_id) > 250;
-- there are '3' rentals that are above 250

select rating, count(rating)
from film
group by rating;
--  that are "5" categories in total
-- PG-13 has the most amount of films

