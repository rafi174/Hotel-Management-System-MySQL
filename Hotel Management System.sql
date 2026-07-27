create database HotelManagementSystem;

use HotelManagementSystem;

CREATE TABLE Hotel(
hotel_id INT PRIMARY KEY,
hotel_name VARCHAR(50),
city VARCHAR(30),
phone VARCHAR(15)
);

CREATE TABLE Rooms(
room_id INT PRIMARY KEY,
hotel_id INT,
room_no INT,
room_type VARCHAR(20),
price DECIMAL(10,2),
status VARCHAR(20),
FOREIGN KEY(hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
email VARCHAR(50),
phone VARCHAR(15),
city VARCHAR(30)
);

CREATE TABLE Bookings(
booking_id INT PRIMARY KEY,
customer_id INT,
room_id INT,
check_in DATE,
check_out DATE,
booking_status VARCHAR(20),
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY(room_id) REFERENCES Rooms(room_id)
);

CREATE TABLE Payments(
payment_id INT PRIMARY KEY,
booking_id INT,
amount DECIMAL(10,2),
payment_mode VARCHAR(20),
payment_date DATE,
FOREIGN KEY(booking_id) REFERENCES Bookings(booking_id)
);

CREATE TABLE Staff(
staff_id INT PRIMARY KEY,
staff_name VARCHAR(40),
designation VARCHAR(30),
salary DECIMAL(10,2),
phone VARCHAR(15)
);

CREATE TABLE Services(
service_id INT PRIMARY KEY,
service_name VARCHAR(40),
service_price DECIMAL(10,2)
);

INSERT INTO Hotel VALUES
(1,'Taj Krishna','Hyderabad','04023344556'),
(2,'ITC Kakatiya','Hyderabad','04024455667'),
(3,'Novotel Hitech City','Hyderabad','04025566778'),
(4,'The Park','Visakhapatnam','08912556677'),
(5,'Marriott','Bengaluru','08023456789'),
(6,'Radisson Blu','Chennai','04422334455'),
(7,'Lemon Tree Premier','Vijayawada','08662445566'),
(8,'Vivanta','Tirupati','08772233445'),
(9,'Fortune Select','Mysore','08212345678'),
(10,'Grand Mercure','Bengaluru','08026778899'),
(11,'The Taj Mahal Palace','Mumbai','02266653366'),
(12,'The Oberoi','Mumbai','02266325757'),
(13,'The Leela Palace','Bengaluru','08025211234'),
(14,'ITC Gardenia','Bengaluru','08022119898'),
(15,'JW Marriott Hotel','Bengaluru','08067189999'),
(16,'The Taj Mahal Hotel','New Delhi','01166566162'),
(17,'The Imperial','New Delhi','01141501234'),
(18,'ITC Maurya','New Delhi','01126112233'),
(19,'The Leela Ambience','Gurugram','01244771234'),
(20,'Taj Palace','New Delhi','01126110202'),
(21,'Taj Coromandel','Chennai','04466002827'),
(22,'The Leela Palace','Chennai','04433661234'),
(23,'ITC Grand Chola','Chennai','04422200000'),
(24,'Taj Bengal','Kolkata','03366123939'),
(25,'The Oberoi Grand','Kolkata','03322492323'),
(26,'ITC Sonar','Kolkata','03323454545'),
(27,'Hyatt Regency','Kolkata','03323351234'),
(28,'Taj Falaknuma Palace','Hyderabad','04066298585'),
(29,'The Westin Mindspace','Hyderabad','04067676767'),
(30,'Trident Hyderabad','Hyderabad','04066232323'),
(31,'Taj Lake Palace','Udaipur','02942428800'),
(32,'The Oberoi Udaivilas','Udaipur','02942433300'),
(33,'Rambagh Palace','Jaipur','01412385700'),
(34,'The Oberoi Rajvilas','Jaipur','01412680101'),
(35,'Fairmont Jaipur','Jaipur','01413988300'),
(36,'Umaid Bhawan Palace','Jodhpur','02912510101'),
(37,'Taj Mahal Lucknow','Lucknow','05226711000'),
(38,'The Renaissance','Lucknow','05224055555'),
(39,'Hyatt Regency','Ahmedabad','07940171234'),
(40,'The Leela Grand','Gandhinagar','07969021234'),
(41,'Taj Malabar Resort & Spa','Cochin','04846643000'),
(42,'Grand Hyatt Kochi Bolgatty','Cochin','04842661234'),
(43,'The Leela Ashtamudi','Kollam','04742751111'),
(44,'Taj Exotica Resort & Spa','Goa','08326683333'),
(45,'The Leela Goa','Cavelossim','08326621234'),
(46,'W Goa','Vagator','08326718888'),
(47,'Radisson Blu Resort','Visakhapatnam','08912822222'),
(48,'Novotel Varun Beach','Visakhapatnam','08912880000'),
(49,'Welcomhotel By ITC','Guntur','08632385555'),
(50,'Courtyard by Marriott','Tiruchirappalli','04312404000');


INSERT INTO Customers VALUES
(1,'Rahul Sharma','rahul.sharma@gmail.com','9876543210','Hyderabad'),
(2,'Priya Reddy','priya.reddy@gmail.com','9876543211','Hyderabad'),
(3,'Arjun Kumar','arjun.kumar@gmail.com','9876543212','Bengaluru'),
(4,'Sneha Patel','sneha.patel@gmail.com','9876543213','Chennai'),
(5,'Karthik Reddy','karthik.reddy@gmail.com','9876543214','Vijayawada'),
(6,'Anjali Gupta','anjali.gupta@gmail.com','9876543215','Mumbai'),
(7,'Vikram Singh','vikram.singh@gmail.com','9876543216','Delhi'),
(8,'Pooja Verma','pooja.verma@gmail.com','9876543217','Visakhapatnam'),
(9,'Sai Krishna','saikrishna@gmail.com','9876543218','Tirupati'),
(10,'Harsha Vardhan','harsha@gmail.com','9876543219','Warangal'),
(11,'Ramesh Babu','ramesh@gmail.com','9876543220','Kadapa'),
(12,'Divya Sri','divya@gmail.com','9876543221','Nellore'),
(13,'Suresh Naidu','suresh@gmail.com','9876543222','Kurnool'),
(14,'Keerthi Rani','keerthi@gmail.com','9876543223','Anantapur'),
(15,'Mahesh Yadav','mahesh@gmail.com','9876543224','Guntur'),
(16,'Nikhil Jain','nikhil@gmail.com','9876543225','Pune'),
(17,'Akhil Chandra','akhil@gmail.com','9876543226','Hyderabad'),
(18,'Lavanya Devi','lavanya@gmail.com','9876543227','Rajahmundry'),
(19,'Rohit Mehta','rohit@gmail.com','9876543228','Bengaluru'),
(20,'Meghana Rao','meghana@gmail.com','9876543229','Hyderabad'),
(21,'Deepak Verma','deepak.verma@gmail.com','9876543230','Kolkata'),
(22,'Sandhya Rani','sandhya.rani@gmail.com','9876543231','Hyderabad'),
(23,'Manish Joshi','manish.joshi@gmail.com','9876543232','Ahmedabad'),
(24,'Kavitha Nair','kavitha.nair@gmail.com','9876543233','Kochi'),
(25,'Pranav Teja','pranav.teja@gmail.com','9876543234','Vijayawada'),
(26,'Swathi Pillai','swathi.pillai@gmail.com','9876543235','Chennai'),
(27,'Srinivas Rao','srinivas.rao@gmail.com','9876543236','Visakhapatnam'),
(28,'Neha Kulkarni','neha.kulkarni@gmail.com','9876543237','Pune'),
(29,'Rajesh Khanna','rajesh.khanna@gmail.com','9876543238','Delhi'),
(30,'Jyothi Lakshmi','jyothi.l@gmail.com','9876543239','Tirupati'),
(31,'Abhinav Reddy','abhinav.r@gmail.com','9876543240','Hyderabad'),
(32,'Amrita Sen','amrita.sen@gmail.com','9876543241','Kolkata'),
(33,'Pawan Kalyan','pawan.kalyan@gmail.com','9876543242','Guntur'),
(34,'Shalini Mishra','shalini.mishra@gmail.com','9876543243','Lucknow'),
(35,'Kiran Kumar','kiran.kumar@gmail.com','9876543244','Bengaluru'),
(36,'Rupa Devi','rupa.devi@gmail.com','9876543245','Nellore'),
(37,'Gautam Gambhir','gautam.g@gmail.com','9876543246','Mumbai'),
(38,'Bhavana Shah','bhavana.shah@gmail.com','9876543247','Ahmedabad'),
(39,'Naresh Babu','naresh.babu@gmail.com','9876543248','Kurnool'),
(40,'Preethi Shenoy','preethi.s@gmail.com','9876543249','Bengaluru'),
(41,'Venkatesh Prasad','venkatesh.p@gmail.com','9876543250','Hyderabad'),
(42,'Madhavan Pillai','madhavan@gmail.com','9876543251','Chennai'),
(43,'Sravani Yadav','sravani.y@gmail.com','9876543252','Warangal'),
(44,'Tarun Gill','tarun.gill@gmail.com','9876543253','Chandigarh'),
(45,'Kalyan Ram','kalyan.ram@gmail.com','9876543254','Rajahmundry'),
(46,'Yamini Krishna','yamini.k@gmail.com','9876543255','Kakinada'),
(47,'Suresh Raina','suresh.raina@gmail.com','9876543256','Ghaziabad'),
(48,'Pallavi Joshi','pallavi.j@gmail.com','9876543257','Nagpur'),
(49,'Satish Naidu','satish.n@gmail.com','9876543258','Eluru'),
(50,'Uday Kiran','uday.kiran@gmail.com','9876543259','Hyderabad');

INSERT INTO Staff VALUES
(1,'Srinivas Rao','Manager',65000,'9000011111'),
(2,'Lakshmi Devi','Receptionist',28000,'9000011112'),
(3,'Prakash Kumar','Chef',42000,'9000011113'),
(4,'Sunitha Reddy','Housekeeping',22000,'9000011114'),
(5,'Venkatesh','Security',25000,'9000011115'),
(6,'Anusha','Receptionist',29000,'9000011116'),
(7,'Mohan Rao','Manager',70000,'9000011117'),
(8,'Ravi Teja','Maintenance',32000,'9000011118'),
(9,'Deepika','Cleaner',21000,'9000011119'),
(10,'Ganesh Kumar','Chef',45000,'9000011120'),
(11,'Rajesh Sharma','Assistant Manager',50000,'9000011121'),
(12,'Kavitha Nair','Receptionist',30000,'9000011122'),
(13,'Suresh Raina','Sous Chef',38000,'9000011123'),
(14,'Manjula Devi','Housekeeping',22500,'9000011124'),
(15,'Ramu Naidu','Security',25500,'9000011125'),
(16,'Bhavana Rao','Accountant',40000,'9000011126'),
(17,'Satish Kumar','Manager',72000,'9000011127'),
(18,'Vijay Singh','Maintenance',33000,'9000011128'),
(19,'Latha Kumari','Cleaner',21000,'9000011129'),
(20,'Anil Verma','Chef',46000,'9000011130'),
(21,'Meenakshi S.','Receptionist',29500,'9000011131'),
(22,'Pradeep Kumar','Valet Driver',24000,'9000011132'),
(23,'Sandhya Rani','Housekeeping Supervisor',35000,'9000011133'),
(24,'Krishna Murthy','Security Head',38000,'9000011134'),
(25,'Divya Sri','F&B Service',26000,'9000011135'),
(26,'Nikhil Jain','Bell Boy',20000,'9000011136'),
(27,'Harish Babu','Manager',68000,'9000011137'),
(28,'Ravi Shankar','Electrician',31000,'9000011138'),
(29,'Sita Mahalakshmi','Laundry Staff',21500,'9000011139'),
(30,'Vikram Malhotra','Executive Chef',85000,'9000011140'),
(31,'Priya Pillai','HR Executive',45000,'9000011141'),
(32,'Kiran Kumar','Front Office Manager',55000,'9000011142'),
(33,'Naresh Yadav','Gardener',21000,'9000011143'),
(34,'Swathi Reddy','Receptionist',31000,'9000011144'),
(35,'Shankar Naik','Security',25000,'9000011145'),
(36,'Arjun Kapoor','Bartender',32000,'9000011146'),
(37,'Sneha Patel','Guest Relations',36000,'9000011147'),
(38,'Madhava Rao','Store Keeper',28000,'9000011148'),
(39,'Rupa Devi','Cleaner',21000,'9000011149'),
(40,'Srinivas Rao K.','Chef',44000,'9000011150'),
(41,'Tarun Gill','Gym Instructor',30000,'9000011151'),
(42,'Lavanya N.','Spa Therapist',35000,'9000011152'),
(43,'Kalyan Ram','Plumber',29000,'9000011153'),
(44,'Yamini Krishna','Housekeeping',22000,'9000011154'),
(45,'Somesh Kumar','Security',25000,'9000011155'),
(46,'Pooja Sharma','Receptionist',28500,'9000011156'),
(47,'Venkatesh Babu','Manager',75000,'9000011157'),
(48,'Rohit Mehta','IT Support',42000,'9000011158'),
(49,'Geetha Rani','Kitchen Steward',21500,'9000011159'),
(50,'Abhinav Reddy','Assistant Chef',36000,'9000011160');

INSERT INTO Services VALUES
(1,'Breakfast',350),
(2,'Lunch',650),
(3,'Dinner',750),
(4,'Laundry',250),
(5,'Spa',1800),
(6,'Airport Pickup',1200),
(7,'Swimming Pool',500),
(8,'Gym Access',400),
(9,'Conference Hall',3500),
(10,'Room Decoration',2500),
(11,'Valet Parking',300),
(12,'High-Speed Wi-Fi',200),
(13,'Mini Bar Refill',1500),
(14,'Late Checkout',1000),
(15,'Early Check-in',1000),
(16,'Extra Bed',800),
(17,'Lounge Access',1200),
(18,'Local Sightseeing Tour',3000),
(19,'Car Rental (Per Day)',4500),
(20,'Doctor on Call',1500),
(21,'Baby Sitting Service',600),
(22,'Pet Care Stay',1200),
(23,'Luggage Storage',150),
(24,'Currency Exchange Fee',250),
(25,'Business Center Print',100),
(26,'Meeting Room (Per Hour)',1500),
(27,'Candlelight Dinner Setup',4000),
(28,'Birthday Cake Delivery',800),
(29,'Champagne on Arrival',5000),
(30,'Guided Heritage Walk',800),
(31,'Yoga Session',600),
(32,'Massage Therapy',2200),
(33,'Sauna & Steam Bath',700),
(34,'Bicycle Rental',300),
(35,'Tennis Court Booking',500),
(36,'Kids Play Zone Entry',350),
(37,'Bonfire Setup',1800),
(38,'Barbecue Night',1500),
(39,'Wine Tasting Session',2500),
(40,'Cooking Masterclass',2000),
(41,'Express Laundry',500),
(42,'Shoe Shining',150),
(43,'Ironing Service',100),
(44,'Floral Arrangements',1200),
(45,'Photography Session',3500),
(46,'Wheelchair Assistance',0),
(47,'Trekking Guide',1500),
(48,'Souvenir Shop Voucher',500),
(49,'Snacks Basket',450),
(50,'24/7 Room Service Fee',150);

INSERT INTO Rooms VALUES
(1,1,101,'Standard',1800,'Available'),
(2,1,102,'Deluxe',2500,'Booked'),
(3,1,103,'Executive',3200,'Available'),
(4,1,104,'Suite',4500,'Booked'),
(5,1,105,'Premium Suite',6500,'Available'),
(6,1,106,'Family Room',3800,'Booked'),
(7,1,107,'AC',2200,'Available'),
(8,1,108,'Non AC',1500,'Available'),
(9,2,201,'Standard',1900,'Booked'),
(10,2,202,'Deluxe',2700,'Available'),
(11,2,203,'Executive',3400,'Booked'),
(12,2,204,'Suite',4800,'Available'),
(13,2,205,'Premium Suite',7000,'Booked'),
(14,2,206,'Family Room',3900,'Available'),
(15,2,207,'AC',2300,'Booked'),
(16,2,208,'Non AC',1600,'Available'),
(17,3,301,'Standard',2000,'Available'),
(18,3,302,'Deluxe',2800,'Booked'),
(19,3,303,'Executive',3600,'Available'),
(20,3,304,'Suite',5000,'Booked'),
(21,3,305,'Premium Suite',7200,'Available'),
(22,3,306,'Family Room',4000,'Booked'),
(23,3,307,'AC',2400,'Available'),
(24,3,308,'Non AC',1700,'Booked'),
(25,4,401,'Standard',2100,'Available'),
(26,4,402,'Deluxe',2900,'Booked'),
(27,4,403,'Executive',3700,'Available'),
(28,4,404,'Suite',5200,'Booked'),
(29,4,405,'Premium Suite',7400,'Available'),
(30,4,406,'Family Room',4200,'Booked'),
(31,4,407,'AC',2500,'Available'),
(32,4,408,'Non AC',1800,'Booked'),
(33,5,501,'Standard',2200,'Available'),
(34,5,502,'Deluxe',3000,'Booked'),
(35,5,503,'Executive',3900,'Available'),
(36,5,504,'Suite',5400,'Booked'),
(37,5,505,'Premium Suite',7600,'Available'),
(38,5,506,'Family Room',4300,'Booked'),
(39,5,507,'AC',2600,'Available'),
(40,5,508,'Non AC',1900,'Booked'),
(41,6,601,'Standard',2300,'Available'),
(42,6,602,'Deluxe',3100,'Booked'),
(43,6,603,'Executive',4000,'Available'),
(44,6,604,'Suite',5600,'Booked'),
(45,6,605,'Premium Suite',7800,'Available'),
(46,6,606,'Family Room',4500,'Booked'),
(47,6,607,'AC',2700,'Available'),
(48,6,608,'Non AC',2000,'Booked'),
(49,7,701,'Standard',2400,'Available'),
(50,7,702,'Deluxe',3200,'Booked');

INSERT INTO Bookings
(booking_id, customer_id, room_id, check_in, check_out, booking_status)
VALUES
(1,1,1,'2026-07-01','2026-07-03','Confirmed'),
(2,2,2,'2026-07-02','2026-07-05','Checked In'),
(3,3,3,'2026-07-03','2026-07-06','Checked Out'),
(4,4,4,'2026-07-04','2026-07-07','Cancelled'),
(5,5,5,'2026-07-05','2026-07-08','Pending'),
(6,6,6,'2026-07-06','2026-07-09','Confirmed'),
(7,7,7,'2026-07-07','2026-07-10','Checked In'),
(8,8,8,'2026-07-08','2026-07-11','Checked Out'),
(9,9,9,'2026-07-09','2026-07-12','Cancelled'),
(10,10,10,'2026-07-10','2026-07-13','Pending'),
(11,11,11,'2026-07-11','2026-07-14','Confirmed'),
(12,12,12,'2026-07-12','2026-07-15','Checked In'),
(13,13,13,'2026-07-13','2026-07-16','Checked Out'),
(14,14,14,'2026-07-14','2026-07-17','Cancelled'),
(15,15,15,'2026-07-15','2026-07-18','Pending'),
(16,16,16,'2026-07-16','2026-07-19','Confirmed'),
(17,17,17,'2026-07-17','2026-07-20','Checked In'),
(18,18,18,'2026-07-18','2026-07-21','Checked Out'),
(19,19,19,'2026-07-19','2026-07-22','Cancelled'),
(20,20,20,'2026-07-20','2026-07-23','Pending'),
(21,21,21,'2026-07-21','2026-07-24','Confirmed'),
(22,22,22,'2026-07-22','2026-07-25','Checked In'),
(23,23,23,'2026-07-23','2026-07-26','Checked Out'),
(24,24,24,'2026-07-24','2026-07-27','Cancelled'),
(25,25,25,'2026-07-25','2026-07-28','Pending'),
(26,26,26,'2026-07-26','2026-07-29','Confirmed'),
(27,27,27,'2026-07-27','2026-07-30','Checked In'),
(28,28,28,'2026-07-28','2026-07-31','Checked Out'),
(29,29,29,'2026-07-29','2026-08-01','Cancelled'),
(30,30,30,'2026-07-30','2026-08-02','Pending'),
(31,31,31,'2026-07-31','2026-08-03','Confirmed'),
(32,32,32,'2026-08-01','2026-08-04','Checked In'),
(33,33,33,'2026-08-02','2026-08-05','Checked Out'),
(34,34,34,'2026-08-03','2026-08-06','Cancelled'),
(35,35,35,'2026-08-04','2026-08-07','Pending'),
(36,36,36,'2026-08-05','2026-08-08','Confirmed'),
(37,37,37,'2026-08-06','2026-08-09','Checked In'),
(38,38,38,'2026-08-07','2026-08-10','Checked Out'),
(39,39,39,'2026-08-08','2026-08-11','Cancelled'),
(40,40,40,'2026-08-09','2026-08-12','Pending'),
(41,41,41,'2026-08-10','2026-08-13','Confirmed'),
(42,42,42,'2026-08-11','2026-08-14','Checked In'),
(43,43,43,'2026-08-12','2026-08-15','Checked Out'),
(44,44,44,'2026-08-13','2026-08-16','Cancelled'),
(45,45,45,'2026-08-14','2026-08-17','Pending'),
(46,46,46,'2026-08-15','2026-08-18','Confirmed'),
(47,47,47,'2026-08-16','2026-08-19','Checked In'),
(48,48,48,'2026-08-17','2026-08-20','Checked Out'),
(49,49,49,'2026-08-18','2026-08-21','Cancelled'),
(50,50,50,'2026-08-19','2026-08-22','Pending');

INSERT INTO Payments VALUES
(1,1,1800,'UPI','2026-07-01'),
(2,2,2500,'Credit Card','2026-07-02'),
(3,3,3200,'Debit Card','2026-07-03'),
(4,4,4500,'Cash','2026-07-04'),
(5,5,6500,'Net Banking','2026-07-05'),
(6,6,3800,'UPI','2026-07-06'),
(7,7,2200,'Credit Card','2026-07-07'),
(8,8,1500,'Debit Card','2026-07-08'),
(9,9,1900,'Cash','2026-07-09'),
(10,10,2700,'Net Banking','2026-07-10'),
(11,11,3400,'UPI','2026-07-11'),
(12,12,4800,'Credit Card','2026-07-12'),
(13,13,7000,'Debit Card','2026-07-13'),
(14,14,3900,'Cash','2026-07-14'),
(15,15,2300,'Net Banking','2026-07-15'),
(16,16,1600,'UPI','2026-07-16'),
(17,17,2000,'Credit Card','2026-07-17'),
(18,18,2800,'Debit Card','2026-07-18'),
(19,19,3600,'Cash','2026-07-19'),
(20,20,5000,'Net Banking','2026-07-20'),
(21,21,7200,'UPI','2026-07-21'),
(22,22,4000,'Credit Card','2026-07-22'),
(23,23,2400,'Debit Card','2026-07-23'),
(24,24,1700,'Cash','2026-07-24'),
(25,25,2100,'Net Banking','2026-07-25'),
(26,26,2900,'UPI','2026-07-26'),
(27,27,3700,'Credit Card','2026-07-27'),
(28,28,5200,'Debit Card','2026-07-28'),
(29,29,7400,'Cash','2026-07-29'),
(30,30,4200,'Net Banking','2026-07-30'),
(31,31,2500,'UPI','2026-07-31'),
(32,32,1800,'Credit Card','2026-08-01'),
(33,33,2200,'Debit Card','2026-08-02'),
(34,34,3000,'Cash','2026-08-03'),
(35,35,3900,'Net Banking','2026-08-04'),
(36,36,5400,'UPI','2026-08-05'),
(37,37,7600,'Credit Card','2026-08-06'),
(38,38,4300,'Debit Card','2026-08-07'),
(39,39,2600,'Cash','2026-08-08'),
(40,40,1900,'Net Banking','2026-08-09'),
(41,41,2300,'UPI','2026-08-10'),
(42,42,3100,'Credit Card','2026-08-11'),
(43,43,4000,'Debit Card','2026-08-12'),
(44,44,5600,'Cash','2026-08-13'),
(45,45,7800,'Net Banking','2026-08-14'),
(46,46,4500,'UPI','2026-08-15'),
(47,47,2700,'Credit Card','2026-08-16'),
(48,48,2000,'Debit Card','2026-08-17'),
(49,49,2400,'Cash','2026-08-18'),
(50,50,3200,'Net Banking','2026-08-19');

/* Part 2: Basic SQL Queries */
/* select */

select * from hotel;

select * from customers;

select * from staff;

select  * from rooms;

SELECT * FROM Bookings;

select * from payments;

/* where */

SELECT * FROM Rooms
WHERE status='Available';

SELECT * FROM Rooms
WHERE room_type='Suite';

SELECT * FROM Customers
WHERE city='Hyderabad';

SELECT * FROM Payments
WHERE amount>5000;

/* ORDER BY */

SELECT * FROM Rooms
ORDER BY price ASC;

SELECT * FROM Rooms
ORDER BY price DESC;

SELECT * FROM Customers
ORDER BY customer_name;

SELECT * FROM hotel
ORDER BY hotel_name;

/* LIMIT */

SELECT * FROM Customers
LIMIT 10;

/* DISTINCT */

SELECT DISTINCT city
FROM Customers;

SELECT DISTINCT room_type
FROM Rooms;

/* LIKE */ 

SELECT *
FROM Customers
WHERE customer_name LIKE 'A%';

SELECT *
FROM Customers
WHERE customer_name LIKE '%a';

SELECT *
FROM Customers
WHERE customer_name LIKE '%a%';

/* BETWEEN */

SELECT *
FROM Rooms
WHERE price BETWEEN 2000 AND 5000;

/* IN */ 

SELECT *
FROM Rooms
WHERE room_type IN('AC','Suite');

/* IS NULL */

SELECT *
FROM Customers
WHERE email IS NULL;

/* Part 3: Aggregate Functions  */

/* COUNT */

SELECT COUNT(*) FROM Customers;

SELECT COUNT(*) FROM Rooms;

/* SUM */

SELECT SUM(amount)
FROM Payments;

/* SUM */

SELECT AVG(price)
FROM Rooms;

SELECT AVG(amount)
FROM Payments;

/* MAX */ 

SELECT MAX(price)
FROM Rooms;

SELECT MAX(amount)
FROM Payments;

/* MIN */

SELECT MIN(price)
FROM Rooms;

SELECT MIN(amount)
FROM Payments;

/* Part 4: GROUP BY and HAVING   */

/*  GROUP BY */ 

SELECT city,
COUNT(*)
FROM Customers
GROUP BY city;

SELECT room_type,
COUNT(*)
FROM Rooms
GROUP BY room_type;

SELECT payment_mode,
SUM(amount)
FROM Payments
GROUP BY payment_mode;

/*  HAVING */

SELECT payment_mode,
SUM(amount)
FROM Payments
GROUP BY payment_mode
HAVING SUM(amount)>30000;

SELECT city,
COUNT(*)
FROM Customers
GROUP BY city
HAVING COUNT(*)>2;

/* Part 5: Joins */

/* INNER JOIN */

SELECT customer_name,
room_no,
check_in,
check_out
FROM Customers
INNER JOIN Bookings
ON Customers.customer_id=Bookings.customer_id
INNER JOIN Rooms
ON Rooms.room_id=Bookings.room_id;

/* LEFT JOIN */

SELECT customer_name,
booking_status
FROM Customers
LEFT JOIN Bookings
ON Customers.customer_id=Bookings.customer_id;

/* RIGHT JOIN */ 

SELECT room_no,
booking_status
FROM Rooms
RIGHT JOIN Bookings
ON Rooms.room_id=Bookings.room_id;

/* CROSS JOIN */  

SELECT customer_name,
room_type
FROM Customers
CROSS JOIN Rooms;

/* SELF JOIN */

SELECT A.staff_name,
B.staff_name
FROM Staff A
JOIN Staff B
ON A.staff_id<>B.staff_id;

/* Part 6: Subqueries  **/

/* Second Highest Payment */ 

SELECT MAX(amount)
FROM Payments
WHERE amount < (SELECT MAX(amount) FROM Payments);

/* Customers Spending Above Average */

SELECT * FROM Payments
WHERE amount > (SELECT AVG(amount) FROM Payments);

/* Most Booked Room */ 

SELECT room_id, COUNT(*) FROM Bookings
GROUP BY room_id
ORDER BY COUNT(*) DESC LIMIT 1;

/* • Highest paying customer  */

SELECT
    c.customer_name,
    p.amount
FROM Customers c
INNER JOIN Bookings b
ON c.customer_id = b.customer_id
INNER JOIN Payments p
ON b.booking_id = p.booking_id
WHERE p.amount = (
    SELECT MAX(amount)
    FROM Payments
);

/* Part 7: Views */

/* Create CustomerBooking view using Customers, Bookings and Rooms tables. */

CREATE VIEW CustomerBooking AS

SELECT customer_name,
room_no,
check_in,
check_out
FROM Customers
JOIN Bookings
ON Customers.customer_id=Bookings.customer_id
JOIN Rooms
ON Rooms.room_id=Bookings.room_id;

select * from customerbooking;

/* Part 8: Functions */ 

 /* CalculateGST(amount) */
 
 DELIMITER //
CREATE FUNCTION CalculateGST(amount DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
RETURN amount*0.18;
END//
DELIMITER ;
 
 SELECT CalculateGST(5000);
 
/* CalculateDiscount(amount) */

DELIMITER //
CREATE FUNCTION CalculateDiscount(amount DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
RETURN amount*0.10;
END//
DELIMITER ;

SELECT CalculateDiscount(5000);

/* Part 09: Transactions  */

START TRANSACTION;

UPDATE Rooms
SET status='Booked'
WHERE room_id=5;

INSERT INTO Bookings
VALUES
(51,5,5,'2026-08-20','2026-08-22','Confirmed');

COMMIT;

/* INDEXES */

CREATE INDEX idx_customer_name
ON Customers(customer_name);

CREATE INDEX idx_email
ON Customers(email);

CREATE INDEX idx_room_no
ON Rooms(room_no);

/* Part 11: Reports  */

/* Total Revenue  */

SELECT SUM(amount)
FROM Payments;

/* Monthly Revenue  */

SELECT MONTH(payment_date),
SUM(amount)
FROM Payments
GROUP BY MONTH(payment_date);

/*  Occupancy Rate  */

SELECT status,
COUNT(*)
FROM Rooms
GROUP BY status;

/* Top 10 Customers */

SELECT customer_name,
SUM(amount) AS TotalAmount
FROM Customers
JOIN Bookings
ON Customers.customer_id=Bookings.customer_id
JOIN Payments
ON Bookings.booking_id=Payments.booking_id
GROUP BY customer_name
ORDER BY TotalAmount DESC
LIMIT 10;

/* Most Booked Room */

SELECT room_id,
COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY room_id
ORDER BY TotalBookings DESC
LIMIT 1;

/* Available Rooms */

select * from rooms
where status = 'available';

/* Cancelled Bookings */

SELECT *
FROM Bookings
WHERE booking_status='Cancelled';

/* Average Stay Duration */

SELECT AVG(DATEDIFF(check_out,check_in))
FROM Bookings;

/* Highest Bill */

SELECT MAX(amount)
FROM Payments;

/* Lowest Bill  */
select min(amount) 
from payments;