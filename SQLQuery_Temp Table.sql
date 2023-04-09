Use [SQL-prac];

--TEMP TABLE

create Table #tempEMP AS  EmployeeDemographics  ; --<== Doesn't works

select * into #tempEMP from EmployeeDemographics where Gender='Female';
select * from #tempEMP;

drop table #tempEMP
--------------

SELECT * INTO TableC FROM EmployeeDemographics WHERE 0 > 1

select * from TableC

drop table if Exists TableC
--------------------