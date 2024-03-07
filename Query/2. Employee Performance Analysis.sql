-- employee performance analysis
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

-- overtime proportion
SELECT
	OverTime, 
	COUNT(1) AS Total_Employee,
	CEILING(COUNT(1) * 100.0/SUM(COUNT(1)) OVER()) AS [PCT]
FROM EmployeeAttrition
GROUP BY OverTime;