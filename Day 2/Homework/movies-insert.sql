insert into concession(
	tickit_id,
	ticket_price
) values(1,12.99);

insert into movie(
	movie_id,
	movie_name
) values(12,'Finding Dad');

insert into tickets( 
	ticket_id,
	movie_id,
) values(1,12);

insert into customer(
	ticket_id,
	first_name,
	last_name,
	billing_info
) values(1, 'Namor', 'Sun', '1234-1234-1234-1234 111 1/24')