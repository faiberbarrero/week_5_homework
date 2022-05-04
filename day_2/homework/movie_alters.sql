alter table customer
add phone_number numeric(10);

update customer
set phone_number = (0123456789)
where customer_id = 2;
