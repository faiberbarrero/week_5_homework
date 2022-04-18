-- Primary Keys can't be empty or duplicates 
create table if not exists customer(
	customer_id serial primary key,
	first_name varchar(100),
	last_name varchar(100),
	address varchar(150),
	billing_info varchar(20)
);

select *
from customer;

--seller table 
create table if not exists seller(
	seller_id serial primary key,
	contact_number varchar(15),
	business_name varchar(100),
	address varchar(100)
);

--brand table
create table brand(
	brand_id serial primary key,
	brand_name varchar(100),
	seller_id integer not null, --nokt null constrain means it can't be empty
	foreign key(seller_id) references seller(seller_id)
);

--product table
create table product(
	product_id serial primary key,
	cost_of_product numeric(5,2),
	product_name varchar(100),
	brand_id integer not null,
	foreign key(brand_id) references brand(brand_id)
);

-- inventory table
create table inventory(
	inventory_id serial primary key,
	product_count integer,
	product_id integer not null,
	foreign key(product_id) references product(product_id)
);

--transaction table
create table transaction_(
	transaction_id serial primary key,
	customer_id integer not null,
	inventory_id integer not null,
	total_cost numeric(8,2),
	transaction_date date default current_date,
	foreign key(customer_id) references customer(customer_id),
	foreign key(inventory_id) references inventory(inventory_id)
	
);

-- droping a table
-- drop table customer;


