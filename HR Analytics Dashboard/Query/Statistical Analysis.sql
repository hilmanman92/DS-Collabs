-- desc stats based on job level
-- agg using over()
with 
enc_satisfaction as
	(select
		EmployeeNumber,
		case JobSatisfaction
			when 'Low' then 1
			when 'Medium' then 2
			when 'High' then 3 
			when 'Very High' then 4
			else 0
		end as Enc_JobSatisfaction,
		case EnvironmentSatisfaction
			when 'Low' then 1
			when 'Medium' then 2
			when 'High' then 3 
			when 'Very High' then 4
			else 0
		end as Enc_EnvironmentSatisfaction,
		case RelationshipSatisfaction
			when 'Low' then 1
			when 'Medium' then 2
			when 'High' then 3 
			when 'Very High' then 4
			else 0
		end as Enc_RelationshipSatisfaction,
		case WorkLifeBalance
			when 'Bad' then 1
			when 'Good' then 2
			when 'Better' then 3 
			when 'Best' then 4
			else 0
		end as Enc_WorkLifeBalance
	from EmployeeAttrition)
select distinct
	emp.JobLevel,
	avg(emp.MonthlyIncome) over(partition by emp.JobLevel) as Average_Salary,
	avg(emp.Age) over(partition by emp.JobLevel) as Average_Age,
	avg(emp.TotalWorkingYears) over(partition by emp.JobLevel) as Average_TotalWorkingYears,
	avg(emp.YearsAtCompany) over(partition by emp.JobLevel) as Average_YearsAtCompany,
	avg(emp.YearsSinceLastPromotion) over(partition by emp.JobLevel) as Average_YearsSinceLastPromotion,
	avg(emp.PercentSalaryHike) over(partition by emp.JobLevel) as Average_PercentSalaryHike,
	avg(enc.Enc_WorkLifeBalance) over(partition by emp.JobLevel) as Average_WorkLifeBalance,
	avg(enc.Enc_EnvironmentSatisfaction) over(partition by emp.JobLevel) as Average_EnvSatisfaction,
	avg(enc.Enc_RelationshipSatisfaction) over(partition by emp.JobLevel) as Average_RelSatisfaction,
	avg(enc.Enc_JobSatisfaction) over(partition by emp.JobLevel) as Average_JobSatisfaction
from
	EmployeeAttrition emp
	join enc_satisfaction enc on emp.EmployeeNumber = enc.EmployeeNumber
order by
	Average_Salary;

-- desc stats based on department
-- agg using over()
with 
enc_satisfaction as
	(select
		EmployeeNumber,
		case JobSatisfaction
			when 'Low' then 1
			when 'Medium' then 2
			when 'High' then 3 
			when 'Very High' then 4
			else 0
		end as Enc_JobSatisfaction,
		case EnvironmentSatisfaction
			when 'Low' then 1
			when 'Medium' then 2
			when 'High' then 3 
			when 'Very High' then 4
			else 0
		end as Enc_EnvironmentSatisfaction,
		case RelationshipSatisfaction
			when 'Low' then 1
			when 'Medium' then 2
			when 'High' then 3 
			when 'Very High' then 4
			else 0
		end as Enc_RelationshipSatisfaction,
		case WorkLifeBalance
			when 'Bad' then 1
			when 'Good' then 2
			when 'Better' then 3 
			when 'Best' then 4
			else 0
		end as Enc_WorkLifeBalance
	from EmployeeAttrition)
SELECT DISTINCT
    emp.Department,
    AVG(emp.MonthlyIncome) OVER(PARTITION BY emp.Department) AS Average_Salary,
    AVG(emp.Age) OVER(PARTITION BY emp.Department) AS Average_Age,
    AVG(emp.TotalWorkingYears) OVER(PARTITION BY emp.Department) AS Average_TotalWorkingYears,
    AVG(emp.YearsAtCompany) OVER(PARTITION BY emp.Department) AS Average_YearsAtCompany,
    AVG(emp.YearsSinceLastPromotion) OVER(PARTITION BY emp.Department) AS Average_YearsSinceLastPromotion,
    AVG(emp.PercentSalaryHike) OVER(PARTITION BY emp.Department) AS Average_PercentSalaryHike,
    AVG(enc.Enc_WorkLifeBalance) OVER(PARTITION BY emp.Department) AS Average_WorkLifeBalance,
    AVG(enc.Enc_EnvironmentSatisfaction) OVER(PARTITION BY emp.Department) AS Average_EnvSatisfaction,
    AVG(enc.Enc_RelationshipSatisfaction) OVER(PARTITION BY emp.Department) AS Average_RelSatisfaction,
    AVG(enc.Enc_JobSatisfaction) OVER(PARTITION BY emp.Department) AS Average_JobSatisfaction
FROM
    EmployeeAttrition emp
JOIN
    enc_satisfaction enc ON emp.EmployeeNumber = enc.EmployeeNumber
ORDER BY
    Average_Salary;


-- desc stats based on department, joblevel, jobrole
-- agg using over()
WITH enc_satisfaction AS (
    SELECT
        EmployeeNumber,
        CASE JobSatisfaction
            WHEN 'Low' THEN 1
            WHEN 'Medium' THEN 2
            WHEN 'High' THEN 3 
            WHEN 'Very High' THEN 4
            ELSE 0
        END AS Enc_JobSatisfaction,
        CASE EnvironmentSatisfaction
            WHEN 'Low' THEN 1
            WHEN 'Medium' THEN 2
            WHEN 'High' THEN 3 
            WHEN 'Very High' THEN 4
            ELSE 0
        END AS Enc_EnvironmentSatisfaction,
        CASE RelationshipSatisfaction
            WHEN 'Low' THEN 1
            WHEN 'Medium' THEN 2
            WHEN 'High' THEN 3 
            WHEN 'Very High' THEN 4
            ELSE 0
        END AS Enc_RelationshipSatisfaction,
        CASE WorkLifeBalance
            WHEN 'Bad' THEN 1
            WHEN 'Good' THEN 2
            WHEN 'Better' THEN 3 
            WHEN 'Best' THEN 4
            ELSE 0
        END AS Enc_WorkLifeBalance
    FROM EmployeeAttrition
)
SELECT DISTINCT
    emp.Department,
    emp.JobLevel,
    emp.JobRole,
    AVG(emp.MonthlyIncome) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_Salary,
    AVG(emp.Age) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_Age,
    AVG(emp.TotalWorkingYears) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_TotalWorkingYears,
    AVG(emp.YearsAtCompany) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_YearsAtCompany,
    AVG(emp.YearsSinceLastPromotion) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_YearsSinceLastPromotion,
    AVG(emp.PercentSalaryHike) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_PercentSalaryHike,
    AVG(enc.Enc_WorkLifeBalance) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_WorkLifeBalance,
    AVG(enc.Enc_EnvironmentSatisfaction) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_EnvSatisfaction,
    AVG(enc.Enc_RelationshipSatisfaction) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_RelSatisfaction,
    AVG(enc.Enc_JobSatisfaction) OVER(PARTITION BY emp.Department, emp.JobLevel, emp.JobRole) AS Average_JobSatisfaction
FROM
    EmployeeAttrition emp
JOIN
    enc_satisfaction enc ON emp.EmployeeNumber = enc.EmployeeNumber
ORDER BY
    Average_Salary;

-- age distribution based on gender
SELECT
    Gender,
    COUNT(Gender) AS Total,
    SUM(CASE WHEN Age BETWEEN 15 AND 19 THEN 1 ELSE 0 END) AS [15-19],
    SUM(CASE WHEN Age BETWEEN 20 AND 24 THEN 1 ELSE 0 END) AS [20-24],
    SUM(CASE WHEN Age BETWEEN 25 AND 29 THEN 1 ELSE 0 END) AS [25-29],
    SUM(CASE WHEN Age BETWEEN 30 AND 34 THEN 1 ELSE 0 END) AS [30-34],
    SUM(CASE WHEN Age BETWEEN 35 AND 39 THEN 1 ELSE 0 END) AS [35-39],
    SUM(CASE WHEN Age BETWEEN 40 AND 44 THEN 1 ELSE 0 END) AS [40-44],
    SUM(CASE WHEN Age BETWEEN 45 AND 49 THEN 1 ELSE 0 END) AS [45-49],
    SUM(CASE WHEN Age BETWEEN 50 AND 54 THEN 1 ELSE 0 END) AS [50-54],
    SUM(CASE WHEN Age BETWEEN 55 AND 59 THEN 1 ELSE 0 END) AS [55-59],
    SUM(CASE WHEN Age >= 60 THEN 1 ELSE 0 END) AS [60+]
FROM
    EmployeeAttrition
GROUP BY
    Gender;

-- job involvement distribution based on job level
SELECT
	JobLevel,
	COUNT(JobLevel) Total,
	SUM(CASE WHEN JobInvolvement = 'Low' THEN 1 ELSE 0 END) AS [Low],
	SUM(CASE WHEN JobInvolvement = 'Medium' THEN 1 ELSE 0 END) AS [Medium],
	SUM(CASE WHEN JobInvolvement = 'High' THEN 1 ELSE 0 END) AS [High],
	SUM(CASE WHEN JobInvolvement = 'Very High' THEN 1 ELSE 0 END) AS [Very High]
FROM 
	EmployeeAttrition
WHERE
	YearsAtCompany > 10
GROUP BY
	JobLevel
ORDER BY
	2 DESC;

-- attrition rate based on jobrole
SELECT
    JobRole,
    COUNT(JobRole) AS Total_Employee,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Total_Attrition,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(JobRole)) AS Pct_Attrition
FROM 
    EmployeeAttrition
GROUP BY
    JobRole
ORDER BY
    4 DESC;

-- attrition rate based on business travel
SELECT
	BusinessTravel,
	COUNT(*) Total_Attrition,
	COUNT(BusinessTravel) * 100.0 / SUM(COUNT(BusinessTravel)) OVER() AS Pct_Attrition
FROM 
	EmployeeAttrition
WHERE
	Attrition = 'Yes'
GROUP BY
	BusinessTravel
ORDER BY
	2 DESC;

-- attrition rate based on marital status
SELECT
	MaritalStatus,
	COUNT(*) Total_Attrition,
	COUNT(MaritalStatus) * 100.0 / SUM(COUNT(MaritalStatus)) OVER() AS Pct_Attrition
FROM 
	EmployeeAttrition
WHERE
	Attrition = 'Yes'
GROUP BY
	MaritalStatus
ORDER BY
	2 DESC;

-- attrition rate based on overtime
SELECT
	OverTime,
	COUNT(*) Total_Attrition,
	COUNT(OverTime) * 100.0 / SUM(COUNT(OverTime)) OVER() AS Pct_Attrition
FROM 
	EmployeeAttrition
WHERE
	Attrition = 'Yes'
GROUP BY
	OverTime
ORDER BY
	2 DESC;

