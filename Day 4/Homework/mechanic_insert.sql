create function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $main$
begin
	insert into customer(customer_id, first_name, last_name)
	values(_customer_id, _first_name, _last_name);
end;
$main$
language plpgsql;


select add_customer(1,'Tom','Fig');
select add_customer(2,'Frank','Burger');


insert into vehicle(
	vehicle_id,
	customer_id,
	make,
	model,
	year_,
	miles
) values (
	1,
	1,
	'Toyota',
	'Highlander',
	2013,
	86541
);

