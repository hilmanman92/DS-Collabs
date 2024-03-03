-- salary stats
with 
salarystats as (
    select
        JobLevel,
        avg(MonthlyIncome) as Avg_Salary,
        ceiling(stdev(MonthlyIncome)) as StDev_Salary
    from 
        EmployeeAttrition
    group by 
        JobLevel
),

-- outlier
outlierstats as (
    select
        emp.JobLevel,
        round(Avg_Salary - (2*(StDev_Salary)),2) as LowerBoundSalary,
        round(Avg_Salary + (2*(StDev_Salary)),2) as UpperBoundSalary,
        st.Avg_Salary,
        st.StDev_Salary
    from
        EmployeeAttrition emp 
    join 
        salarystats st on emp.JobLevel = st.JobLevel
    group by
        emp.JobLevel, Avg_Salary, StDev_Salary
)

-- paid fairness
select
	emp.*,
	ou.Avg_Salary,
	ou.StDev_Salary,
	ou.LowerBoundSalary,
	ou.UpperBoundSalary,
	case
		when emp.MonthlyIncome < ou.Avg_Salary and emp.MonthlyIncome < ou.LowerBoundSalary then 'Underpaid'
		when emp.MonthlyIncome > ou.Avg_Salary and emp.MonthlyIncome > ou.UpperBoundSalary then 'Overpaid'
		else 'Fairpaid'
		end as PaidFairness,
	case
		when emp.MonthlyIncome < ou.Avg_Salary and emp.MonthlyIncome < ou.LowerBoundSalary then round(((MonthlyIncome - LowerBoundSalary)/MonthlyIncome) * 100,2)
		when emp.MonthlyIncome > ou.Avg_Salary and emp.MonthlyIncome > ou.UpperBoundSalary then round(((MonthlyIncome - UpperBoundSalary)/MonthlyIncome) * 100,2)
		else 0
		end as PercentageFairness
	from
		EmployeeAttrition emp 
		join 
		outlierstats ou on emp.JobLevel = ou.JobLevel