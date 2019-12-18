create database car_consumption;

use car_consumption;

create table client
   (client_id 		int				not null unique,
    client_name 	varchar(255)	not null,
    client_login	varchar(255)	not null,
    client_license 	varchar(255), -- not sure if it is not null
    client_country	varchar(255) 	not null,
    client_birth	varchar(255)	not null,
    client_claims	varchar(255), -- not surre if it not null
    primary key(client_id));

create table manufacturer
	(manufacturer_id 	int				not null unique,
    manufacturer_name	varchar(255)	not null,
    primary key(manufacturer_id));

create table insurance_agent
	(insurance_id	int		not null unique,
    primary key(insurance_id));
    
create table insurance_data
    (insurance_id int,
    client_id int,
    car int,
    primary key (insurance_id, client_id, car),
    foreign key (insurance_id)
        references insurance_agent (insurance_id),
    foreign key (client_id)
        references client (client_id),
	foreign key (car)
		references car_table (car));
        
create table client_car
	(client_id int,
    car int,
    primary key (client_id, car),
    foreign key (client_id)
		references client (client_id),
	foreign key (car)
		references car_table (car));


 
