--Script for groupby, order by from SSMS

use [SQL-prac];

select * from EmployeeDemographics;

select distinct gender from EmployeeDemographics;

select Age,Gender from EmployeeDemographics
group by Age,Gender;

select Gender , count(employeeid) from EmployeeDemographics
group by Gender;

select Gender, COUNT(Age) from EmployeeDemographics
where age>31
group by gender;


select gender , count(age) as Emp_age from EmployeeDemographics
where age>31
group by gender
order by Emp_age desc;



select * from EmployeeDemographics;

select * from EmployeeDemographics
order by 5,4;