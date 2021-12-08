create table mechanic(
	mechanic_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
)
create table parts(
	part_id serial primary key,
	part_name varchar(25),
	price numeric(4,2)
)
create table customer(
	customer_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
)
create table car(
	vin_num serial primary key,
	car_year varchar(25),
	car_make varchar(25),
	car_model varchar(25),
	used boolean,
	sold boolean
)
create table sales_person(
	sales_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
)
create table service_ticket(
	st_id serial primary key,
	customer.customer_id not null,
	car vin_num not null,
	mechanic_id not null,
	foreign key customer_id references customer(customer_id),
	foreign key vin_num references car(vin_num),
	foreign key mechanic_id references mechanic(mechanic_id),
	foreign key part_id references parts(part_id),
	sd date,
	service_type varchar(25),
	
)

create table invoice(
	po_id serial primary key,
	foreign key sales_id  references sales_person(sales_id),
	foreign key vin_num references car(vin_num),
	foreign key customer_id references customer(customer_id),
	price numeric(4,2),
	date_1 date

)

create table service_record(
	record_id serial primary key,
	st_id numeric(4,2),
	todays_date date
)
