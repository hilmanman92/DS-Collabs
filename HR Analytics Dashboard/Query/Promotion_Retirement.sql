select top 5 *
from EmployeeAttrition;

-- total employee in each department
select 
	Department, 
	COUNT(1) as Total_Employee
from 
	EmployeeAttrition
group by 
	Department
order by 
	2 desc;

-- how many employee has overtime in each department
select 
	Department,
	JobRole, 
	count(OverTime) as Overtime
from 
	EmployeeAttrition
group by 
	Department, JobRole
order by 
	3 desc;

-- avg salary in each department
select 
	Department, 
	AVG(MonthlyIncome) Average_Income
from 
	EmployeeAttrition
group by 
	Department;

-- attrition / retirement / resignment
select 
	*
from 
	EmployeeAttrition
where
	OverTime = 'Yes'
	and Department in ('Sales','Research & Development')
	and TotalWorkingYears > 5
	and WorkLifeBalance = 'Bad';

select max(YearsAtCompany), min(YearsAtCompany)
from EmployeeAttrition;

select *
from EmployeeAttrition
where JobInvolvement in ('High','Very High')
and JobSatisfaction in ('Low','Medium')
and JobLevel in ('Staff', 'Associate')
and YearsAtCompany >= 5;

select COUNT(DISTINCT TrainingTimesLastYear), COUNT(DISTINCT YearsInCurrentRole)
from EmployeeAttrition

select DISTINCT YearsInCurrentRole
from EmployeeAttrition
order by 1;

select DISTINCT TrainingTimesLastYear
from EmployeeAttrition
order by 1;