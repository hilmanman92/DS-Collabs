WITH
env AS (
    SELECT
        EnvironmentSatisfaction,
        COUNT(EnvironmentSatisfaction) AS Total_EnvironmentSatisfaction,
		COUNT(EnvironmentSatisfaction) * 100.0 / SUM(COUNT(*)) OVER() AS EnvironmentSatisfaction_Pct
    FROM 
        EmployeeAttrition
    GROUP BY
        EnvironmentSatisfaction
),
jobs AS (
    SELECT
        JobSatisfaction,
        COUNT(JobSatisfaction) AS Total_JobSatisfaction,
		COUNT(JobSatisfaction) * 100.0 / SUM(COUNT(*)) OVER() AS JobSatisfaction_Pct
    FROM 
        EmployeeAttrition
    GROUP BY
        JobSatisfaction
),
rels AS (
    SELECT
        RelationshipSatisfaction,
        COUNT(RelationshipSatisfaction) AS Total_RelationshipSatisfaction,
		COUNT(RelationshipSatisfaction) * 100.0 / SUM(COUNT(*)) OVER() AS RelationshipSatisfaction_Pct
    FROM 
        EmployeeAttrition
    GROUP BY
        RelationshipSatisfaction
)

SELECT 
    env.EnvironmentSatisfaction,
    env.Total_EnvironmentSatisfaction,
	env.EnvironmentSatisfaction_Pct,
	rels.Total_RelationshipSatisfaction,
    rels.RelationshipSatisfaction_Pct,
    jobs.Total_JobSatisfaction,
	jobs.JobSatisfaction_Pct
FROM 
    env
JOIN jobs ON env.EnvironmentSatisfaction = jobs.JobSatisfaction
JOIN rels ON env.EnvironmentSatisfaction = rels.RelationshipSatisfaction
ORDER BY
    CASE env.EnvironmentSatisfaction
        WHEN 'Very High' THEN 1
        WHEN 'High' THEN 2
        WHEN 'Medium' THEN 3
        WHEN 'Low' THEN 4
		ELSE 5
	END;

-- work-life balance
SELECT
	WorkLifeBalance,
	COUNT(WorkLifeBalance) AS Total_WorkLifeBalance,
	COUNT(WorkLifeBalance) * 100.0 / SUM(COUNT(*)) OVER() AS WorkLifeBalance_Pct
FROM 
    EmployeeAttrition
GROUP BY
    WorkLifeBalance;
