insert into cars(
	car_serial_number,
	age,
	make,
	model,
	customer_id
)values(
	4,
	2013,
	'Mercedes Benz',
	'c300',
	2
);

insert into customer(
	customer_id,
	first_name,
	last_name
)values(
	2,
	'Tomas',
	'Rodriguez'
);

select *
from customer;