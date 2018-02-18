DROP TABLE IF EXISTS driver;
DROP TABLE IF EXISTS car;

create table driver (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50)
);
insert into driver (first_name, last_name, email) values ('Martyn', 'Vittori', 'mvittori0@hp.com');
insert into driver (first_name, last_name, email) values ('Renato', 'Danford', 'rdanford1@whitehouse.gov');
insert into driver (first_name, last_name, email) values ('Lucky', 'Kerridge', 'lkerridge2@stumbleupon.com');
insert into driver (first_name, last_name, email) values ('Willyt', 'Phifer', 'wphifer3@indiegogo.com');
insert into driver (first_name, last_name, email) values ('Carla', 'Woller', 'cwoller4@economist.com');
insert into driver (first_name, last_name, email) values ('Jacinda', 'Welch', 'jwelch5@wikipedia.org');
insert into driver (first_name, last_name, email) values ('Illa', 'Polotti', 'ipolotti6@paypal.com');
insert into driver (first_name, last_name, email) values ('Molly', 'Gilffillan', 'mgilffillan7@dedecms.com');
insert into driver (first_name, last_name, email) values ('Verna', 'MacShirie', 'vmacshirie8@usgs.gov');
insert into driver (first_name, last_name, email) values ('Celestina', 'Vanyutin', 'cvanyutin9@pcworld.com');
insert into driver (first_name, last_name, email) values ('Darnell', 'Disley', 'ddisleya@netvibes.com');
insert into driver (first_name, last_name, email) values ('Kizzie', 'Antoniat', 'kantoniatb@opensource.org');
insert into driver (first_name, last_name, email) values ('Braden', 'Ferrand', 'bferrandc@paypal.com');
insert into driver (first_name, last_name, email) values ('Bethina', 'Monaghan', 'bmonaghand@newyorker.com');
insert into driver (first_name, last_name, email) values ('Joelly', 'Brunel', 'jbrunele@fotki.com');
insert into driver (first_name, last_name, email) values ('Kendrick', 'Stonebridge', 'kstonebridgef@vinaora.com');
insert into driver (first_name, last_name, email) values ('Wanda', 'Suett', 'wsuettg@livejournal.com');
insert into driver (first_name, last_name, email) values ('Rakel', 'Hedden', 'rheddenh@ed.gov');
insert into driver (first_name, last_name, email) values ('Eddi', 'Vandenhoff', 'evandenhoffi@slate.com');
insert into driver (first_name, last_name, email) values ('Emma', 'Trobe', 'etrobej@weibo.com');


create table car (
	id SERIAL PRIMARY KEY,
	car_make VARCHAR(50),
	car_model VARCHAR(50),
	production_year VARCHAR(50)
);
insert into car (car_make, car_model, production_year) values ('Dodge', 'Ram 3500', 2008);
insert into car (car_make, car_model, production_year) values ('Mitsubishi', 'Raider', 2008);
insert into car (car_make, car_model, production_year) values ('Cadillac', 'DeVille', 1994);
insert into car (car_make, car_model, production_year) values ('Chevrolet', 'Suburban 2500', 2000);
insert into car (car_make, car_model, production_year) values ('Toyota', 'Tundra', 2003);
insert into car (car_make, car_model, production_year) values ('Cadillac', 'XLR-V', 2007);
insert into car (car_make, car_model, production_year) values ('Toyota', '4Runner', 2004);
insert into car (car_make, car_model, production_year) values ('Hyundai', 'Sonata', 2011);
insert into car (car_make, car_model, production_year) values ('Porsche', 'Boxster', 2002);
insert into car (car_make, car_model, production_year) values ('Suzuki', 'Sidekick', 1994);
insert into car (car_make, car_model, production_year) values ('Suzuki', 'Daewoo Magnus', 2006);
insert into car (car_make, car_model, production_year) values ('Jaguar', 'XJ Series', 1992);
insert into car (car_make, car_model, production_year) values ('Chevrolet', 'Cavalier', 2005);
insert into car (car_make, car_model, production_year) values ('Dodge', 'Journey', 2012);
insert into car (car_make, car_model, production_year) values ('Suzuki', 'Aerio', 2005);
insert into car (car_make, car_model, production_year) values ('Audi', 'S8', 2007);
insert into car (car_make, car_model, production_year) values ('Honda', 'CR-V', 2002);
insert into car (car_make, car_model, production_year) values ('Cadillac', 'Escalade EXT', 2012);
insert into car (car_make, car_model, production_year) values ('Mitsubishi', 'Lancer Evolution', 2003);
insert into car (car_make, car_model, production_year) values ('Toyota', 'Tercel', 1993);
