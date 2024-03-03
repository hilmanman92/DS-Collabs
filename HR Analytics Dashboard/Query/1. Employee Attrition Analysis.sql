-- attrition rate analysis
-- attrition rate based on jobrole
SELECT
    JobRole,
    COUNT(JobRole) AS Total_Employee,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Total_Attrition,
	CEILING((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(JobRole))) AS [Attrition Rate]
FROM 
    EmployeeAttrition
GROUP BY
    JobRole
ORDER BY
    4 DESC;

-- attrition rate based on joblevel
SELECT
    JobLevel,
    COUNT(JobLevel) AS Total_Employee,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Total_Attrition,
    CEILING(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(JobRole)) AS [Attrition Rate]
FROM 
    EmployeeAttrition
GROUP BY
    JobLevel
ORDER BY
    4 DESC;

-- attrition rate based on business travel
SELECT
	BusinessTravel,
	COUNT(*) Total_Attrition,
	CEILING(COUNT(BusinessTravel) * 100.0 / SUM(COUNT(BusinessTravel)) OVER()) AS [Attrition Rate]
FROM 
	EmployeeAttrition
WHERE
	Attrition = 'Yes'
GROUP BY
	BusinessTravel
ORDER BY
	2 DESC;

-- attrition rate based on gender
SELECT
	Gender,
	COUNT(*) Total_Attrition,
	CEILING(COUNT(Gender) * 100.0 / SUM(COUNT(Gender)) OVER()) AS [Attrition Rate]
FROM 
	EmployeeAttrition
WHERE
	Attrition = 'Yes'
GROUP BY
	Gender
ORDER BY
	2 DESC;

-- attrition rate based on marital status
SELECT
	MaritalStatus,
	COUNT(*) Total_Attrition,
	CEILING(COUNT(MaritalStatus) * 100.0 / SUM(COUNT(MaritalStatus)) OVER()) AS [Attrition Rate]
FROM 
	EmployeeAttrition
WHERE
	Attrition = 'Yes'
GROUP BY
	MaritalStatus
ORDER BY
	2 DESC;

-- attrition rate based on education
SELECT
	Education,
	COUNT(*) Total_Attrition,
	CEILING(COUNT(Education) * 100.0 / SUM(COUNT(Education)) OVER()) AS [Attrition Rate]
FROM 
	EmployeeAttrition
WHERE
	Attrition = 'Yes'
GROUP BY
	Education
ORDER BY
	2 DESC;