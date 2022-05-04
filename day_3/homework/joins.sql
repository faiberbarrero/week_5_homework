select customer.first_name, district
from customer
full join address
on customer.address_id = address.address_id
where district like 'Texas';
---------------------------------
select customer.first_name, customer.last_name, sum(amount)
from customer
full join payment
on customer.customer_id = payment.customer_id
where amount > 6.99
group by customer.first_name, customer.last_name, amount; 
---------------------------------
select store_id, first_name, last_name
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id
	having sum(amount) > 175
)
group by store_id, first_name, last_name;
----------------------------------
select city.country_id, country
from city
full join country
on city.country_id = country.country_id
where country like 'Nepal';
----------------------------------
select count(staff_id), staff_id
from payment
group by staff_id;
----------------------------------
select count(film_id), rating
from film
group by rating;
----------------------------------
select first_name, last_name
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id
	having count(amount) > 6.99*1
)
group by first_name, last_name;
select payment_id
from payment;
---------------------------


