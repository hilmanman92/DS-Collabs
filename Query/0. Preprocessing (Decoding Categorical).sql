-- replace value pada categorical feature

-- education
update EmployeeAttrition
set Education = 
	case 
		when Education = 1 then 'Below College'
		when Education = 2 then 'College'
		when Education = 3 then 'Bachelor'
		when Education = 4 then 'Master'
		when Education = 5 then 'Doctor'
		else Education
	end;

update EmployeeAttrition
set JobLevel =
    case
        when JobLevel = 1 then 'Staff'
        when JobLevel = 2 then'Associate'
        when JobLevel = 3 then 'Senior Associate'
        when JobLevel = 4 then 'Manager'
        when JobLevel = 5 then 'Senior Manager'
        else JobLevel 
    end;

update EmployeeAttrition
set JobInvolvement =
	case
		when JobInvolvement = 1 then 'Low'
		when JobInvolvement = 2 then 'Medium'
		when JobInvolvement = 3 then 'High'
		when JobInvolvement = 4 then 'Very High'
		else JobInvolvement
	end;

update EmployeeAttrition
set JobSatisfaction =
	case
		when JobSatisfaction = 1 then 'Low'
		when JobSatisfaction = 2 then 'Medium'
		when JobSatisfaction = 3 then 'High'
		when JobSatisfaction = 4 then 'Very High'
		else JobSatisfaction
	end;

update EmployeeAttrition
set RelationshipSatisfaction =
	case
		when RelationshipSatisfaction = 1 then 'Low'
		when RelationshipSatisfaction = 2 then 'Medium'
		when RelationshipSatisfaction = 3 then 'High'
		when RelationshipSatisfaction = 4 then 'Very High'
		else RelationshipSatisfaction
	end;

update EmployeeAttrition
set EnvironmentSatisfaction =
	case
		when EnvironmentSatisfaction = 1 then 'Low'
		when EnvironmentSatisfaction = 2 then 'Medium'
		when EnvironmentSatisfaction = 3 then 'High'
		when EnvironmentSatisfaction = 4 then 'Very High'
		else EnvironmentSatisfaction
	end;

update EmployeeAttrition
set PerformanceRating = 
	case 
		when PerformanceRating = 1 then 'Low'
		when PerformanceRating = 2 then 'Good'
		when PerformanceRating = 3 then 'Excellent'
		when PerformanceRating = 4 then 'Outstanding'
		else PerformanceRating
	end;

update EmployeeAttrition
set WorkLifeBalance =
	case
		when WorkLifeBalance = 1 then 'Bad'
		when WorkLifeBalance = 2 then 'Good'
		when WorkLifeBalance = 3 then 'Better'
		when WorkLifeBalance = 4 then 'Best'
		else WorkLifeBalance
	end;