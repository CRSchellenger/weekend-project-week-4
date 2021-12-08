insert into mechanic(first_name,last_name)
values('johnny','Ralph');
select * from mechanic 

create or replace function add_mechanic(first_name varchar,last_name varchar)
returns void
as $main$
begin
	insert into mechanic(first_name,last_name)
	values(first_name,last_name);
end;
$main$
language plpgsql;

select add_mechanic('tim','Robin');
select * from mechanic;

insert into parts(part_name,price)
values('turbo',20.77);
select * from parts;

create or replace function add_part(part_name varchar ,price numeric)
returns void
as $main$
begin
	insert into parts(part_name,price)
	values(part_name,price);
end;
$main$
language plpgsql;

select add_part('02 sensor',15.99);
select * from parts;

----------------------------------------------------------------------------------------

insert into customer(first_name,last_name)
values('danny','phantom');


create or replace function add_customer(first_name varchar,last_name varchar)
returns void
as $main$
begin
	insert into customer(first_name,last_name)
	values(first_name,last_name);
end;
$main$
language plpgsql;

select add_customer('ryan','timy');
select * from customer;

----------------------------------------------------------------------------------------

insert into car(car_year,car_make,car_model,used,sold)
values('2006','dodge','chager',true,false),('2021','dodge','charger',false,false);


create or replace function add_car(car_year varchar ,car_make varchar ,car_model varchar ,used boolean ,sold boolean)
returns void
as $main$
begin
	insert into car(car_year,car_make,car_model,used,sold)
	values(car_year,car_make,car_model,used,sold);
end;
$main$
language plpgsql;
select add_car('2015','ford','raptor',true,false);
select * from car;

----------------------------------------------------------------------------------------

insert into sales_person(first_name,last_name)
values('John','benson');

create or replace function add_sales_person(first_name varchar, last_name varchar)
returns void
as $main$
begin 
	insert into sales_person(first_name,last_name)
	values(first_name,last_name);
end;
$main$
language plpgsql;

select add_sales_person('Ryan','timmy');
select * from sales_person;

----------------------------------------------------------------------------------------

insert into service_ticket (sd,service_type,total_cost)
values(date '2020,12,5','add a turbo',90.78);

create or replace function add_service_ticket(sd date, service_type varchar, total_cost numeric)
returns void 
as $main$
begin
	insert into service_ticket(sd,service_type,total_cost)
	values(sd,service_type,total_cost);
end;
$main$
language plpgsql;

select add_service_ticket(date '2020,7,9','oil change',50.99);
select * from service_ticket;

----------------------------------------------------------------------------------------

insert into invoice(price,date_1)
values(90.99, date '2021,12,8');

create or replace function add_invoice(price numeric ,date_1 date)
returns void
as $main$
begin 
	insert into invoice(price,date_1)
	values(price,date_1);
end;
$main$
language plpgsql;

select add_invoice(90.99,date '2021,7,8')

select * from invoice;

----------------------------------------------------------------------------------------

insert into service_record(todays_date)
values (date '2021,12,5')

select * from service_record;

create or replace function add_service_record(todays_date date)
returns void
as $main$
begin 
	insert into service_record(todays_date)
	values (todays_date);
end;
$main$
language plpgsql;

select add_service_record(date '2021,12,8')