-- desc stats based on department
WITH 
enc_satisfaction as
	(select
		EmployeeNumber,
		CASE JobSatisfaction
			WHEN 'Low' then 1
			WHEN 'Medium' then 2
			WHEN 'High' then 3 
			WHEN 'Very High' then 4
			ELSE 0
		END AS Enc_JobSatisfaction,
		CASE EnvironmentSatisfaction
			WHEN 'Low' then 1
			WHEN 'Medium' then 2
			WHEN 'High' then 3 
			WHEN 'Very High' then 4
			ELSE 0
		END AS Enc_EnvironmentSatisfaction,
		CASE RelationshipSatisfaction
			WHEN 'Low' then 1
			WHEN 'Medium' then 2
			WHEN 'High' then 3 
			WHEN 'Very High' then 4
			ELSE 0
		END AS Enc_RelationshipSatisfaction,
		CASE WorkLifeBalance
			WHEN 'Bad' then 1
			WHEN 'Good' then 2
			WHEN 'Better' then 3 
			WHEN 'Best' then 4
			ELSE 0
		END AS Enc_WorkLifeBalance
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

-- desc stats based on jobrole
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

-- desc stats based on joblevel
WITH 
enc_satisfaction as
	(select
		EmployeeNumber,
		CASE JobSatisfaction
			WHEN 'Low' then 1
			WHEN 'Medium' then 2
			WHEN 'High' then 3 
			WHEN 'Very High' then 4
			ELSE 0
		END AS Enc_JobSatisfaction,
		CASE EnvironmentSatisfaction
			WHEN 'Low' then 1
			WHEN 'Medium' then 2
			WHEN 'High' then 3 
			WHEN 'Very High' then 4
			ELSE 0
		END AS Enc_EnvironmentSatisfaction,
		CASE RelationshipSatisfaction
			WHEN 'Low' then 1
			WHEN 'Medium' then 2
			WHEN 'High' then 3 
			WHEN 'Very High' then 4
			ELSE 0
		END AS Enc_RelationshipSatisfaction,
		CASE WorkLifeBalance
			WHEN 'Bad' then 1
			WHEN 'Good' then 2
			WHEN 'Better' then 3 
			WHEN 'Best' then 4
			ELSE 0
		END AS Enc_WorkLifeBalance
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

