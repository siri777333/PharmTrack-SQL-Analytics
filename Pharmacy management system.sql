create database MediTrack

use MediTrack

create table medicines ( 
medicine_id int identity(1,1) primary key,
medicine_name varchar(100) not null,
category varchar(50),
price decimal(8,2) ,
stock_qty int default 0,
expiry_date date 
);
Insert into medicines ( medicine_name, category, price , stock_qty, expiry_date)
Values ('Paracetamol 500mg', 'Painkiller', 12.50, 200, '2026-08-30');
Insert into medicines ( medicine_name, category, price , stock_qty, expiry_date)
Values ('Amoxicillin 250mg', 'Antibiotiv', 45, 150, '2025-12-31');
Insert into medicines ( medicine_name, category, price , stock_qty, expiry_date)
Values ('Cough Syrup Benadryl', 'Cough & cold', 85.00, 80, '2025-10-15');
INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date)
VALUES ('Pantoprazole 40mg', 'Antacid', 55.00, 120, '2026-03-20');
INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date)
VALUES ('Ibuprofen 400mg', 'Painkiller', 28.00, 175, '2026-06-10');
INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date)
VALUES ('Vitamin C 500mg', 'Vitamin', 30.00, 300, '2026-09-01');
INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date)
VALUES ('Azithromycin 500mg', 'Antibiotic', 65.00, 90, '2025-11-28');
INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date)
VALUES ('Metformin 500mg', 'Diabetes', 22.00, 250, '2026-05-15');
INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date)
VALUES ('Cetirizine 10mg', 'Antihistamine', 18.00, 160, '2026-07-20');
INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date)
VALUES ('Amlodipine 5mg', 'Cardiac', 35.00, 110, '2026-04-30');
select * from medicines

create table customers ( 
customer_id int identity(1,1) Primary key,
customer_name varchar(100) not null,
phone varchar(15),
city varchar(50),
age int
);

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Ramesh Kumar', '9876543210', 'Mumbai', 45);

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Priya Sharma', '9876543211', 'Delhi', 32);

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Anand Nair', '9876543212', 'Bengaluru', 58);

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Sunita Patel', '9876543213', 'Ahmedabad', 27);

create table suppliers (
supplier_id int identity(1,1) Primary key,
supplier_name varchar(100) not null, 
location varchar(80),
contact_phone varchar(15),
email varchar(100)
);








INSERT INTO suppliers (supplier_name, location, contact_phone, email)
VALUES ('Sun Pharma', 'Mumbai, Maharashtra', '0222345678', 'orders@sunpharma.com');

INSERT INTO suppliers (supplier_name, location, contact_phone, email)
VALUES ('Cipla Limited', 'Mumbai, Maharashtra', '0222456789', 'supply@cipla.com');

INSERT INTO suppliers (supplier_name, location, contact_phone, email)
VALUES ('Dr. Reddys Labs', 'Hyderabad, Telangana', '0402567890', 'orders@drreddys.com');

INSERT INTO suppliers (supplier_name, location, contact_phone, email)
VALUES ('Alkem Laboratories', 'Mumbai, Maharashtra', '0222678901', 'info@alkem.com');

INSERT INTO suppliers (supplier_name, location, contact_phone, email)
VALUES ('Zydus Cadila', 'Ahmedabad, Gujarat', '0792789012', 'supply@zydus.com')

create table sales (
sale_id int identity(1,1) Primary key,
sales_date date default getdate(),
customer_id int references customers(customer_id),
medicine_id int references medicines(medicine_id),
quantity int not null,
price_per_unit decimal(8,2) not null,
total_amount decimal(10,2) --- total amount = quantity * Price per unit
);

INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-01-05', 1, 1, 3, 12.50, 37.50);

-- Sale 2: Priya Sharma (customer 2) bought Vitamin C (medicine 6)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-01-07', 2, 6, 2, 30.00, 60.00);

-- Sale 3: Anand Nair (customer 3) bought Amlodipine - blood pressure (medicine 10)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-01-10', 3, 10, 5, 35.00, 175.00);

-- Sale 4: Sunita Patel (customer 4) bought Cough Syrup (medicine 3)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-01-12', 4, 3, 1, 85.00, 85.00);

-- Sale 5: Vijay Mehta (customer 5) bought Metformin - diabetes (medicine 8)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-01-15', 5, 8, 4, 22.00, 88.00);

-- Sale 6: Meena Iyer (customer 6) bought Amoxicillin antibiotic (medicine 2)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-02-03', 6, 2, 2, 45.00, 90.00);

-- Sale 7: Ramesh Kumar (customer 1) came back — bought Pantoprazole (medicine 4)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-02-10', 1, 4, 2, 55.00, 110.00);

-- Sale 8: Raju Verma (customer 7) bought Ibuprofen (medicine 5)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-02-18', 7, 5, 3, 28.00, 84.00);

-- Sale 9: Kavitha Rao (customer 8) bought Cetirizine (medicine 9)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-02-25', 8, 9, 2, 18.00, 36.00);

-- Sale 10: Priya Sharma (customer 2) bought Azithromycin antibiotic (medicine 7)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-03-02', 2, 7, 1, 65.00, 65.00);

-- Sale 11: Anand Nair (customer 3) bought Paracetamol (medicine 1) again
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-03-08', 3, 1, 2, 12.50, 25.00);

-- Sale 12: Vijay Mehta (customer 5) bought Vitamin C (medicine 6)
INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount)
VALUES ('2024-03-15', 5, 6, 3, 30.00, 90.00)

- --Query starts here ---
-- 1) get all the medicines 
select * from medicines;

--2) Select only speciific Columns
select medicine_name, price, stock_qty
from medicines;
--3) Filter By category 
-- we only want medicines that are in 'Antibiotic' category 
select medicine_name , price , stock_qty
from medicines
where category = 'Antibiotic';
--4) Find cheap medicines (price less than 30)
select medicine_name, category, price
from medicines 
where price < 30;

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Vijay Mehta', '9876543214', 'Pune', 40);

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Meena Iyer', '9876543215', 'Chennai', 35);

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Raju Verma', '9876543216', 'Kolkata', 29);

INSERT INTO customers (customer_name, phone, city, age)
VALUES ('Kavitha Rao', '9876543217', 'Hyderabad', 31);

select* from customers
---Join Queries (Combining two tables)
-- we just want to see the customer names, not numbers 
-- Solution - Join the sales table with the customer table

-- sales.customer_id = customers.customer_id

select 
s.sale_id,
s.sales_date,
c.customer_name,
s.quantity,
s.total_amount
from sales s
join customers c
on s.customer_id = c.customer_id;

-- Sales with medicine names 
--We replace medicine_id numbers with actual medicine names
-- We join sales table with the medicines table 

select 
s.sale_id,
s.sales_date,
m.medicine_name, 
m.category,
s.quantity,
s.price_per_unit,
s.total_amount
from sales s 
join medicines m
on s.medicine_id = m.medicine_id;

--- We join all the three tables - sales + customers + medicines

select 
s.sale_id,
s.sales_date,
c.customer_name,
c.city,
m.medicine_name,
m.category,
s.quantity,
s.total_amount
from sales s 
join customers c on s.customer_id = c.customer_id
join medicines m on s.medicine_id = m.medicine_id
order by s.sales_date asc;

-- Join with where -- Find all purchases by one customer
select 
s.sales_date,
m.medicine_name,
s.quantity,
s.total_amount,
c.customer_name
from sales s
join customers c on s.customer_id = c.customer_id
join medicines m on s.medicine_id = m.medicine_id
where c.customer_name = 'Ramesh Kumar';

 Group by Quries---
---- How many medicines in each category---

select 
category,
count(*) as total_medicines
from medicines
group by category 
order by total_medicines desc;

--SUM - TOTAL REVENUE PER MEDICINE---

select 
m.medicine_name,
sum(s.total_amount) as total_revenue
from sales s
join medicines m on s.medicine_id = m.medicine_id
group by m.medicine_name
order by total_revenue desc;

---- Sum - Total spending per customer ----
select 
c.customer_name,
count(s.sale_id) as total_visits,
sum(s.total_amount) as total_spent
from sales s
join customers c on s.customer_id = c.customer_id
group by c.customer_name
order by total_spent desc;

Average sales value per category---
select 
m.category,
count(s.sale_id)   as number_of_sales,
avg(s.total_amount) as avg_sale_value
from sales s
join medicines m on s.medicine_id = m.medicine_id
group by m.category
order by avg_sale_value desc;

--- Max and Min --- most and least expensive medicines--
--- what is the most expensive and cheapest medicine in each category---

select 
category, 
count(*) as medicine_count,
max(price) as highest_price,
min(price) as lowest_price
from medicines
group by category 
order by highest_price desc;

--- Total Sales per Month---
-- which month had the most sales?---

select 
month(sales_date) as sale_month,
count(sale_id) as total_orders,
sum(total_amount) as monthly_revenue
from sales 
group by month(sales_date)
order by sale_month ;

--- business Query 1 : Stock Status Report---
--- Every morning the pharmacy manager checks the stock 

Select 
medicine_name,
category,
stock_qty,
expiry_date,
--- Case when acts a label 
Case 
when stock_qty < 100 then 'Reorder Now'
when stock_qty < 150 then 'Running Low'
else 'Stock OK'
end as stock_status
from medicines 
order by stock_qty asc;

--- Business Query 2 --- Daily sales report 
--- At end of each day , the pharmay prints this report 
--- IT shows every sal: Customer , medicine , quantity, amount
--- This is like your " today's transactions" report 
select 
s.sales_date,
c.customer_name,
m.medicine_name,
m.category,
s.quantity,
s.price_per_unit,
s.total_amount
from sales s 
join customers c on s.customer_id = c.customer_id
join medicines m on s.medicine_id = m.medicine_id
order by s.sales_date asc ;

--- Business query 3 : Best selling medicines
select 
m.medicine_name,
m.category,
m.price,
sum(s.quantity) as total_qty_sold,
sum(s.total_amount) as total_revenue
from sales s 
join medicines m on s.medicine_id = m.medicine_id 
group by m.medicine_name , m.category , m.price 
order by total_qty_sold desc ;

--- Business Query 4--- Customer purchase history 
select 
c.customer_name, 
c.city, 
c.age,
count(s.sale_id) as number_of_purchases,   --- How many times they bought---
sum(s.total_amount) as total_amount_spent
from customers c 
join sales s on c.customer_id = s.customer_id
group by c.customer_name , c.city , c.age
order by total_amount_spent desc;

--- Business query 5 : Supplier catalogue---
select 
supplier_name, 
location ,
contact_phone , 
email 
from suppliers
order by supplier_name asc;

--- Final check---

SELECT 'medicines'  AS table_name, COUNT(*) AS total_rows FROM medicines
UNION ALL
SELECT 'customers'  AS table_name, COUNT(*) AS total_rows FROM customers
UNION ALL
SELECT 'suppliers'  AS table_name, COUNT(*) AS total_rows FROM suppliers
UNION ALL
SELECT 'sales'      AS table_name, COUNT(*) AS total_rows FROM sales;