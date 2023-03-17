-- Creating both PK holders first
create table concession(
	ticket_id SERIAL primary key,
	ticket_price NUMERIC(2,2)
);

create table movie(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100)
);

-- Create remaining tables
create table tickets(
	ticket_id INTEGER,
	movie_id INTEGER,
	foreign key(ticket_id) references concession.ticket_id
	foreign key(movie_id) references movie.movie_id
);

create table customer(
	ticket_id INTEGER,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
	foreign key(ticket_id) references concession.ticket_id
);