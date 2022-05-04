create table customer(
	customer_id serial primary key,
	first_name varchar(150),
	last_name varchar(150)
);

create table movies(
	movie_id serial primary key,
	movie_name varchar(150)
);

create table tickets(
	ticket_id serial primary key,
	price integer,
	room_number varchar(20),
	customer_id integer not null,
	movie_id integer not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(movie_id) references tickets(ticket_id)
);

create table bar(
	item_id serial primary key,
	pop_corn integer,
	drink varchar(20)
);

create table receipt(
	receipt_id serial primary key,
	price integer,
	item_id integer not null,
	customer_id integer not null,
	foreign key(item_id) references bar(item_id),
	foreign key(customer_id) references customer(customer_id)
);

