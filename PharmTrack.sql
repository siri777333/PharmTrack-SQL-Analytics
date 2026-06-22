CREATE DATABASE PharmTrack;
GO
USE PharmTrack;
GO

CREATE TABLE medicines (
    medicine_id   INT IDENTITY(1,1) PRIMARY KEY,
    medicine_name VARCHAR(100) NOT NULL,
    category      VARCHAR(50),
    price         DECIMAL(8,2),
    stock_qty     INT DEFAULT 0,
    expiry_date   DATE
);

CREATE TABLE customers (
    customer_id   INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone         VARCHAR(15),
    city          VARCHAR(50),
    age           INT
);

CREATE TABLE suppliers (
    supplier_id   INT IDENTITY(1,1) PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    location      VARCHAR(80),
    contact_phone VARCHAR(15),
    email         VARCHAR(100)
);

CREATE TABLE sales (
    sale_id        INT IDENTITY(1,1) PRIMARY KEY,
    sales_date     DATE DEFAULT GETDATE(),
    customer_id    INT REFERENCES customers(customer_id),
    medicine_id    INT REFERENCES medicines(medicine_id),
    quantity       INT NOT NULL,
    price_per_unit DECIMAL(8,2) NOT NULL,
    total_amount   DECIMAL(10,2)
);
GO

INSERT INTO medicines (medicine_name, category, price, stock_qty, expiry_date) VALUES
('Paracetamol 500mg','Painkiller',12.50,320,'2026-08-30'),
('Amoxicillin 250mg','Antibiotic',45.00,210,'2025-12-31'),
('Cough Syrup Benadryl','Cough & Cold',85.00,110,'2025-10-15'),
('Pantoprazole 40mg','Antacid',55.00,180,'2026-03-20'),
('Ibuprofen 400mg','Painkiller',28.00,240,'2026-06-10'),
('Vitamin C 500mg','Vitamin',30.00,420,'2026-09-01'),
('Azithromycin 500mg','Antibiotic',65.00,130,'2025-11-28'),
('Metformin 500mg','Diabetes',22.00,350,'2026-05-15'),
('Cetirizine 10mg','Antihistamine',18.00,260,'2026-07-20'),
('Amlodipine 5mg','Cardiac',35.00,150,'2026-04-30'),
('Atorvastatin 10mg','Cardiac',48.00,125,'2026-02-18'),
('Omeprazole 20mg','Antacid',32.00,195,'2026-08-05'),
('Dolo 650mg','Painkiller',15.00,310,'2026-10-12'),
('Levothyroxine 50mcg','Thyroid',58.00,95,'2026-01-25'),
('Salbutamol Inhaler','Respiratory',120.00,75,'2025-09-30'),
('Diclofenac 50mg','Painkiller',20.00,230,'2026-07-15'),
('Montelukast 10mg','Respiratory',72.00,105,'2026-03-10'),
('Glimepiride 2mg','Diabetes',38.00,140,'2026-06-28'),
('Losartan 50mg','Cardiac',42.00,165,'2026-05-20'),
('Vitamin D3 60K IU','Vitamin',95.00,280,'2026-11-01'),
('B-Complex Tablet','Vitamin',25.00,360,'2026-09-15'),
('Ranitidine 150mg','Antacid',18.00,210,'2025-12-20'),
('Clonazepam 0.5mg','Neurological',55.00,65,'2026-04-08'),
('Folic Acid 5mg','Vitamin',10.00,430,'2026-10-30'),
('Ondansetron 4mg','Antiemetic',40.00,145,'2026-02-14'),
('Clopidogrel 75mg','Cardiac',62.00,110,'2026-05-05'),
('Hydroxychloroquine 200mg','Anti-inflammatory',78.00,80,'2026-01-10'),
('Doxycycline 100mg','Antibiotic',52.00,115,'2025-11-05'),
('Zinc Sulphate 20mg','Vitamin',14.00,390,'2026-08-18'),
('Tramadol 50mg','Painkiller',35.00,160,'2026-06-22'),
('Ciprofloxacin 500mg','Antibiotic',55.00,135,'2026-04-15'),
('Insulin Glargine 100IU','Diabetes',350.00,40,'2025-10-01'),
('Enalapril 5mg','Cardiac',30.00,175,'2026-07-10'),
('Prednisolone 10mg','Anti-inflammatory',22.00,190,'2026-03-25'),
('Albendazole 400mg','Antiparasitic',28.00,220,'2026-09-12'),
('Loperamide 2mg','Gastrointestinal',15.00,250,'2026-06-05'),
('Metronidazole 400mg','Antibiotic',20.00,200,'2026-05-30'),
('Amlodipine 10mg','Cardiac',55.00,90,'2026-08-22'),
('Sertraline 50mg','Neurological',85.00,70,'2026-03-18'),
('Calcium + D3 Tablet','Vitamin',45.00,310,'2026-10-05'),
('Lisinopril 10mg','Cardiac',38.00,130,'2026-07-28'),
('Fluconazole 150mg','Antifungal',65.00,85,'2026-04-20'),
('Betahistine 16mg','Neurological',60.00,95,'2026-06-15'),
('Pantoprazole 20mg','Antacid',40.00,200,'2026-09-08'),
('Paracetamol + Caffeine','Painkiller',18.00,275,'2026-08-15'),
('Aceclofenac 100mg','Anti-inflammatory',25.00,195,'2026-05-10'),
('Rosuvastatin 10mg','Cardiac',72.00,100,'2026-04-02'),
('Multivitamin Tablet','Vitamin',55.00,340,'2026-11-20'),
('Telmisartan 40mg','Cardiac',48.00,120,'2026-07-05'),
('Ivermectin 12mg','Antiparasitic',35.00,145,'2026-06-30');

INSERT INTO customers (customer_name,phone,city,age) VALUES
('Ramesh Kumar','9876543210','Mumbai',45),
('Priya Sharma','9876543211','Delhi',32),
('Anand Nair','9876543212','Bengaluru',58),
('Sunita Patel','9876543213','Ahmedabad',27),
('Vijay Mehta','9876543214','Pune',40),
('Meena Iyer','9876543215','Chennai',35),
('Raju Verma','9876543216','Kolkata',29),
('Kavitha Rao','9876543217','Hyderabad',31),
('Suresh Babu','9876543218','Chennai',52),
('Deepa Menon','9876543219','Kochi',44),
('Arjun Singh','9876543220','Jaipur',37),
('Nisha Gupta','9876543221','Lucknow',26),
('Harish Reddy','9876543222','Hyderabad',63),
('Lalitha Krishnan','9876543223','Bengaluru',49),
('Mohammed Farhan','9876543224','Mumbai',33),
('Rekha Joshi','9876543225','Bhopal',55),
('Kiran Desai','9876543226','Surat',41),
('Pooja Agarwal','9876543227','Delhi',28),
('Naresh Yadav','9876543228','Patna',60),
('Divya Pillai','9876543229','Thiruvananthapuram',38),
('Santhosh Murthy','9876543230','Mysuru',47),
('Geeta Bhat','9876543231','Mangaluru',53),
('Praveen Tiwari','9876543232','Varanasi',34),
('Anjali Saxena','9876543233','Agra',29),
('Mohan Das','9876543234','Bhubaneswar',62),
('Shilpa Hegde','9876543235','Hubli',36),
('Ramakrishnan V','9876543236','Coimbatore',57),
('Swati Kulkarni','9876543237','Nagpur',30),
('Dinesh Chandra','9876543238','Indore',43),
('Bhavana Reddy','9876543239','Visakhapatnam',39),
('Tarun Malhotra','9876543240','Chandigarh',31),
('Usha Rani','9876543241','Vijayawada',50),
('Gopal Krishnan','9876543242','Madurai',66),
('Sonal Shah','9876543243','Rajkot',27),
('Manoj Pandey','9876543244','Allahabad',48),
('Fatima Begum','9876543245','Hyderabad',42),
('Rakesh Nair','9876543246','Thrissur',35),
('Vandana Singh','9876543247','Kanpur',46),
('Balaji Subramaniam','9876543248','Chennai',59),
('Preeti Wagh','9876543249','Pune',32);

INSERT INTO suppliers (supplier_name,location,contact_phone,email) VALUES
('Sun Pharma','Mumbai, Maharashtra','0222345678','orders@sunpharma.com'),
('Cipla Limited','Mumbai, Maharashtra','0222456789','supply@cipla.com'),
('Dr. Reddys Labs','Hyderabad, Telangana','0402567890','orders@drreddys.com'),
('Alkem Laboratories','Mumbai, Maharashtra','0222678901','info@alkem.com'),
('Zydus Cadila','Ahmedabad, Gujarat','0792789012','supply@zydus.com'),
('Lupin Pharmaceuticals','Pune, Maharashtra','0202890123','orders@lupin.com'),
('Abbott India','Mumbai, Maharashtra','0223001234','contact@abbott.in'),
('Mankind Pharma','New Delhi','0112112345','supply@mankind.in'),
('Torrent Pharma','Ahmedabad, Gujarat','0792223456','info@torrentpharma.com'),
('Glenmark Pharma','Mumbai, Maharashtra','0223334567','orders@glenmark.com'),
('Biocon Limited','Bengaluru, Karnataka','0802445678','supply@biocon.com'),
('Wockhardt Ltd','Mumbai, Maharashtra','0222556789','info@wockhardt.com'),
('Cadila Healthcare','Ahmedabad, Gujarat','0792667890','orders@cadila.com'),
('Emcure Pharmaceuticals','Pune, Maharashtra','0202778901','contact@emcure.com'),
('Himalaya Drug Company','Bengaluru, Karnataka','0802889012','supply@himalaya.com');

INSERT INTO sales (sales_date, customer_id, medicine_id, quantity, price_per_unit, total_amount) VALUES

('2024-01-02',  1,  1,  3,  12.50,   37.50),
('2024-01-03',  2,  6,  2,  30.00,   60.00),
('2024-01-04',  3, 10,  5,  35.00,  175.00),
('2024-01-05',  4,  3,  1,  85.00,   85.00),
('2024-01-06',  5,  8,  4,  22.00,   88.00),
('2024-01-07',  6,  2,  2,  45.00,   90.00),
('2024-01-08',  7,  5,  3,  28.00,   84.00),
('2024-01-09',  8,  9,  2,  18.00,   36.00),
('2024-01-10',  9, 11,  2,  48.00,   96.00),
('2024-01-11', 10, 20,  1,  95.00,   95.00),
('2024-01-12', 11, 13,  4,  15.00,   60.00),
('2024-01-13', 12, 21,  3,  25.00,   75.00),
('2024-01-14', 13, 14,  2,  58.00,  116.00),
('2024-01-15',  1,  4,  2,  55.00,  110.00),
('2024-01-16', 14, 19,  3,  42.00,  126.00),
('2024-01-17', 15, 25,  2,  40.00,   80.00),
('2024-01-18', 16, 16,  5,  20.00,  100.00),
('2024-02-01', 17, 12,  2,  32.00,   64.00),
('2024-02-02', 18, 24,  6,  10.00,   60.00),
('2024-02-03', 19, 15,  1, 120.00,  120.00),
('2024-02-04', 20, 26,  2,  62.00,  124.00),
('2024-02-05', 21, 17,  1,  72.00,   72.00),
('2024-02-06', 22,  4,  3,  55.00,  165.00),
('2024-02-07', 23, 22,  4,  18.00,   72.00),
('2024-02-08', 24, 18,  2,  38.00,   76.00),
('2024-02-09', 25,  5,  2,  28.00,   56.00),
('2024-02-10', 26, 29,  5,  14.00,   70.00),
('2024-02-11', 27, 10,  3,  35.00,  105.00),
('2024-02-12', 28, 11,  2,  48.00,   96.00),
('2024-02-13', 29, 23,  1,  55.00,   55.00),
('2024-02-14', 30, 20,  2,  95.00,  190.00),
('2024-02-15', 31,  6,  4,  30.00,  120.00),
('2024-02-16', 32,  9,  3,  18.00,   54.00),
('2024-02-17', 33, 30,  2,  35.00,   70.00),
('2024-02-18', 34, 13,  6,  15.00,   90.00),
('2024-03-01', 35, 28,  1,  52.00,   52.00),
('2024-03-02', 36, 19,  2,  42.00,   84.00),
('2024-03-03', 37, 21,  4,  25.00,  100.00),
('2024-03-04', 38,  2,  3,  45.00,  135.00),
('2024-03-05', 39, 12,  2,  32.00,   64.00),
('2024-03-06', 40, 27,  1,  78.00,   78.00),
('2024-03-07',  1,  1,  5,  12.50,   62.50),
('2024-03-08',  2, 16,  4,  20.00,   80.00),
('2024-03-09',  3, 24,  8,  10.00,   80.00),
('2024-03-10',  4,  8,  3,  22.00,   66.00),
('2024-03-11',  5,  5,  2,  28.00,   56.00),
('2024-03-12',  6, 31,  2,  55.00,  110.00),
('2024-03-13',  7, 32,  1, 350.00,  350.00),
('2024-03-14',  8, 33,  4,  30.00,  120.00),
('2024-03-15',  9, 34,  3,  22.00,   66.00),
('2024-03-16', 10, 35,  5,  28.00,  140.00),
('2024-03-17', 11, 36,  2,  15.00,   30.00),
('2024-03-18', 12, 37,  3,  20.00,   60.00),
('2024-04-01', 13, 38,  2,  55.00,  110.00),
('2024-04-02', 14, 39,  1,  85.00,   85.00),
('2024-04-03', 15, 40,  3,  45.00,  135.00),
('2024-04-04', 16, 41,  2,  38.00,   76.00),
('2024-04-05', 17, 42,  1,  65.00,   65.00),
('2024-04-06', 18, 43,  2,  60.00,  120.00),
('2024-04-07', 19, 44,  4,  40.00,  160.00),
('2024-04-08', 20, 45,  3,  18.00,   54.00),
('2024-04-09', 21, 46,  5,  25.00,  125.00),
('2024-04-10', 22, 47,  2,  72.00,  144.00),
('2024-04-11', 23, 48,  3,  55.00,  165.00),
('2024-04-12', 24, 49,  2,  48.00,   96.00),
('2024-04-13', 25, 50,  4,  35.00,  140.00),
('2024-04-14', 26,  1,  6,  12.50,   75.00),
('2024-04-15', 27,  6,  3,  30.00,   90.00),
('2024-04-16', 28, 20,  2,  95.00,  190.00),
('2024-04-17', 29,  4,  2,  55.00,  110.00),
('2024-04-18', 30,  8,  5,  22.00,  110.00),
('2024-05-01', 31,  2,  3,  45.00,  135.00),
('2024-05-02', 32,  7,  2,  65.00,  130.00),
('2024-05-03', 33, 10,  4,  35.00,  140.00),
('2024-05-04', 34, 11,  2,  48.00,   96.00),
('2024-05-05', 35, 19,  3,  42.00,  126.00),
('2024-05-06', 36, 26,  1,  62.00,   62.00),
('2024-05-07', 37, 13,  5,  15.00,   75.00),
('2024-05-08', 38, 21,  4,  25.00,  100.00),
('2024-05-09', 39,  9,  3,  18.00,   54.00),
('2024-05-10', 40, 33,  2,  30.00,   60.00),
('2024-05-11',  1, 40,  3,  45.00,  135.00),
('2024-05-12',  2, 47,  1,  72.00,   72.00),
('2024-05-13',  3, 16,  4,  20.00,   80.00),
('2024-05-14',  4, 24,  6,  10.00,   60.00),
('2024-05-15',  5, 30,  2,  35.00,   70.00),
('2024-05-16',  6, 34,  3,  22.00,   66.00),
('2024-05-17',  7,  5,  5,  28.00,  140.00),
('2024-05-18',  8, 12,  2,  32.00,   64.00),
('2024-06-01',  9,  1,  4,  12.50,   50.00),
('2024-06-02', 10, 44,  3,  40.00,  120.00),
('2024-06-03', 11, 48,  2,  55.00,  110.00),
('2024-06-04', 12, 18,  4,  38.00,  152.00),
('2024-06-05', 13, 32,  1, 350.00,  350.00),
('2024-06-06', 14, 41,  2,  38.00,   76.00),
('2024-06-07', 15, 25,  3,  40.00,  120.00),
('2024-06-08', 16,  6,  5,  30.00,  150.00),
('2024-06-09', 17,  8,  4,  22.00,   88.00),
('2024-06-10', 18, 14,  1,  58.00,   58.00),
('2024-06-11', 19, 23,  2,  55.00,  110.00),
('2024-06-12', 20, 36,  6,  15.00,   90.00),
('2024-06-13', 21, 49,  2,  48.00,   96.00),
('2024-06-14', 22, 50,  3,  35.00,  105.00),
('2024-06-15', 23, 39,  1,  85.00,   85.00),
('2024-06-16', 24, 17,  2,  72.00,  144.00),
('2024-06-17', 25, 20,  1,  95.00,   95.00),
('2024-06-18', 26, 46,  4,  25.00,  100.00),
('2024-07-01', 27,  2,  3,  45.00,  135.00),
('2024-07-02', 28, 31,  2,  55.00,  110.00),
('2024-07-03', 29,  9,  5,  18.00,   90.00),
('2024-07-04', 30, 13,  4,  15.00,   60.00),
('2024-07-05', 31,  4,  2,  55.00,  110.00),
('2024-07-06', 32, 45,  3,  18.00,   54.00),
('2024-07-07', 33, 11,  4,  48.00,  192.00),
('2024-07-08', 34,  5,  2,  28.00,   56.00),
('2024-07-09', 35, 28,  2,  52.00,  104.00),
('2024-07-10', 36, 40,  3,  45.00,  135.00),
('2024-07-11', 37, 47,  1,  72.00,   72.00),
('2024-07-12', 38, 22,  5,  18.00,   90.00),
('2024-07-13', 39,  1,  6,  12.50,   75.00),
('2024-07-14', 40,  6,  4,  30.00,  120.00),
('2024-07-15',  1, 19,  3,  42.00,  126.00),
('2024-07-16',  2, 26,  2,  62.00,  124.00),
('2024-07-17',  3, 33,  4,  30.00,  120.00),
('2024-07-18',  4, 48,  2,  55.00,  110.00),
('2024-08-01',  5, 10,  5,  35.00,  175.00),
('2024-08-02',  6, 16,  3,  20.00,   60.00),
('2024-08-03',  7, 35,  4,  28.00,  112.00),
('2024-08-04',  8,  8,  5,  22.00,  110.00),
('2024-08-05',  9, 37,  3,  20.00,   60.00),
('2024-08-06', 10, 41,  2,  38.00,   76.00),
('2024-08-07', 11, 43,  4,  60.00,  240.00),
('2024-08-08', 12, 21,  5,  25.00,  125.00),
('2024-08-09', 13, 30,  3,  35.00,  105.00),
('2024-08-10', 14,  7,  2,  65.00,  130.00),
('2024-08-11', 15, 49,  3,  48.00,  144.00),
('2024-08-12', 16, 24,  8,  10.00,   80.00),
('2024-08-13', 17, 18,  2,  38.00,   76.00),
('2024-08-14', 18, 44,  4,  40.00,  160.00),
('2024-08-15', 19, 29,  5,  14.00,   70.00),
('2024-08-16', 20, 12,  3,  32.00,   96.00),
('2024-08-17', 21,  4,  2,  55.00,  110.00),
('2024-08-18', 22,  1,  4,  12.50,   50.00),
('2024-09-01', 23, 11,  3,  48.00,  144.00),
('2024-09-02', 24, 50,  2,  35.00,   70.00),
('2024-09-03', 25, 20,  1,  95.00,   95.00),
('2024-09-04', 26, 15,  1, 120.00,  120.00),
('2024-09-05', 27, 38,  2,  55.00,  110.00),
('2024-09-06', 28,  6,  5,  30.00,  150.00),
('2024-09-07', 29, 46,  3,  25.00,   75.00),
('2024-09-08', 30,  2,  2,  45.00,   90.00),
('2024-09-09', 31,  9,  4,  18.00,   72.00),
('2024-09-10', 32, 36,  5,  15.00,   75.00),
('2024-09-11', 33, 39,  1,  85.00,   85.00),
('2024-09-12', 34, 47,  2,  72.00,  144.00),
('2024-09-13', 35, 13,  6,  15.00,   90.00),
('2024-09-14', 36,  5,  3,  28.00,   84.00),
('2024-09-15', 37, 32,  1, 350.00,  350.00),
('2024-09-16', 38, 40,  2,  45.00,   90.00),
('2024-09-17', 39, 27,  1,  78.00,   78.00),
('2024-09-18', 40, 22,  4,  18.00,   72.00),
('2024-10-01',  1, 10,  4,  35.00,  140.00),
('2024-10-02',  2,  8,  5,  22.00,  110.00),
('2024-10-03',  3, 48,  2,  55.00,  110.00),
('2024-10-04',  4, 23,  1,  55.00,   55.00),
('2024-10-05',  5, 42,  2,  65.00,  130.00),
('2024-10-06',  6, 19,  3,  42.00,  126.00),
('2024-10-07',  7, 16,  4,  20.00,   80.00),
('2024-10-08',  8, 34,  3,  22.00,   66.00),
('2024-10-09',  9, 21,  5,  25.00,  125.00),
('2024-10-10', 10, 29,  4,  14.00,   56.00),
('2024-10-11', 11, 45,  3,  18.00,   54.00),
('2024-10-12', 12, 31,  2,  55.00,  110.00),
('2024-10-13', 13,  7,  1,  65.00,   65.00),
('2024-10-14', 14, 44,  4,  40.00,  160.00),
('2024-10-15', 15,  1,  5,  12.50,   62.50),
('2024-10-16', 16, 26,  2,  62.00,  124.00),
('2024-10-17', 17, 49,  3,  48.00,  144.00),
('2024-10-18', 18, 20,  2,  95.00,  190.00),
('2024-11-01', 19,  6,  4,  30.00,  120.00),
('2024-11-02', 20, 12,  3,  32.00,   96.00),
('2024-11-03', 21, 11,  2,  48.00,   96.00),
('2024-11-04', 22,  4,  3,  55.00,  165.00),
('2024-11-05', 23, 18,  4,  38.00,  152.00),
('2024-11-06', 24, 30,  2,  35.00,   70.00),
('2024-11-07', 25,  2,  2,  45.00,   90.00),
('2024-11-08', 26, 50,  3,  35.00,  105.00),
('2024-11-09', 27, 40,  2,  45.00,   90.00),
('2024-11-10', 28, 46,  5,  25.00,  125.00),
('2024-11-11', 29,  9,  4,  18.00,   72.00),
('2024-11-12', 30, 37,  3,  20.00,   60.00),
('2024-11-13', 31, 47,  1,  72.00,   72.00),
('2024-11-14', 32, 24,  6,  10.00,   60.00),
('2024-11-15', 33,  5,  4,  28.00,  112.00),
('2024-11-16', 34, 43,  2,  60.00,  120.00),
('2024-11-17', 35, 38,  3,  55.00,  165.00),
('2024-11-18', 36, 13,  5,  15.00,   75.00),
('2024-12-01', 37, 20,  2,  95.00,  190.00),
('2024-12-02', 38, 10,  4,  35.00,  140.00),
('2024-12-03', 39,  1,  6,  12.50,   75.00),
('2024-12-04', 40,  6,  4,  30.00,  120.00),
('2024-12-05',  1,  8,  5,  22.00,  110.00),
('2024-12-06',  2, 11,  3,  48.00,  144.00),
('2024-12-07',  3, 26,  2,  62.00,  124.00),
('2024-12-08',  4, 19,  3,  42.00,  126.00),
('2024-12-09',  5, 32,  1, 350.00,  350.00),
('2024-12-10',  6, 44,  4,  40.00,  160.00),
('2024-12-11',  7, 49,  2,  48.00,   96.00),
('2024-12-12',  8, 16,  5,  20.00,  100.00),
('2024-12-13',  9, 33,  3,  30.00,   90.00),
('2024-12-14', 10, 40,  2,  45.00,   90.00),
('2024-12-15', 11, 47,  1,  72.00,   72.00),
('2024-12-16', 12, 21,  4,  25.00,  100.00),
('2024-12-17', 13, 30,  3,  35.00,  105.00),
('2024-12-18', 14,  4,  2,  55.00,  110.00),
('2024-12-19', 15,  9,  4,  18.00,   72.00),
('2024-12-20', 16,  2,  2,  45.00,   90.00);

GO

--select all medicines
SELECT * FROM medicines;

-- Specific columns only
SELECT medicine_name, price, stock_qty FROM medicines;

-- Filter by category – Antibiotic
SELECT medicine_name, price, stock_qty
FROM medicines
WHERE category = 'Antibiotic';

-- Cheap medicines (price < 30)
SELECT medicine_name, category, price
FROM medicines
WHERE price < 30
ORDER BY price ASC;

-- All customers
SELECT * FROM customers;

-- Customers from South Indian cities
SELECT customer_name, city, age
FROM customers
WHERE city IN ('Chennai', 'Hyderabad', 'Bengaluru', 'Kochi', 'Coimbatore', 'Madurai')
ORDER BY city;

-- All suppliers
SELECT * FROM suppliers;

-- Sales with customer names
SELECT
    s.sale_id,
    s.sales_date,
    c.customer_name,
    c.city,
    s.quantity,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
ORDER BY s.sales_date;

-- Sales with medicine names
SELECT
    s.sale_id,
    s.sales_date,
    m.medicine_name,
    m.category,
    s.quantity,
    s.price_per_unit,
    s.total_amount
FROM sales s
JOIN medicines m ON s.medicine_id = m.medicine_id
ORDER BY s.sales_date;

--  complete sales report
SELECT
    s.sale_id,
    s.sales_date,
    c.customer_name,
    c.city,
    m.medicine_name,
    m.category,
    s.quantity,
    s.price_per_unit,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN medicines m ON s.medicine_id = m.medicine_id
ORDER BY s.sales_date ASC;

-- Purchase history for a specific customer Ramesh kumar
SELECT
    s.sales_date,
    m.medicine_name,
    m.category,
    s.quantity,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN medicines m ON s.medicine_id = m.medicine_id
WHERE c.customer_name = 'Ramesh Kumar'
ORDER BY s.sales_date;

-- All Cardiac medicines sold with buyer details
SELECT
    s.sales_date,
    c.customer_name,
    c.age,
    m.medicine_name,
    s.quantity,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN medicines m ON s.medicine_id = m.medicine_id
WHERE m.category = 'Cardiac'
ORDER BY s.sales_date;


-- Medicine count per category
SELECT
    category,
    COUNT(*) AS total_medicines,
    AVG(price) AS avg_price
FROM medicines
GROUP BY category
ORDER BY total_medicines DESC;

-- Total revenue per medicine
SELECT
    m.medicine_name,
    m.category,
    SUM(s.quantity) AS total_units_sold,
    SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.medicine_name, m.category
ORDER BY total_revenue DESC;

-- Total spending per customer
SELECT
    c.customer_name,
    c.city,
    COUNT(s.sale_id) AS total_visits,
    SUM(s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_name, c.city
ORDER BY total_spent DESC;

-- Average sale value per category
SELECT
    m.category,
    COUNT(s.sale_id)    AS number_of_sales,
    AVG(s.total_amount) AS avg_sale_value,
    SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.category
ORDER BY total_revenue DESC;

-- Max and min price per category
SELECT
    category,
    COUNT(*) AS medicine_count,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price,
    MAX(price)-MIN(price) AS price_range
FROM medicines
GROUP BY category
ORDER BY highest_price DESC;

-- Monthly revenue – full year 2024
SELECT
    MONTH(sales_date) AS sale_month,
    DATENAME(MONTH, sales_date)AS month_name,
    COUNT(sale_id) AS total_orders,
    SUM(total_amount) AS monthly_revenue
FROM sales
WHERE YEAR(sales_date) = 2024
GROUP BY MONTH(sales_date), DATENAME(MONTH, sales_date)
ORDER BY sale_month;

-- Quarterly revenue breakdown
SELECT
    DATEPART(QUARTER, sales_date) AS quarter,
    COUNT(sale_id)AS total_orders,
    SUM(total_amount)AS quarterly_revenue
FROM sales
GROUP BY DATEPART(QUARTER, sales_date)
ORDER BY quarter;

-- Stock Status Report (morning check)
SELECT
    medicine_name,
    category,
    stock_qty,
    expiry_date,
    CASE
        WHEN stock_qty < 80  THEN 'CRITICAL – Reorder Immediately'
        WHEN stock_qty < 130 THEN 'Low – Reorder Soon'
        WHEN stock_qty < 200 THEN 'Moderate – Monitor Stock'
        ELSE 'Sufficient Stock'
    END AS stock_status,
    CASE
        WHEN expiry_date < GETDATE() THEN 'EXPIRED'
        WHEN expiry_date < DATEADD(MONTH,3,GETDATE()) THEN 'Expiring Soon'
        ELSE 'Valid'
    END AS expiry_status
FROM medicines
ORDER BY stock_qty ASC;

-- Daily Sales Report
SELECT
    s.sales_date,
    c.customer_name,
    c.city,
    m.medicine_name,
    m.category,
    s.quantity,
    s.price_per_unit,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN medicines m ON s.medicine_id = m.medicine_id
ORDER BY s.sales_date ASC;

-- Best-Selling Medicines (Top 10 by quantity)
SELECT TOP 10
    m.medicine_name,
    m.category,
    m.price,
    SUM(s.quantity) AS total_qty_sold,
    SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.medicine_name, m.category, m.price
ORDER BY total_qty_sold DESC;

-- Customer Purchase History (VIP report)
SELECT
    c.customer_name,
    c.city,
    c.age,
    COUNT(s.sale_id)    AS number_of_purchases,
    SUM(s.total_amount) AS total_amount_spent,
    CASE
        WHEN SUM(s.total_amount) >= 500 THEN 'Platinum'
        WHEN SUM(s.total_amount) >= 300 THEN 'Gold'
        WHEN SUM(s.total_amount) >= 150 THEN 'Silver'
        ELSE 'Regular'
    END AS customer_tier
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_name, c.city, c.age
ORDER BY total_amount_spent DESC;

-- Supplier Catalogue
SELECT
    supplier_name,
    location,
    contact_phone,
    email
FROM suppliers
ORDER BY supplier_name ASC;

--  Category-wise Revenue Share
SELECT
    m.category,
    SUM(s.total_amount) AS category_revenue,
    ROUND(SUM(s.total_amount) * 100.0 / (SELECT SUM(total_amount) FROM sales),2) AS revenue_percentage
FROM sales s
JOIN medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.category
ORDER BY category_revenue DESC;

-- Rank medicines by revenue within each category
SELECT
    m.category,
    m.medicine_name,
    SUM(s.total_amount) AS total_revenue,
    RANK() OVER (PARTITION BY m.category ORDER BY SUM(s.total_amount) DESC) AS rank_in_category
FROM sales s
JOIN medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.category, m.medicine_name
ORDER BY m.category, rank_in_category;

-- E2. Running total of daily revenue (cumulative)
SELECT
    sales_date,
    SUM(total_amount) AS daily_revenue,
    SUM(SUM(total_amount)) OVER (ORDER BY sales_date) AS cumulative_revenue
FROM sales
GROUP BY sales_date
ORDER BY sales_date;

-- Top spending customer per city
SELECT city, customer_name, total_spent
FROM (
 SELECT c.city, c.customer_name, SUM(s.total_amount) AS total_spent,
 RANK() OVER (PARTITION BY c.city ORDER BY SUM(s.total_amount) DESC) AS rnk
 FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
 GROUP BY c.city, c.customer_name
)ranked
WHERE rnk = 1
ORDER BY total_spent DESC;

-- Customers who spent above average
SELECT
    c.customer_name,
    c.city,
    SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_name, c.city
HAVING SUM(s.total_amount) > ( SELECT AVG(total_per_customer)
  FROM (
        SELECT customer_id, SUM(total_amount) AS total_per_customer
        FROM sales
        GROUP BY customer_id
    ) sub)
ORDER BY total_spent DESC;

--F1. View: Full Sales Detail
CREATE VIEW vw_full_sales_detail AS
SELECT
    s.sale_id,
    s.sales_date,
    YEAR(s.sales_date)       AS sale_year,
    MONTH(s.sales_date)      AS sale_month,
    DATENAME(MONTH,s.sales_date) AS month_name,
    c.customer_name,
    c.city,
    c.age,
    m.medicine_name,
    m.category,
    s.quantity,
    s.price_per_unit,
    s.total_amount
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN medicines m ON s.medicine_id = m.medicine_id;
GO
SELECT * FROM vw_full_sales_detail

-- View: Stock Alert
CREATE VIEW vw_stock_alert AS
SELECT
    medicine_name,
    category,
    stock_qty,
    expiry_date,
    CASE
        WHEN stock_qty < 80  THEN 'CRITICAL'
        WHEN stock_qty < 130 THEN 'LOW'
        ELSE 'OK'
    END AS stock_status
FROM medicines
WHERE stock_qty < 130;
GO

-- Use the views
SELECT * FROM vw_full_sales_detail ORDER BY sales_date;
SELECT * FROM vw_stock_alert ORDER BY stock_qty;

SELECT 'medicines'  AS table_name, COUNT(*) AS total_rows FROM medicines
UNION ALL
SELECT 'customers',  COUNT(*) FROM customers
UNION ALL
SELECT 'suppliers',  COUNT(*) FROM suppliers
UNION ALL
SELECT 'sales',      COUNT(*) FROM sales;
