-- overview database
select top 5 * from EmployeeAttrition;

-- proporsi setiap department
select Department, EducationField, COUNT(1) as TotalEmployee 
from EmployeeAttrition
group by Department, EducationField
order by 3 desc;

-- proporsi setiap JobRole
select JobRole, Count(1) as TotalEmployee
from EmployeeAttrition
group by JobRole
order by 2 desc;

-- proporsi gender
select Gender, count(1) as TotalEmployee
from EmployeeAttrition
group by Gender
order by 2 desc;

-- proporsi marital status
select MaritalStatus, count(1) as TotalEmployee
from EmployeeAttrition
group by MaritalStatus
order by 2 desc;

-- proporsi education
select Education, count(1) as TotalEmployee
from EmployeeAttrition
group by Education
order by 1;

-- proporsi usia
select Education, count(1) as TotalEmployee
from EmployeeAttrition
group by Education
order by 1;

-- average setiap level jabatan
select Department, JobLevel, AVG(MonthlyIncome) as Avg_Salary
from EmployeeAttrition
group by Department, JobLevel
order by 1 asc