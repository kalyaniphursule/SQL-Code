--LTRIM, RTRIM

Use [SQL-prac]

create table EmpError(
EMPID  Varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

insert into EmpError values
('1001   ','Jimbo','Halbert'),
('  1002','Pamela','Beasely'),
('1003','TOby','Flenderson-Fired')

drop table EmpError;
select * from EmpError;


select EMPID , TRIM(empID) as Trim_ID from EmpError

select EMPid, LTRIM(empid) as ltrim_ID from emperror

select EMPid, RTRIM(empid) as rtrim_ID from emperror

-- using replace
select * , replace(lastname,'-Fired','') from emperror

-- using substring

select SUBSTRING(firstname,1,3) from emperror;

-- fuzzy matching using substring

select er.firstname, SUBSTRING(er.firstname,1,3),ed.FirstName ,SUBSTRING(ed.firstname,1,3)
from EmployeeDemographics ed join emperror er 
on SUBSTRING(ed.firstname,1,3)=SUBSTRING(er.firstname,1,3)


-- upper, lower
select upper(firstname), lower (lastname) from emperror