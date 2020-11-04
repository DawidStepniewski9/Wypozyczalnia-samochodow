DROP TABLE price;
DROP TABLE customer;
DROP TABLE data;
DROP TABLE repair;
DROP TABLE reservation;
DROP TABLE car;
DROP TABLE type;

 
CREATE TABLE type 
   (	id_type NUMBER, 
	name_type VARCHAR(20) NOT NULL, 
	name_mark VARCHAR(20) NOT NULL,
	name_model VARCHAR(20) NOT NULL,
	CONSTRAINT type_pk PRIMARY KEY (id_type)
	);	
	
CREATE TABLE repair 
   (	id_repair NUMBER,
    id_car NUMBER NOT NULL,
	start_date DATE NOT NULL, 
	end_date DATE NOT NULL, 
	price FLOAT(126) NOT NULL,
	CONSTRAINT repair_pk PRIMARY KEY (id_repair)
	);
	
CREATE TABLE price 
   (	id_price NUMBER, 
	p_day FLOAT(126) NOT NULL, 
	p_week FLOAT(126) NOT NULL, 
	p_month FLOAT(126) NOT NULL, 
	CONSTRAINT price_pk PRIMARY KEY (id_price)
	);
	

CREATE TABLE car
   (	id_car NUMBER, 
	id_type NUMBER NOT NULL,  
	mileage NUMBER NOT NULL, 
	status NUMBER NOT NULL, 
	id_price NUMBER NOT NULL,
	CONSTRAINT car_pk PRIMARY KEY (ID_CAR)
	);

	
CREATE TABLE reservation
   (	id_reservation NUMBER, 
	id_customer NUMBER NOT NULL, 
	id_car NUMBER NOT NULL, 
	id_price NUMBER NOT NULL, 
	start_date DATE NOT NULL, 
	end_date DATE NOT NULL, 
	STATUS NUMBER NOT NULL,
	CONSTRAINT reservation_pk PRIMARY KEY (id_reservation)
	);

	 
 CREATE TABLE customer (
    id_customer NUMBER,
    id_data NUMBER NOT NULL,
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL,
	CONSTRAINT customer_pk PRIMARY KEY (id_customer)
	);


CREATE TABLE data
	(
    id_data NUMBER,
    phone VARCHAR(30) NOT NULL,
	postal_code VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL,
	street_address VARCHAR(30) NOT NULL,
	CONSTRAINT data_pk PRIMARY KEY (id_data)
	);
    
    Alter table Car
    add FOREIGN KEY (id_type) REFERENCES Type (id_type); 
    
    Alter Table Reservation
    Add Foreign Key (id_car) REFERENCES Car (id_car);
    
    Alter Table customer
    Add Foreign Key (id_data) REFERENCES Data (id_data);
    
	Alter Table repair
    Add Foreign Key (id_car) REFERENCES car (id_car);
    
    

INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (1, '22-356-123-098' , '05-100' , 'Nowy Dwór Mazowiecki' , 'Partyzantów 3');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (2, '22-346-109-128' , '05-102' , 'Nowy Dwór Mazowiecki' , 'Thommee Wiktora 1');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (3, '22-566-103-076' , '05-102' , 'Nowy Dwór Mazowiecki' , 'Topolowa 34');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (4, '22-336-103-148' , '05-100' , 'Nowy Dwór Mazowiecki' , 'Towarowa 10');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (5, '22-666-513-198' , '05-100' , 'Nowy Dwór Mazowiecki' , 'Warszawska 1');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (6, '22-350-553-002' , '05-100' , 'Nowy Dwór Mazowiecki' , 'Wiejska 2');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (7, '22-339-933-028' , '05-100' , 'Nowy Dwór Mazowiecki' , 'Wiśniowa 4');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (8, '22-391-043-018' , '05-102' , 'Nowy Dwór Mazowiecki' , 'Współczesna 5');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (9, '22-987-123-198' , '05-100' , 'Nowy Dwór Mazowiecki' , 'Wyszyńskiego Stefana 8');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (10, '22-306-153-548' , '05-100' , 'Nowy Dwór Mazowiecki' , 'Partyzantów 2');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (11, '22-316-473-128' , '05-101' , 'Nowy Dwór Mazowiecki' , 'Zacisze 8');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (12, '22-123-765-988' , '05-102' , 'Nowy Dwór Mazowiecki' , 'Źródlana 10');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (13, '22-456-789-198' , '01-376' , 'Warszawa' , 'Dźwigowa 3');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (14, '22-376-298-109' , '01-475' , 'Warszawa' , 'Radziejowicka 15');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (15, '22-782-942-930' , '01-934' , 'Warszawa' , 'Opalin 34');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (16, '22-602-927-029' , '00-791' , 'Warszawa' , 'Chocimska 45');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (17, '22-103-123-598' , '01-493' , 'Warszawa' , 'Andyjska 28');
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (18, '22-576-917-018' , '01-358' , 'Warszawa' , 'Świetlików 52' );
INSERT INTO data (ID_DATA, PHONE, POSTAL_CODE, CITY, STREET_ADDRESS) VALUES (19, '22-968-173-838' , '05-180' , 'Pomiechówek' , 'Brody-Parcele 41');


INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (1, 1, 'Monika', 'Kalinowska');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (2, 2, 'Kamil', 'Chmielewski');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (3, 3, 'Sebastian', 'Jakubowski');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (4, 4, 'Klara', 'Jastrzębska');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (5, 5, 'Alicja', 'Jankowska');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (6, 6, 'Franciszek', 'Żak');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (7, 7, 'Antoni', 'Duda');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (8, 8, 'Nina', 'Szulc');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (9, 9, 'Lena', 'Olejnik');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (10, 10, 'Łucja', 'Nowak');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (11, 11, 'Marek', 'Chojnacki');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (12, 12, 'Antonina', 'Socha');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (13, 13, 'Barbara', 'Gołębiowska');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (14, 14, 'Igor', 'Stankiewicz');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (15, 15, 'Aleksandra', 'Wawrzyniak');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (16, 16, 'Kajetan', ' Madej');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (17, 17, 'Maciej ', 'Olszewski');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (18, 18, 'Maciej', 'Czerwiński');
INSERT INTO customer (ID_CUSTOMER, ID_DATA, FIRST_NAME, LAST_NAME) VALUES (19, 19, 'Alan', 'Sosnowski');


INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (1, 'suv', 'BMW', 'X3 F25');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (2, 'suv', 'BMW', 'X4 G02');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (3, 'suv', 'Audi', 'Q3');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (4, 'suv', 'Ford', 'Ranger');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (5, 'coupe', 'Ford', 'Mustang');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (6, 'coupe', 'McLaren', '570 GT');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (7, 'coupe', 'Audi', 'A5 F5');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (8, 'coupe', 'Mercedes-Benz', 'CLA');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (9, 'coupe', 'BMW', 'M2');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (10, 'sedan', 'BMW', 'Seria 5 G30/G31');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (11, 'sedan', 'Mercedes-Benz', 'Klasa C W205');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (12, 'sedan', 'Volvo', 'S90');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (13, 'sedan', 'Skoda', 'Superb III');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (14, 'sedan', 'Volkswagen', 'Arteon');
INSERT INTO type (ID_TYPE, NAME_TYPE, NAME_MARK, NAME_MODEL) VALUES (15, 'sedan', 'Mercedes-Benz', 'Klasa S W222');


INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (1,1,50000,1,1);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (2,2,80000,1,2);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (3,3,36000,1,3);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (4,4,20000,1,4);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (5,5,15000,1,5);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (6,6,500,1,6);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (7,7,10000,1,7);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (8,8,34600,1,8);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (9,9,5690,1,9);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (10,10,45000,1,10);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (11,11,4000,1,11);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (12,12,45560,1,12);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (13,13,100,1,13);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (14,14,19000,0,14);
INSERT into car (ID_CAR, ID_TYPE, MILEAGE, STATUS, ID_PRICE) values (15,15,300,0,15);


Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (1, 1, 3, 1, to_date('01/01/2017','DD/MM/YYYY'), to_date('01/02/2017','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (2, 7, 3, 1, to_date('10/03/2017','DD/MM/YYYY'), to_date('24/04/2017','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (3, 5, 3, 1, to_date('01/05/2017','DD/MM/YYYY'), to_date('07/05/2017','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (4, 2, 5, 2, to_date('05/01/2017','DD/MM/YYYY'), to_date('05/05/2017','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (5, 2, 5, 2, to_date('05/06/2017','DD/MM/YYYY'), to_date('05/08/2017','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (6, 3, 15, 3, to_date('10/01/2016','DD/MM/YYYY'), to_date('30/01/2016','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (7, 4, 10, 4, to_date('3/10/2020','DD/MM/YYYY'), to_date('05/10/2020','DD/MM/YYYY'), 0);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (8, 5, 4, 5, to_date('20/03/2020','DD/MM/YYYY'), to_date('25/03/2020','DD/MM/YYYY'), 0);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (9, 6, 1, 6, to_date('15/06/2016','DD/MM/YYYY'), to_date('30/06/2016','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (10, 7, 2, 7, to_date('22/07/2016','DD/MM/YYYY'), to_date('23/07/2016','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (11, 8, 13, 8, to_date('23/04/2018','DD/MM/YYYY'), to_date('01/05/2018','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (12, 9, 11, 9, to_date('10/12/2019','DD/MM/YYYY'), to_date('25/03/2020','DD/MM/YYYY'), 1);
Insert INTO reservation (ID_RESERVATION, ID_CUSTOMER, ID_CAR, ID_PRICE, START_DATE, END_DATE, STATUS) VALUES (13, 10, 14, 9, to_date('01/12/2019','DD/MM/YYYY'), to_date('10/02/2020','DD/MM/YYYY'), 1);


INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (1, 1,to_date('01/01/2017','DD/MM/YYYY'), to_date('05/01/2017','DD/MM/YYYY'), 1000);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (2, 1,to_date('02/03/2017','DD/MM/YYYY'), to_date('05/04/2017','DD/MM/YYYY'), 2500);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (3, 2,to_date('01/01/2017','DD/MM/YYYY'), to_date('02/01/2017','DD/MM/YYYY'), 100);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (4, 2,to_date('14/03/2016','DD/MM/YYYY'), to_date('20/03/2016','DD/MM/YYYY'), 170);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (5, 4,to_date('13/06/2016','DD/MM/YYYY'), to_date('15/06/2016','DD/MM/YYYY'), 300);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (6, 4,to_date('25/11/2019','DD/MM/YYYY'), to_date('30/11/2019','DD/MM/YYYY'), 500);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (7, 7,to_date('01/01/2019','DD/MM/YYYY'), to_date('05/01/2019','DD/MM/YYYY'), 3000);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (8, 8,to_date('01/02/2019','DD/MM/YYYY'), to_date('05/02/2019','DD/MM/YYYY'), 150);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (9, 9,to_date('24/08/2017','DD/MM/YYYY'), to_date('30/08/2017','DD/MM/YYYY'), 50);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (10, 10, to_date('12/10/2019','DD/MM/YYYY'), to_date('15/10/2019','DD/MM/YYYY'), 2200);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (11, 10, to_date('01/12/2016','DD/MM/YYYY'), to_date('20/12/2016','DD/MM/YYYY'), 30);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (12, 12, to_date('9/11/2017','DD/MM/YYYY'), to_date('15/11/2017','DD/MM/YYYY'), 4000);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (13, 13, to_date('17/05/2017','DD/MM/YYYY'), to_date('20/05/2017','DD/MM/YYYY'), 3800);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (14, 14, to_date('01/01/2018','DD/MM/YYYY'), to_date('05/01/2018','DD/MM/YYYY'), 730);
INSERT INTO repair (ID_REPAIR, ID_CAR, START_DATE, END_DATE, PRICE) VALUES (15, 15, to_date('03/04/2017','DD/MM/YYYY'), to_date('05/04/2017','DD/MM/YYYY'), 120);





INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (1, 300, 2000, 7000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (2, 400, 2500, 9000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (3, 150, 1000, 6000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (4, 100, 600, 4000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (5, 300, 2000, 7000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (6, 190, 1200, 4500);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (7, 330, 2100, 8000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (8, 500, 3100, 12000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (9, 450, 3000, 11000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (10, 200, 1100, 4100);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (11, 370, 2300, 8200);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (12, 450, 3000, 11000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (13, 330, 2100, 8000);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (14, 190, 1200, 4500);
INSERT INTO price (ID_PRICE, P_DAY, P_WEEK, P_MONTH) VALUES (15, 600, 4000, 15000);





create or replace view koszt_wypozyczenia as
  select RESERVATION.*, 
		to_number(RESERVATION.END_DATE-RESERVATION.START_DATE) as ilosc_dni,
         case 
         When to_number(RESERVATION.END_DATE-RESERVATION.START_DATE) < 7 
		  then price.p_day * to_number(RESERVATION.END_DATE-RESERVATION.START_DATE) 
         When to_number(RESERVATION.END_DATE-RESERVATION.START_DATE) <= 30 
		   then price.p_week * to_number(RESERVATION.END_DATE-RESERVATION.START_DATE) 
         When to_number(RESERVATION.END_DATE-RESERVATION.START_DATE) > 30 
		   then price.p_month * to_number(RESERVATION.END_DATE-RESERVATION.START_DATE) 
         end as cena
         from RESERVATION 
           inner join car 
		     on RESERVATION.id_car = car.id_car
           inner join price 
		     on car.id_price = price.id_price;
         
         Select *From koszt_wypozyczenia;
         
         
create or replace view raport_samochodów as 
    Select car.id_car, 
      case 
        when car.status = '0' then 'zarezerwowany'
        when car.status = '1' then 'wyporzyczony'
        end as status,
      type.name_type, 
      type.name_mark, 
      type.name_model,
      car.MILEAGE || ' km' as MILEAGE
    From car
    Inner Join type on car.id_type = type.id_type;
    
    Select *from raport_samochodów;
    
create or replace view wypozyczenia as
select id_reservation, customer.first_name, customer.last_name, TO_CHAR(start_date, 'dd/mm/yyyy') AS start_date, TO_CHAR(end_date, 'dd/mm/yyyy') AS end_date, type.name_type, type.name_mark, type.name_model
From reservation
Inner Join car on reservation.id_car = car.id_car
Inner Join type on car.id_type = type.id_type
Inner Join customer on reservation.id_customer = customer.id_customer
Where reservation.status = '1';

Select *from wypozyczenia;

create or replace view rezerwacje as
select id_reservation, customer.first_name, customer.last_name, TO_CHAR(start_date, 'dd/mm/yyyy') AS start_date, TO_CHAR(end_date, 'dd/mm/yyyy') AS end_date, type.name_type, type.name_mark, type.name_model
From reservation
Inner Join car on reservation.id_car = car.id_car
Inner Join type on car.id_type = type.id_type
Inner Join customer on reservation.id_customer = customer.id_customer
Where reservation.status = '0';

Select *from rezerwacje;

create or replace view naprawa as
select id_repair, name_type, name_mark, name_model, TO_CHAR(start_date, 'dd/mm/yyyy') AS start_date, TO_CHAR(start_date, 'dd/mm/yyyy') as end_date, price
From repair
inner join car on repair.id_car = car.id_car
inner join type on car.id_type = type.id_type;

Select *from naprawa;

