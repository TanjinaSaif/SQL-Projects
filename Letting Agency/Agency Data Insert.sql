use company;

insert into staff (staff_id,s_name,funct,monthly_sal)
VALUES (1,'Jessica','Secretery',50000),(2,'Roger','Manager',80000),
(3,'Kim','Accountant',70000),(4,'Sanem','Secretery',50000),(5,'Deniz','Manager',80000),
(6,'Candace','Accountant',70000),(7,'Justin','Manager',70000),(8,'Tania','Manager',80000),
(9,'Sammy','Manager',80000),(10,'Can','Manager',80000),(11,'Keren','Manager',80000),
(12,'Steven','Manager',80000),(13,'Abby','Accountant',60000),(14,'Mosh','Manager',80000),
(15,'Zeffry','Secretery',80000);

insert into city(area_no,area_name,head_staff) VALUES
(1,'Ginza',2),(2,'Shinjuki',14),(3,'Shibuya',5),(4,'Odaiba',7),(5,'Ueno',12);

insert into property(p_id,address,type,monthly_rate,deposit,area) VALUES
(1,'43,Park Street','House',40000,1500000,"Ginza"),
(2,'3,Sea Park Street','House',40000,1500000,"Ginza"),
(3,'45, Free School Street','House',30000,500000,"Ginza"),
(4,'xyz Street','House',50000,900000,"Ginza"),
(5,'52,Ring Road','Flat',70000,400000,"Ginza"),
(6,'80,Park Street','Flat',40000,1500000,"Shinjuki"),
(7,'90,Park Street','Flat',40000,1500000,"Shinjuki"),
(8,'80,Park Street','Garage',700,15000,"Shinjuki"),
(9,'67,Park Height Street','House',40000,1500000,"Shinjuki"),
(10,'Delly Street','Flat',9000,1500000,"Shibuya"),
(11,'123,Delly Street','House',9000,1500000,"Shibuya"),
(12,'Ghost Street','Flat',9000,1500000,"Shibuya"),
(13,'Abc Street','Garage',9000,40000,"Shibuya"),
(14,'South Street','Flat',9000,1500000,"Shibuya"),
(15,'South park','Flat',9000,1500000,"Shibuya"),
(16,'Delly Street','House',9000,1500000,"Shibuya"),
(17,'Exe Street','Flat',4000,700000,"Ueno"),
(18,'TSL Street','Flat',4000,700000,"Ueno"),
(19,'New Street','House',14000,1700000,"Ueno"),
(20,'Avenue Street','Garage',4000,60000,"Ueno"),
(21,'Rxe Street','Garage',2000,30000,"Odaiba"),
(22,'Elly Street','Flat',4000,700000,"Odaiba");

insert into landlord(name,address,property)VALUES
('Kim V','abc street',1),('Kim V','abc street',2),('Kim V','abc street',3),('Kim V','abc street',4),
('Venessa ','Park street',5),('Veronica','anx street',6),('Kenny','78 street',7),('Martha A','123 street',8),
('Moe San','Kyoto',9),('Moe San','Kyoto',10),('Moe San','Kyoto',11),('Moe San','Kyoto',12),('Moe San','Kyoto',13),
('Sutan','tokyo',14),('Sutan','tokyo',15),('Sutan','tokyo',16),('Sutan','tokyo',17),('Sutan','tokyo',18),
('Yamada','Xin Sreet',19),('Yamada','Xin Sreet',20),('Yamada','Xin Sreet',21),('Yamada','Xin Sreet',22);

insert into tenant(t_id,name,cur_address,phone)VALUES
(1,'Mousy','123, xyz street','918765432'),(2,'Marie B','123, xyz street','918765492'),
(3,'Tex V','345, xyz street','918065432'),(4,'Jessie','13, park street','915765432'),
(5,'Riley','123 street','918765232'),(6,'Xen','Park street','918765422'),
(7,'Mariam','32, green street','918766432');

insert into lease(lease_no,start_date,duration_months,property)VALUES
(1,'1-8-2022',24,1),(2,'1-1-2022',12,2),(3,'2-8-2022',24,3),(4,'1-8-2022',24,4),
(5,'1-9-2022',20,5),(6,'1-15-2022',14,6),(7,'1-8-2022',24,7);

insert into rented_property(tenent,property,lease)VALUES
(1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7);

insert into available_property(property)VALUES
(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22);