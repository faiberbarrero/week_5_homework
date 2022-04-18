--insert into tables
insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)values(
	1,
	'Tomas',
	'Rodriguez',
	'123 Main St, Chicago IL, 60606',
	'4242-4242-4242-4242'
);

insert into customer(
	first_name,
	last_name,
	address,
	billing_info
)values(
	'Faiber',
	'Barrero',
	'123 Main St, Chicago IL, 60606',
	'4242-4242-4242-4242'
);

select *
from customer;

insert into seller values(
	1,
	'(707)101-lUNA',
	'rangers',
	'125 Main st Chicago IL, 60606'
);
select *
from seller;

--brand inserts
insert into brand(
	brand_name,
	seller_id
)values(
	'Coding Temple',
	1
);

select *
from brand;

--product inserts
insert into product values(
	1,
	20.00,
	'Python 101',
	1
);

select *
from product;

--inventory inserts
insert into inventory(
	product_count,
	product_id
)values(
	10,
	1
);

select *
from inventory;

--transaction inserts
insert into transaction_ values(
	1,
	2,
	1,
	40.00,
	current_date
);

select *
from transaction_;