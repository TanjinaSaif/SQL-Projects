create database Demo;
use DEmo;

CREATE table Person(
     Name varchar(30), age int(2),
     date_of_birth date
     );
describe person;
insert into person values ('Tanjina',21,'1999-06-25');
insert into person values('Moushan',26,'1994-04-19');

Select * from person;
Select curdate();
Select Round((datediff('2020-10-07','1994-04-19')/365 ),0) as age ;

Select  Name, Round((datediff('2020-10-07',date_of_birth) /365),0) as age from person;

Select Round((datediff('2020-10-25','2020-08-12')),0) as valid_day;

Select Round((datediff(curdate(),'1994-04-19')/365),0) as age ;

