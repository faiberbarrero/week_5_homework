create table customer(
	customer_id serial primary key,
	first_name varchar(100),
	last_name varchar(100)
);

create table service(
	service_id serial primary key,
	quantity integer,
	type_of_service varchar(100)
);

create table parts(
	parts_id serial primary key,
	amount integer
);

create table mechanic(
	mechanic_id serial primary key,
	first_name varchar(100),
	last_name varchar(100)
);

create table seller(
	sales_person_id serial primary key,
	contact_number varchar(15),
	address varchar(100),
	first_name varchar(100),
	last_name varchar(100)
);

create table cars(
	car_serial_number serial primary key,
	age varchar(100),
	make varchar(100),
	model varchar(100),
	customer_id integer not null,
	foreign key(customer_id) references customer(customer_id)
);

create table invoice(
	invoice_id serial primary key,
	address varchar(150),
	total_cost integer,
	transaction_date date default current_date,
	billing_info varchar(20),
	customer_id integer not null,
	sales_person_id integer not null,
	car_serial_number integer not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(sales_person_id) references seller(sales_person_id),
	foreign key(car_serial_number) references cars(car_serial_number)
);

create table service_ticket(
	service_ticket_id serial primary key,
	quantity integer,
	service_id integer not null,
	mechanic_id integer not null,
	car_serial_number integer not null,
	parts_id integer not null,
	foreign key(service_id) references service(service_id),
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(car_serial_number) references cars(car_serial_number),
	foreign key(parts_id) references parts(parts_id)
);


