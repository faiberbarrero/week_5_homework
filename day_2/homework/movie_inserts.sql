insert into customer(
	customer_id,
	first_name,
	last_name
)values(
	1,
	'Faiber',
	'Barrero'
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

insert into movies(
	movie_id,
	movie_name
)values(
	1,
	'Demon Slayer'
);

insert into movies(
	movie_id,
	movie_name
)values(
	2,
	'Jujutsu kaisen 0'
);

insert into tickets(
	ticket_id,
	price,
	room_number,
	customer_id,
	movie_id
)values(
	2,
	20,
	'R-2',
	2,
	2
);

insert into bar(
	item_id,
	pop_corn,
	drink
)values(
	1,
	5,
	'Pepsi'
);

insert into bar(
	item_id,
	pop_corn,
	drink
)values(
	2,
	3,
	'Water'
);

insert into receipt(
	receipt_id,
	price,
	item_id,
	customer_id
)values(
	1,
	10,
	1,
	2
);

