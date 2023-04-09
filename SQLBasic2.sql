-- Script for SelectTOPN rows from SSMS

Use [SQL-prac] ;

Select * from  [SQL-prac]..EmployeeDemographics

Select * from  [SQL-prac]..EmployeeSalary

Select  Top (5) EmployeeID,FirstName,Age from [SQL-prac]..EmployeeDemographics

select max(Age) from EmployeeDemographics

select count(*) from EmployeeDemographics

select Min(age) from EmployeeDemographics;

select max(age),min(age),AVG(age) from EmployeeDemographics
------------

------------ Partition By

select FirstName, LastName,Salary ,count(gender) over(partition by gender)
from EmployeeDemographics demo join EmployeeSalary sal on demo.EmployeeID=sal.EmployeeID


select FirstName, LastName,Salary ,count(gender) 
from EmployeeDemographics demo join EmployeeSalary sal on demo.EmployeeID=sal.EmployeeID
group by FirstName, LastName,Salary


select gender,count(gender) 
from EmployeeDemographics ed join EmployeeSalary es 
on ed.EmployeeID=es.EmployeeID
group by gender

-------------------
--CTE : Common Table Expression, also called as with query
-- CTE is not stored in database anywhere
-------------------

With CTE_Emp as 
(select FirstName,LastName,Salary , count(gender) over (Partition by gender) as TotalGenderwise,
Avg(Salary) over (Partition by gender) as AvgSal
from EmployeeDemographics ed join EmployeeSalary es 
on ed.EmployeeID=es.EmployeeID
)
Select * from CTE_Emp;