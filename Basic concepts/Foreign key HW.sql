CREATE DATABASE Student_Info;
use Student_Info;

CREATE TABLE Session(
	SessionId INT AUTO_INCREMENT PRIMARY KEY,
    Session INT(10) NOT NULL
);
CREATE TABLE Student(
	SL INT AUTO_INCREMENT PRIMARY KEY,
    Name varchar(100) not null,
    SessionId INT,
    CONSTRAINT fk_category
    FOREIGN KEY (SessionId) 
        REFERENCES Session(SessionId)
);
INSERT INTO Session(Session) VALUES ('2018'),('2020');
Select * from Session;
INSERT INTO Student(Name, SessionId)
VALUES
    ('Tanjina Saif', 1), 
    ('Rajiul Beg',2);
    
    INSERT INTO Student(name, sessionId)
VALUES
    ('Karim Sonu', 3);
    
    UPDATE Session
SET SessionId = 47
WHERE SessionId = 1;

ALTER TABLE Student
DROP FOREIGN KEY fk_category;

alter table Student 
add constraint fk1_category
foreign key (SessionId)
references Session (SessionId)
on delete cascade
ON UPDATE cascade;

select * from Session;
select * from Student;

UPDATE Session
SET sessionId = 47
WHERE sessionId = 1;
UPDATE Session
SET sessionId = 74
WHERE sessionId = 2;

select * from Session;

DELETE FROM Session
WHERE sessionId = 3;
 select * from Student;
 
 SHOW CREATE TABLE Student;







   

