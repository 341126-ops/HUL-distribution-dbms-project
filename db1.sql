
SHOW VARIABLES LIKE 'secure_file_priv';
SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product.csv'
INTO TABLE mydb.product
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_name, product_type_id, sku_id, packaging_id, shelf_life_months, is_active);
SET FOREIGN_KEY_CHECKS=1;
SELECT COUNT(*) FROM mydb.product;
SELECT * FROM mydb.product LIMIT 10;
SET FOREIGN_KEY_CHECKS=0;
SELECT COUNT(*) FROM mydb.city;
SELECT * FROM mydb.city LIMIT 5;
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
 LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Region.csv'
INTO TABLE mydb.region
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(region_name);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/State.csv'
INTO TABLE mydb.state
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(state_name, region_id);
SET FOREIGN_KEY_CHECKS = 1;
SELECT
  (SELECT COUNT(*) FROM mydb.region) AS regions,
  (SELECT COUNT(*) FROM mydb.state) AS states,
  (SELECT COUNT(*) FROM mydb.city) AS cities;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/City.csv'
INTO TABLE mydb.city
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(city_name, state_id);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product_Type.csv'
INTO TABLE mydb.product_type
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_type_name);
SHOW COLUMNS FROM mydb.product_type
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product_Type.csv'
INTO TABLE mydb.product_type
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_type_name);
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product_Type.csv'
INTO TABLE mydb.product_type
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(type_name,description);
SET FOREIGN_KEY_CHECKS = 1;
select count(*) from mydb.product_type;
select * from mydb.product_type LIMIT 5;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product_SKU.csv'
INTO TABLE mydb.product_sku
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(sku_code,size, unit_of_measure);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product_Packaging.csv'
INTO TABLE mydb.product_packaging
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(packaging_type,material,recyclable_flag);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retailer_Type.csv'
INTO TABLE mydb.retailer_type
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(type_name,credit_limit);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retailer.csv'
INTO TABLE mydb.retailer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(retailer_name, distributor_id, retailer_type_id, city_id);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Sales_Order.csv'
INTO TABLE mydb.sales_order
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(retailer_id, distributor_id, financial_year_id, order_date, order_status, total_amount);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Order_Item.csv'
INTO TABLE mydb.order_item
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, product_id, quantity, selling_price);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Invoice.csv'
INTO TABLE mydb.invoice
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, invoice_date, invoice_amount, invoice_status);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Payment.csv'
INTO TABLE mydb.payment
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(invoice_id, payment_mode_id, payment_date, payment_amount, payment_status);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Payment_Mode.csv'
INTO TABLE mydb.payment_mode
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(mode_name, description);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Financial_Year.csv'
INTO TABLE mydb.financial_year
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(year_label, start_date, end_date);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Distributor.csv'
INTO TABLE mydb.distributor
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(distributor_name, city_id, contact_number, registration_date);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product_Tax.csv'
INTO TABLE mydb.product_tax
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_id, gst_percentage, tax_category);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product_Pricing.csv'
INTO TABLE mydb.product_pricing
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_id, mrp, distributor_price, retailer_price, effective_from);
SET FOREIGN_KEY_CHECKS = 1;
 SET FOREIGN_KEY_CHECKS=0;
SELECT 
  (SELECT COUNT(*) FROM mydb.product) AS products,
  (SELECT COUNT(*) FROM mydb.product_type) AS product_types,
  (SELECT COUNT(*) FROM mydb.city) AS cities,
  (SELECT COUNT(*) FROM mydb.retailer) AS retailers,
  (SELECT COUNT(*) FROM mydb.sales_order) AS orders,
  (SELECT COUNT(*) FROM mydb.order_item) AS order_items;
use mydb;
SELECT s.state_name, r.region_name
FROM mydb.state s
JOIN  region r ON s.region_id = r.region_id;	
SELECT c.city_name
FROM city c
JOIN state s ON c.state_id = s.state_id
WHERE s.state_name = 'Maharashtra';
SELECT p.product_name, pt.type_name, pp.packaging_type
FROM product p
JOIN product_type pt ON p.product_type_id = pt.product_type_id
JOIN product_packaging pp ON p.packaging_id = pp.packaging_id
WHERE p.is_active = 1;
SELECT pr.product_id, pr.mrp, pt.gst_percentage
FROM product_pricing pr
JOIN product_tax pt ON pr.product_id = pt.product_id;
SELECT r.retailer_name, d.distributor_name, c.city_name
FROM retailer r
JOIN distributor d ON r.distributor_id = d.distributor_id
JOIN city c ON r.city_id = c.city_id;
SELECT d.distributor_name, SUM(so.total_amount) AS total_sales
FROM sales_order so
JOIN distributor d ON so.distributor_id = d.distributor_id
GROUP BY d.distributor_name;
 SELECT so.order_id, p.product_name, oi.quantity, oi.selling_price
FROM sales_order so
JOIN order_item oi ON so.order_id = oi.order_id
JOIN product p ON oi.product_id = p.product_id;
SELECT i.order_id, i.invoice_amount, p.payment_status
FROM invoice i
JOIN payment p ON i.invoice_id = p.invoice_id;
SELECT pm.mode_name, SUM(p.payment_amount) AS total_collected
FROM payment p
JOIN payment_mode pm ON p.payment_mode_id = pm.payment_mode_id
GROUP BY pm.mode_name;
SELECT MONTH(order_date) AS month, SUM(total_amount) AS total_sales
FROM sales_order
GROUP BY MONTH(order_date);









