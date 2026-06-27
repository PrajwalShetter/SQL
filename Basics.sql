create database OmniStore;
use OmniStore;

create table product_nexus(product_id int, product_code varchar(12), product_name varchar(30), product_description text,stock_quality bigint, isAvailable boolean, product_status enum("Active", "inAvctive", "out of stock"), product_tags set("new","featured","sale","trending"), manufactured_year year, created_at datetime);

rename table product_nexus to product_hub;

alter table product_hub add launch_date date, add created_time time, add product_rating float, add unit_price decimal;

alter table product_hub drop launch_date, drop created_time;

desc product_hub;

alter table product_hub rename column product_rating to product_ratings, rename column isAvailable to is_available, rename column manufactured_year to manufacture_year;

alter table product_hub modify column unit_price float, modify column stock_quality int;

INSERT INTO product_hub(product_name) VALUES ('Wireless Mouse');

INSERT INTO product_hub(product_code, product_name, unit_price) VALUES ('PRD001', 'Gaming Keyboard', 2499.99);

INSERT INTO product_hub VALUES (101, 'PRD101', 'Bluetooth Speaker', 'Portable wireless speaker', 150, 1, 'Active', 'new,featured', 2025, '2026-06-19 10:30:00', 4.5, 1999.99);

INSERT INTO product_hub VALUES (102, 'PRD102', 'Smart Watch', 'Fitness Tracking Smartwatch', 75, 1, 'Active', 'featured,trending', 2024, '2026-06-19 11:00:00', 4.7, 5499.99);

INSERT INTO product_hub VALUES (103, 'PRD103', 'USB Hub', '4-Port USB Hub', 300, 1, 'Active', 'new,sale', 2025, '2026-06-19 12:00:00', 4.2, 899.50), (104, 'PRD104', 'Laptop Stand', 'Adjustable Aluminum Stand', 120, 1, 'Active', 'featured', 2024, '2026-06-19 12:30:00', 4.6, 1499.00);

INSERT INTO product_hub VALUES (105, 'PRD105', 'Power Bank', '10000mAh Fast Charging', 200, 1, 'Active', 'trending,sale', 2025, '2026-06-19 13:00:00', 4.4, 1799.00), (106, 'PRD106', 'Web Camera', 'HD Video Webcam', 80, 0, 'inAvctive', 'new', 2023, '2026-06-19 13:15:00', 4.0, 2299.00);

INSERT INTO product_hub(product_name, product_status) VALUES ('Mechanical Keyboard', 'Active'), ('Wireless Earbuds', 'out of stock');

INSERT INTO product_hub(product_code, product_name, stock_quality) VALUES ('PRD107', 'Monitor', 45), ('PRD108', 'Printer', 25);

INSERT INTO product_hub(product_name, product_ratings, unit_price) VALUES ('External SSD', 4.8, 6999.99);

INSERT INTO product_hub(product_code, product_name, product_tags, product_status) VALUES ('PRD109', 'Graphics Tablet', 'new,trending', 'Active');

select * from product_hub;

create table inventory_pulse(inventory_id int, inventory_code varchar(12), warehouse_name varchar(30), inventory_description text,stock_count bigint, isAvailable boolean, inventory_status enum("Active", "inAvctive", "out of stock"), inventory_tags set("new","featured","sale","trending"), manufactured_year year, created_at datetime);

rename table inventory_pulse to inventory_hub;

alter table inventory_hub add launch_date date, add created_time time, add inventory_rating float, add unit_price decimal;

alter table inventory_hub drop launch_date, drop created_time;

desc inventory_hub;

alter table inventory_hub rename column inventory_rating to inventory_ratings, rename column isAvailable to is_available, rename column manufactured_year to manufacture_year;

alter table inventory_hub modify column unit_price float, modify column stock_count int;

INSERT INTO inventory_hub(warehouse_name) VALUES ('Central Warehouse');

INSERT INTO inventory_hub(inventory_code, warehouse_name, unit_price) VALUES ('INV001', 'North Warehouse', 2499.99);

INSERT INTO inventory_hub VALUES (101, 'INV101', 'East Warehouse', 'Electronics Storage Unit', 150, 1, 'Active', 'new,featured', 2025, '2026-06-19 10:30:00', 4.5, 1999.99);

INSERT INTO inventory_hub VALUES (102, 'INV102', 'West Warehouse', 'Furniture Storage Unit', 75, 1, 'Active', 'featured,trending', 2024, '2026-06-19 11:00:00', 4.7, 5499.99);

INSERT INTO inventory_hub VALUES (103, 'INV103', 'South Warehouse', 'Hardware Storage Unit', 300, 1, 'Active', 'new,sale', 2025, '2026-06-19 12:00:00', 4.2, 899.50), (104, 'INV104', 'City Warehouse', 'General Storage Unit', 120, 1, 'Active', 'featured', 2024, '2026-06-19 12:30:00', 4.6, 1499.00);

INSERT INTO inventory_hub VALUES (105, 'INV105', 'Metro Warehouse', 'Bulk Goods Storage', 200, 1, 'Active', 'trending,sale', 2025, '2026-06-19 13:00:00', 4.4, 1799.00), (106, 'INV106', 'Rural Warehouse', 'Agricultural Storage', 80, 0, 'inAvctive', 'new', 2023, '2026-06-19 13:15:00', 4.0, 2299.00);

INSERT INTO inventory_hub(warehouse_name, inventory_status) VALUES ('Export Warehouse', 'Active'), ('Import Warehouse', 'out of stock');

INSERT INTO inventory_hub(inventory_code, warehouse_name, stock_count) VALUES ('INV107', 'Cold Storage', 45), ('INV108', 'Food Warehouse', 25);

INSERT INTO inventory_hub(warehouse_name, inventory_ratings, unit_price) VALUES ('Pharma Warehouse', 4.8, 6999.99);

INSERT INTO inventory_hub(inventory_code, warehouse_name, inventory_tags, inventory_status) VALUES ('INV109', 'Textile Warehouse', 'new,trending', 'Active');

select * from inventory_hub;

create table order_stream(order_id int, order_number varchar(12), customer_id varchar(20), shipping_address text,item_count bigint, payment_confirmed boolean, delivery_status enum("Pending", "Shipped", "Delivered"), order_labels set("Express","Priority","Gift","International"), order_year year, ordered_at datetime);

rename table order_stream to order_center;

alter table order_center add expected_date date, add dispatch_time time, add customer_feedback float, add order_amount decimal;

alter table order_center drop expected_date, drop dispatch_time;

desc order_center;

alter table order_center rename column customer_feedback to feedback_rating, rename column payment_confirmed to is_paid, rename column order_year to purchase_year;

alter table order_center modify column order_amount float, modify column item_count int;

INSERT INTO order_center(customer_id) VALUES ('CUST001');

INSERT INTO order_center(order_number, customer_id, order_amount) VALUES ('ORD001', 'CUST002', 2499.99);

INSERT INTO order_center VALUES (101, 'ORD101', 'CUST101', 'Bangalore, Karnataka', 3, 1, 'Delivered', 'Express,Priority', 2025, '2026-06-19 10:30:00', 4.5, 1999.99);

INSERT INTO order_center VALUES (102, 'ORD102', 'CUST102', 'Mysore, Karnataka', 2, 1, 'Shipped', 'Priority,Gift', 2024, '2026-06-19 11:00:00', 4.7, 5499.99);

INSERT INTO order_center VALUES (103, 'ORD103', 'CUST103', 'Hubli, Karnataka', 5, 0, 'Pending', 'Express,Gift', 2025, '2026-06-19 12:00:00', 4.2, 899.50), (104, 'ORD104', 'CUST104', 'Belagavi, Karnataka', 4, 1, 'Delivered', 'Priority', 2024, '2026-06-19 12:30:00', 4.6, 1499.00);

INSERT INTO order_center VALUES (105, 'ORD105', 'CUST105', 'Dharwad, Karnataka', 6, 1, 'Delivered', 'International,Gift', 2025, '2026-06-19 13:00:00', 4.4, 1799.00), (106, 'ORD106', 'CUST106', 'Vijayapura, Karnataka', 1, 0, 'Pending', 'Express', 2023, '2026-06-19 13:15:00', 4.0, 2299.00);

INSERT INTO order_center(customer_id, delivery_status) VALUES ('CUST107', 'Pending'), ('CUST108', 'Shipped');

INSERT INTO order_center(order_number, customer_id, item_count) VALUES ('ORD107', 'CUST109', 45), ('ORD108', 'CUST110', 25);

INSERT INTO order_center(customer_id, feedback_rating, order_amount) VALUES ('CUST111', 4.8, 6999.99);

INSERT INTO order_center(order_number, customer_id, order_labels, delivery_status) VALUES ('ORD109', 'CUST112', 'Express,Gift', 'Delivered');

select * from order_center;

create table customer_horizon(customer_id int, customer_code varchar(12), customer_name varchar(30), customer_address text,loyalty_points bigint, isPremium boolean, membership_status enum("Active", "Inactive", "Suspended"), customer_preferences set("Email","SMS","WhatsApp","Phone"), joining_year year, registered_at datetime);

rename table customer_horizon to customer_hub;

alter table customer_hub add birth_date date, add contact_time time, add satisfaction_score float, add credit_limit decimal;

alter table customer_hub drop birth_date, drop contact_time;

desc customer_hub;

alter table customer_hub rename column satisfaction_score to customer_rating, rename column isPremium to is_premium, rename column joining_year to membership_year;

alter table customer_hub modify column credit_limit float, modify column loyalty_points int;

INSERT INTO customer_hub(customer_name) VALUES ('Ravi Kumar');

INSERT INTO customer_hub(customer_code, customer_name, credit_limit) VALUES ('CUS001', 'Suraj Patil', 25000.00);

INSERT INTO customer_hub VALUES (101, 'CUS101', 'Gouri Shetty', 'Bangalore, Karnataka', 1500, 1, 'Active', 'Email,WhatsApp', 2025, '2026-06-19 10:30:00', 4.5, 50000.00);

INSERT INTO customer_hub VALUES (102, 'CUS102', 'Lakshmi Rao', 'Mysore, Karnataka', 750, 1, 'Active', 'SMS,Phone', 2024, '2026-06-19 11:00:00', 4.7, 75000.00);

INSERT INTO customer_hub VALUES (103, 'CUS103', 'Koushi Reddy', 'Hubli, Karnataka', 3000, 0, 'Inactive', 'Email,SMS', 2025, '2026-06-19 12:00:00', 4.2, 20000.00), (104, 'CUS104', 'Sushant Jain', 'Belagavi, Karnataka', 1200, 1, 'Active', 'WhatsApp', 2024, '2026-06-19 12:30:00', 4.6, 45000.00);

INSERT INTO customer_hub VALUES (105, 'CUS105', 'Anjali Sharma', 'Dharwad, Karnataka', 2000, 1, 'Active', 'Phone,WhatsApp', 2025, '2026-06-19 13:00:00', 4.4, 60000.00), (106, 'CUS106', 'Vikram Singh', 'Vijayapura, Karnataka', 800, 0, 'Suspended', 'Email', 2023, '2026-06-19 13:15:00', 4.0, 15000.00);

INSERT INTO customer_hub(customer_name, membership_status) VALUES ('Megha Patel', 'Active'), ('Arjun Verma', 'Suspended');

INSERT INTO customer_hub(customer_code, customer_name, loyalty_points) VALUES ('CUS107', 'Pooja Nair', 450), ('CUS108', 'Rahul Das', 250);

INSERT INTO customer_hub(customer_name, customer_rating, credit_limit) VALUES ('Sneha Kulkarni', 4.8, 90000.00);

INSERT INTO customer_hub(customer_code, customer_name, customer_preferences, membership_status) VALUES ('CUS109', 'Manoj Gupta', 'Email,WhatsApp', 'Active');

select * from customer_hub;

create table fulfillment_matrix(shipment_id int, tracking_code varchar(12), courier_partner varchar(30), delivery_notes text,package_count bigint, isDelivered boolean, shipment_status enum("Packed", "In Transit", "Delivered"), shipment_tags set("Express","Fragile","Priority","International"), dispatch_year year, shipped_at datetime);

rename table fulfillment_matrix to logistics_hub;

alter table logistics_hub add expected_delivery date, add pickup_time time, add delivery_rating float, add shipping_cost decimal;

alter table logistics_hub drop expected_delivery, drop pickup_time;

desc logistics_hub;

alter table logistics_hub rename column delivery_rating to service_rating, rename column isDelivered to is_delivered, rename column dispatch_year to shipment_year;

alter table logistics_hub modify column shipping_cost float, modify column package_count int;

INSERT INTO logistics_hub(courier_partner) VALUES ('BlueDart');

INSERT INTO logistics_hub(tracking_code, courier_partner, shipping_cost) VALUES ('TRK001', 'DTDC', 499.99);

INSERT INTO logistics_hub VALUES (101, 'TRK101', 'Delhivery', 'Handle with care', 5, 1, 'Delivered', 'Express,Priority', 2025, '2026-06-19 10:30:00', 4.5, 999.99);

INSERT INTO logistics_hub VALUES (102, 'TRK102', 'Ecom Express', 'Office delivery', 2, 1, 'In Transit', 'Priority,Fragile', 2024, '2026-06-19 11:00:00', 4.7, 1499.99);

INSERT INTO logistics_hub VALUES (103, 'TRK103', 'XpressBees', 'Warehouse shipment', 8, 0, 'Packed', 'Express,Fragile', 2025, '2026-06-19 12:00:00', 4.2, 799.50), (104, 'TRK104', 'India Post', 'Residential delivery', 3, 1, 'Delivered', 'Priority', 2024, '2026-06-19 12:30:00', 4.6, 599.00);

INSERT INTO logistics_hub VALUES (105, 'TRK105', 'BlueDart', 'International package', 6, 1, 'Delivered', 'International,Priority', 2025, '2026-06-19 13:00:00', 4.4, 1799.00), (106, 'TRK106', 'DTDC', 'Return shipment', 1, 0, 'Packed', 'Express', 2023, '2026-06-19 13:15:00', 4.0, 399.00);

INSERT INTO logistics_hub(courier_partner, shipment_status) VALUES ('Shadowfax', 'Packed'), ('Amazon Logistics', 'In Transit');

INSERT INTO logistics_hub(tracking_code, courier_partner, package_count) VALUES ('TRK107', 'FedEx', 45), ('TRK108', 'UPS', 25);

INSERT INTO logistics_hub(courier_partner, service_rating, shipping_cost) VALUES ('DHL', 4.8, 2999.99);

INSERT INTO logistics_hub(tracking_code, courier_partner, shipment_tags, shipment_status) VALUES ('TRK109', 'Aramex', 'Express,International', 'Delivered');

select * from logistics_hub;
select * from logistics_hub;

select * from logistics_hub where shipment_status="Delivered" and shipment_status="In Transit"; # long process
select * from logistics_hub where shipment_status in ("Delivered", "In Transit"); #in key word
select * from logistics_hub where shipment_status not in ("Delivered", "In Transit"); # not insert

select * from logistics_hub where shipment_status is null; # null
select * from logistics_hub where shipment_status is not null; #not null

select * from logistics_hub where package_count between 5 and 10; #between
select * from logistics_hub where package_count not between 5 and 10; #not between

show tables;

select * from customer_hub;

#like
select * from customer_hub where customer_name like "A%";
select * from customer_hub where customer_name like "_A%";
select * from customer_hub where customer_name like "__ur%";
select * from customer_hub where customer_name like "%A";
#like is works on numbers also
select * from customer_hub where customer_code like "cu%";
select * from customer_hub where customer_name like "A%";


#aggrigate functions
select count(*) from customer_hub;
select sum(loyalty_points) from customer_hub;
select avg(loyalty_points) from customer_hub;
select min(loyalty_points) from customer_hub;
select max(loyalty_points) from customer_hub;



#Task on 2nd day
UPDATE product_hub SET unit_price = 799.99 WHERE product_id = 1;

UPDATE inventory_hub SET inventory_status = 'Active', is_available = 1 WHERE inventory_id = 3;

DELETE FROM inventory_hub WHERE inventory_status = 'inAvctive';

UPDATE order_center SET feedback_rating = 4.9, item_count = 5 WHERE order_id = 4;

UPDATE customer_hub SET customer_rating = 4.7, is_premium = 1 WHERE customer_id = 5;

UPDATE logistics_hub SET shipment_status = 'Delivered' WHERE tracking_code = 'TR001';

DELETE FROM customer_hub WHERE membership_status = 'Suspended';


CREATE TABLE employee_hub( employee_id INT PRIMARY KEY, employee_code VARCHAR(10) UNIQUE NOT NULL, employee_name VARCHAR(30) NOT NULL, department VARCHAR(30) NOT NULL, salary FLOAT CHECK(salary>=15000),
email VARCHAR(50) UNIQUE, joining_date DATE NOT NULL, is_active BOOLEAN DEFAULT TRUE );



INSERT INTO employee_hub VALUES
(1,'EMP101','Rahul','HR',25000,'rahul@gmail.com','2023-01-15',1),
(2,'EMP102','Prajwal','IT',45000,'prajwal@gmail.com','2023-02-10',1),
(3,'EMP103','Kiran','Finance',38000,'kiran@gmail.com','2022-11-20',1),
(4,'EMP104','Anjali','Marketing',42000,'anjali@gmail.com','2023-03-08',1),
(5,'EMP105','Rohit','IT',47000,'rohit@gmail.com','2023-05-12',1),
(6,'EMP106','Sneha','HR',27000,'sneha@gmail.com','2022-08-14',0),
(7,'EMP107','Varun','Sales',35000,'varun@gmail.com','2021-12-11',1),
(8,'EMP108','Deepa','Finance',39000,'deepa@gmail.com','2022-07-22',1),
(9,'EMP109','Manoj','Support',30000,'manoj@gmail.com','2023-06-05',1),
(10,'EMP110','Asha','Testing',41000,'asha@gmail.com','2022-09-17',0);

CREATE TABLE supplier_hub( supplier_id INT PRIMARY KEY, supplier_code VARCHAR(10) UNIQUE NOT NULL, supplier_name VARCHAR(40) NOT NULL, city VARCHAR(25) NOT NULL, phone BIGINT UNIQUE,
email VARCHAR(50) UNIQUE, rating FLOAT CHECK(rating BETWEEN 1 AND 5), registered_date DATE );

INSERT INTO supplier_hub VALUES
(1,'SUP101','ABC Traders','Bangalore',9876543210,'abc@gmail.com',4.5,'2021-01-15'),
(2,'SUP102','Prime Suppliers','Mysore',9876543211,'prime@gmail.com',4.2,'2021-03-18'),
(3,'SUP103','Star Agencies','Hubli',9876543212,'star@gmail.com',4.7,'2020-08-10'),
(4,'SUP104','Global Supply','Belgaum',9876543213,'global@gmail.com',3.9,'2022-02-14'),
(5,'SUP105','Quality Mart','Dharwad',9876543214,'quality@gmail.com',4.8,'2023-05-22'),
(6,'SUP106','Royal Distributors','Bijapur',9876543215,'royal@gmail.com',4.1,'2022-07-16'),
(7,'SUP107','Metro Suppliers','Tumkur',9876543216,'metro@gmail.com',4.0,'2021-11-09'),
(8,'SUP108','National Traders','Bellary',9876543217,'national@gmail.com',4.6,'2020-12-30'),
(9,'SUP109','City Wholesale','Shimoga',9876543218,'city@gmail.com',3.8,'2022-10-18'),
(10,'SUP110','Express Supply','Mangalore',9876543219,'express@gmail.com',4.9,'2023-04-11');

CREATE TABLE payment_hub( payment_id INT PRIMARY KEY, payment_code VARCHAR(10) UNIQUE NOT NULL, customer_name VARCHAR(30) NOT NULL, payment_method ENUM('Cash','Card','UPI','Net Banking') NOT NULL, amount FLOAT CHECK(amount>0),
payment_date DATE NOT NULL, payment_status ENUM('Success','Pending','Failed') DEFAULT 'Pending', transaction_id VARCHAR(20) UNIQUE );

INSERT INTO payment_hub VALUES
(1,'PAY101','Rahul','UPI',2500,'2024-01-10','Success','TXN1001'),
(2,'PAY102','Prajwal','Card',4200,'2024-01-12','Success','TXN1002'),
(3,'PAY103','Sneha','Cash',1800,'2024-01-14','Pending','TXN1003'),
(4,'PAY104','Anjali','Net Banking',6500,'2024-01-15','Success','TXN1004'),
(5,'PAY105','Kiran','UPI',3900,'2024-01-18','Failed','TXN1005'),
(6,'PAY106','Rohit','Card',5100,'2024-01-20','Success','TXN1006'),
(7,'PAY107','Deepa','Cash',2300,'2024-01-22','Pending','TXN1007'),
(8,'PAY108','Varun','UPI',7800,'2024-01-25','Success','TXN1008'),
(9,'PAY109','Asha','Net Banking',6100,'2024-01-28','Success','TXN1009'),
(10,'PAY110','Manoj','Card',4700,'2024-01-30','Pending','TXN1010');


CREATE TABLE branch_hub( branch_id INT PRIMARY KEY, branch_code VARCHAR(10) UNIQUE NOT NULL, branch_name VARCHAR(30) NOT NULL, city VARCHAR(30) NOT NULL, manager_name VARCHAR(30) NOT NULL,
employee_count INT CHECK(employee_count>=1), opening_date DATE, is_operational BOOLEAN DEFAULT TRUE );

INSERT INTO branch_hub VALUES
(1,'BR101','Central Branch','Bangalore','Rahul',35,'2018-01-15',1),
(2,'BR102','North Branch','Mysore','Kiran',22,'2019-03-20',1),
(3,'BR103','South Branch','Hubli','Sneha',18,'2020-07-10',1),
(4,'BR104','East Branch','Belgaum','Rohit',26,'2021-05-12',1),
(5,'BR105','West Branch','Tumkur','Deepa',19,'2019-08-18',1),
(6,'BR106','City Branch','Bellary','Varun',28,'2022-01-25',1),
(7,'BR107','Metro Branch','Shimoga','Anjali',16,'2021-10-14',1),
(8,'BR108','Lake Branch','Bijapur','Manoj',14,'2023-02-17',1),
(9,'BR109','Hill Branch','Dharwad','Asha',20,'2018-11-22',1),
(10,'BR110','Tech Branch','Mangalore','Prajwal',30,'2022-06-09',1);


CREATE TABLE category_hub ( category_id INT PRIMARY KEY, category_code VARCHAR(10) UNIQUE NOT NULL, category_name VARCHAR(30) NOT NULL, category_description VARCHAR(100), tax_percentage FLOAT CHECK(tax_percentage>=0),
created_date DATE, status ENUM('Active','Inactive') DEFAULT 'Active', display_order INT UNIQUE );

INSERT INTO category_hub VALUES
(1,'CAT101','Electronics','Electronic gadgets',18,'2023-01-10','Active',1),
(2,'CAT102','Fashion','Clothing and accessories',12,'2023-01-15','Active',2),
(3,'CAT103','Furniture','Home furniture',18,'2023-02-10','Active',3),
(4,'CAT104','Books','Educational books',5,'2023-02-18','Active',4),
(5,'CAT105','Sports','Sports equipment',12,'2023-03-05','Inactive',5),
(6,'CAT106','Groceries','Daily essentials',5,'2023-03-15','Active',6),
(7,'CAT107','Toys','Kids toys',12,'2023-04-08','Active',7),
(8,'CAT108','Beauty','Beauty products',18,'2023-04-22','Active',8),
(9,'CAT109','Automobile','Vehicle accessories',28,'2023-05-11','Inactive',9),
(10,'CAT110','Stationery','Office supplies',5,'2023-06-01','Active',10);



drop table category_hub, branch_hub, employee_hub, supplier_hub,payment_hub;

CREATE TABLE brand_hub ( brand_id INT PRIMARY KEY, brand_code VARCHAR(10) UNIQUE NOT NULL, brand_name VARCHAR(30) NOT NULL, brand_origin VARCHAR(30) NOT NULL, brand_description TEXT,
brand_rating FLOAT CHECK(brand_rating BETWEEN 1 AND 5), created_date DATE NOT NULL, is_active BOOLEAN DEFAULT TRUE );

INSERT INTO brand_hub VALUES
(1,'BR001','Samsung','South Korea','Electronics Brand',4.8,'2022-01-10',1),
(2,'BR002','Apple','USA','Premium Electronics',4.9,'2021-03-15',1),
(3,'BR003','Sony','Japan','Consumer Electronics',4.7,'2020-06-18',1),
(4,'BR004','Dell','USA','Computer Manufacturer',4.5,'2022-07-20',1),
(5,'BR005','HP','USA','Laptop Brand',4.4,'2023-02-11',1),
(6,'BR006','Boat','India','Audio Products',4.2,'2022-08-15',1),
(7,'BR007','LG','South Korea','Home Appliances',4.6,'2021-09-09',1),
(8,'BR008','Lenovo','China','Computers',4.3,'2022-10-14',1),
(9,'BR009','Asus','Taiwan','Gaming Products',4.5,'2021-11-25',1),
(10,'BR010','OnePlus','China','Smartphones',4.4,'2023-01-05',1);

CREATE TABLE category_hub ( category_id INT PRIMARY KEY, brand_id INT NOT NULL, category_code VARCHAR(10) UNIQUE NOT NULL, category_name VARCHAR(30) NOT NULL, category_description TEXT,tax_percentage FLOAT CHECK(tax_percentage>=0),
created_date DATE, status ENUM('Active','Inactive') DEFAULT 'Active', FOREIGN KEY (brand_id) REFERENCES brand_hub(brand_id) );

INSERT INTO category_hub VALUES
(1,1,'CAT001','Mobiles','Smartphones',18,'2023-01-01','Active'),
(2,2,'CAT002','Laptops','All Laptops',18,'2023-01-05','Active'),
(3,3,'CAT003','Headphones','Audio Devices',12,'2023-01-10','Active'),
(4,4,'CAT004','Monitors','LED Displays',18,'2023-01-15','Active'),
(5,5,'CAT005','Printers','Office Printers',18,'2023-01-20','Inactive'),
(6,6,'CAT006','Speakers','Bluetooth Speakers',12,'2023-02-01','Active'),
(7,7,'CAT007','Televisions','Smart TVs',28,'2023-02-10','Active'),
(8,8,'CAT008','Accessories','Computer Accessories',18,'2023-02-15','Active'),
(9,9,'CAT009','Gaming','Gaming Devices',28,'2023-03-01','Active'),
(10,10,'CAT010','Smart Watches','Wearables',18,'2023-03-10','Active');

CREATE TABLE supplier_hub( supplier_id INT PRIMARY KEY, category_id INT NOT NULL,supplier_code VARCHAR(10) UNIQUE NOT NULL, supplier_name VARCHAR(30) NOT NULL, supplier_city VARCHAR(30),
supplier_rating FLOAT CHECK(supplier_rating BETWEEN 1 AND 5), registered_date DATE, is_verified BOOLEAN DEFAULT TRUE,
FOREIGN KEY(category_id) REFERENCES category_hub(category_id) );

INSERT INTO supplier_hub VALUES
(1,1,'SUP001','Tech Supply','Bangalore',4.5,'2022-01-12',1),
(2,2,'SUP002','Global Traders','Mysore',4.4,'2022-02-10',1),
(3,3,'SUP003','Electro Hub','Hubli',4.6,'2022-03-11',1),
(4,4,'SUP004','Vision Tech','Belgaum',4.3,'2022-04-15',1),
(5,5,'SUP005','Prime Supply','Dharwad',4.2,'2022-05-16',1),
(6,6,'SUP006','Audio World','Bellary',4.8,'2022-06-12',1),
(7,7,'SUP007','TV Mart','Tumkur',4.1,'2022-07-19',1),
(8,8,'SUP008','Accessory Point','Shimoga',4.4,'2022-08-20',1),
(9,9,'SUP009','Gaming Zone','Bijapur',4.9,'2022-09-21',1),
(10,10,'SUP010','Watch Store','Mangalore',4.7,'2022-10-25',1);


CREATE TABLE payment_hub ( payment_id INT PRIMARY KEY, supplier_id INT NOT NULL, payment_code VARCHAR(10) UNIQUE NOT NULL, payment_method ENUM('Cash','Card','UPI','Net Banking'),
payment_amount FLOAT CHECK(payment_amount>0), payment_date DATE, payment_status ENUM('Success','Pending','Failed') DEFAULT 'Pending', transaction_no VARCHAR(20) UNIQUE,
FOREIGN KEY(supplier_id) REFERENCES supplier_hub(supplier_id) );

INSERT INTO payment_hub VALUES
(1,1,'PAY001','UPI',25000,'2024-01-10','Success','TXN1001'),
(2,2,'PAY002','Card',32000,'2024-01-12','Success','TXN1002'),
(3,3,'PAY003','Cash',18000,'2024-01-14','Pending','TXN1003'),
(4,4,'PAY004','Net Banking',22000,'2024-01-18','Success','TXN1004'),
(5,5,'PAY005','UPI',27000,'2024-01-20','Failed','TXN1005'),
(6,6,'PAY006','Card',15000,'2024-01-22','Success','TXN1006'),
(7,7,'PAY007','Cash',19500,'2024-01-24','Pending','TXN1007'),
(8,8,'PAY008','UPI',45000,'2024-01-25','Success','TXN1008'),
(9,9,'PAY009','Card',55000,'2024-01-27','Success','TXN1009'),
(10,10,'PAY010','Net Banking',12000,'2024-01-29','Pending','TXN1010');

CREATE TABLE review_hub ( review_id INT PRIMARY KEY, payment_id INT NOT NULL, review_code VARCHAR(10) UNIQUE NOT NULL, customer_name VARCHAR(30) NOT NULL, review_text TEXT,
rating FLOAT CHECK(rating BETWEEN 1 AND 5), review_date DATE, review_status ENUM('Approved','Pending','Rejected') DEFAULT 'Pending',
FOREIGN KEY(payment_id) REFERENCES payment_hub(payment_id) );

INSERT INTO review_hub VALUES
(1,1,'REV001','Rahul','Excellent Product',4.8,'2024-02-01','Approved'),
(2,2,'REV002','Prajwal','Very Good',4.6,'2024-02-02','Approved'),
(3,3,'REV003','Sneha','Average',3.8,'2024-02-03','Pending'),
(4,4,'REV004','Kiran','Worth Buying',4.7,'2024-02-04','Approved'),
(5,5,'REV005','Rohit','Delivery Late',3.5,'2024-02-05','Rejected'),
(6,6,'REV006','Anjali','Nice Quality',4.5,'2024-02-06','Approved'),
(7,7,'REV007','Deepa','Good Packing',4.2,'2024-02-07','Pending'),
(8,8,'REV008','Manoj','Highly Recommended',5.0,'2024-02-08','Approved'),
(9,9,'REV009','Asha','Satisfied',4.4,'2024-02-09','Approved'),
(10,10,'REV010','Varun','Can Improve',3.9,'2024-02-10','Pending');

#ALIAS
SELECT brand_name AS BrandName, brand_origin AS Origin FROM brand_hub;
SELECT category_name AS Category, tax_percentage AS GST FROM category_hub;
SELECT supplier_name AS Supplier, supplier_city AS City FROM supplier_hub;
SELECT payment_method AS PaymentMode, payment_amount AS Amount FROM payment_hub;
SELECT customer_name AS Customer, rating AS Rating FROM review_hub;

#DISTINCT
SELECT DISTINCT brand_origin FROM brand_hub;
SELECT DISTINCT status FROM category_hub;
SELECT DISTINCT supplier_city FROM supplier_hub;
SELECT DISTINCT payment_method FROM payment_hub;
SELECT DISTINCT review_status FROM review_hub;

#AND Operator
SELECT * FROM brand_hub WHERE brand_rating >4 AND is_active=1;

SELECT * FROM category_hub WHERE status='Active' AND tax_percentage=18;

SELECT * FROM supplier_hub WHERE supplier_rating>=4.5 AND is_verified=1;

SELECT * FROM payment_hub WHERE payment_status='Success' AND payment_amount>20000;

SELECT * FROM review_hub WHERE rating>=4.5 AND review_status='Approved';


#OR Operator
SELECT * FROM brand_hub WHERE brand_origin='USA' OR brand_origin='Japan';

SELECT * FROM category_hub WHERE status='Inactive' OR tax_percentage=28;

SELECT * FROM supplier_hub WHERE supplier_city='Bangalore' OR supplier_city='Hubli';

SELECT * FROM payment_hub WHERE payment_method='UPI' OR payment_method='Card';

SELECT * FROM review_hub WHERE review_status='Pending' OR rating<4;

#NOT / NOT IN
SELECT * FROM brand_hub WHERE NOT brand_origin='USA';

SELECT * FROM category_hub WHERE category_name NOT IN ('Mobiles','Laptops');

SELECT * FROM supplier_hub WHERE supplier_city NOT IN ('Bangalore','Mysore');

SELECT * FROM payment_hub WHERE NOT payment_status='Failed';

SELECT * FROM review_hub WHERE review_status NOT IN ('Rejected');


#BETWEEN
SELECT * FROM brand_hub WHERE brand_rating BETWEEN 4.3 AND 4.8;

SELECT * FROM category_hub WHERE tax_percentage BETWEEN 10 AND 20;

SELECT * FROM supplier_hub WHERE supplier_rating BETWEEN 4.2 AND 4.8;

SELECT * FROM payment_hub WHERE payment_amount BETWEEN 15000 AND 30000;

SELECT * FROM review_hub WHERE rating BETWEEN 4.0 AND 5.0;

#IS NULL / IS NOT NULL
SELECT * FROM brand_hub WHERE brand_description IS NOT NULL;

SELECT * FROM category_hub WHERE category_description IS NOT NULL;

SELECT * FROM supplier_hub WHERE registered_date IS NOT NULL;

SELECT * FROM payment_hub WHERE transaction_no IS NOT NULL;

SELECT * FROM payment_hub WHERE transaction_no IS NOT NULL;

SELECT * FROM review_hub WHERE review_text IS NOT NULL;

#LIKE
SELECT * FROM brand_hub WHERE brand_name LIKE 'S%';

SELECT * FROM category_hub WHERE category_name LIKE '%s';

SELECT * FROM supplier_hub WHERE supplier_name LIKE '%Tech%';

SELECT * FROM payment_hub WHERE payment_method LIKE 'C%';

SELECT * FROM review_hub WHERE customer_name LIKE 'P%';

#GROUP BY + HAVING
SELECT status, COUNT(*) AS total_categories FROM category_hub GROUP BY status HAVING COUNT(*) > 0;

SELECT brand_origin, COUNT(*) AS total_brands FROM brand_hub GROUP BY brand_origin HAVING COUNT(*) >= 1;

SELECT supplier_city, COUNT(*) AS total_suppliers FROM supplier_hub GROUP BY supplier_city HAVING COUNT(*) >= 1;

SELECT payment_status, SUM(payment_amount) AS total_amount FROM payment_hub GROUP BY payment_status HAVING SUM(payment_amount) > 20000;

SELECT review_status, AVG(rating) AS average_rating FROM review_hub GROUP BY review_status HAVING AVG(rating) > 4;


#Aggregate Functions
#Count
SELECT COUNT(*) FROM brand_hub;
SELECT COUNT(*) FROM supplier_hub;
SELECT COUNT(*) FROM payment_hub;

#Sum
SELECT SUM(payment_amount) FROM payment_hub;
SELECT SUM(tax_percentage) FROM category_hub;
SELECT SUM(rating) FROM review_hub;

#Avg
SELECT AVG(brand_rating) FROM brand_hub;
SELECT AVG(supplier_rating) FROM supplier_hub;
SELECT AVG(payment_amount) FROM payment_hub;

#Max
SELECT MAX(brand_rating) FROM brand_hub;
SELECT MAX(payment_amount) FROM payment_hub;
SELECT MAX(rating) FROM review_hub;

#Min
SELECT MIN(brand_rating) FROM brand_hub;
SELECT MIN(payment_amount) FROM payment_hub;
SELECT MIN(rating) FROM review_hub;


