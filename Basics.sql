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































