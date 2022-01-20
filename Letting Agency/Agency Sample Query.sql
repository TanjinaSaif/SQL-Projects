use company;

-- Display all the staffs of the company
select * from staff;

-- Show data of all the managers of the company
select * from staff 
where funct like 'Manager';

-- Display the managers who are also head staff of an area
select staff_id,s_name, funct , area_name
from staff inner join city
on staff.staff_id = city.head_staff;

-- Display the total no. of distinct Landlords 
select count(distinct name) as property_owners from landlord;

-- Display Total no, of properties each landlord owns
select name, count(name) total_properties
from landlord
group by name;

-- Display the landlords who have more than one property
select name, count(name) total_properties
from landlord
group by name
having count(name)>1;

-- Display the property which is leased for the longest/maximum duration
select * from lease 
where duration_months in 
( select max(duration_months) from lease);

-- Show the number of properties available in each area
select area , count(area) total_properties
from property
group by area;

-- Show the number 'House' type of properties available in each area
select area , count(type) total_Houses
from property where type like 'House'
group by area;

-- Display the landlords who have property in Ginza area
select name , property from landlord
where property in ( select p_id from property where area like 'Ginza');
