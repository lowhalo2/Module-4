create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table vehicle(
	vehicle_id SERIAL primary key,
	customer_id INTEGER,
	make VARCHAR(100),
	model VARCHAR(100),
	year_ INTEGER,
	miles INTEGER,
	foreign key(customer_id) references customer(customer_id)
);

create table service_request(
	request_id SERIAL primary key,
	vehicle_id INTEGER,
	customer_id INTEGER,
	request_date DATE default CURRENT_DATE,
	foreign key(vehicle_id) references vehicle(vehicle_id),
	foreign key(customer_id) references customer(customer_id)
);

create table mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table services(
	service_id SERIAL primary key,
	request_id INTEGER,
	service VARCHAR(100),
	foreign key(request_id) references service_request(request_id)
);

create table repairs(
	mechanic_id INTEGER,
	service_id INTEGER,
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(service_id) references services(service_id)
);

create table payment(
	customer_id INTEGER,
	mechanic_id INTEGER,
	service_id INTEGER,
	time_stamp_ DATE default current_date,
	amount NUMERIC(5,2),
	foreign key(customer_id) references customer(customer_id),
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(service_id) references services(service_id)
);
