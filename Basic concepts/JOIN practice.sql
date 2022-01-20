CREATE database JoinDemo;
USE JoinDemo;
CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);
CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);
INSERT INTO members(name)
VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

INSERT INTO committees(name)
VALUES('John'),('Mary'),('Amelia'),('Joe'); 

SELECT * FROM members;
SELECT * FROM committees;

SELECT 
    members.member_id,
    members.name, 
    committees.committee_id,   
    committees.name
FROM
    members 
      INNER JOIN committees
	ON members.name = committees.name;
    
SELECT 
    members.member_id,
    members.name, 
    committees.committee_id,   
    committees.name
FROM
    members 
      LEFT JOIN committees USING(name)
          WHERE committees.committee_id is NULL;
          
SELECT 
    members.member_id,
    members.name,
    committees.committee_id,   
    committees.name
FROM
    members 
      RIGHT JOIN committees USING(name);
      
SELECT 
    committees.committee_id,   
    committees.name
FROM
    members 
      RIGHT JOIN committees USING(name)
      WHERE members.member_id IS NULL;
      
SELECT 
    members.member_id,
    members.name,
    committees.committee_id,   
    committees.name
FROM
   committees 
      CROSS JOIN  members;
      
      SELECT 
    members.member_id,
    members.name,
    committees.committee_id,   
    committees.name
FROM
   members
      CROSS JOIN  committees;