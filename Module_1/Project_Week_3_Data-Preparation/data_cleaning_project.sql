CREATE DATABASE  project_3;
use project_3;
-- Main table
select * from project_3_cleaning_data;


-- Job title, annual income and experience relationship in all countries:

select title as "Job Title", 
							round(avg(total_yearly_compensation),0) as "Avg_Annual_Income", 
                            round(avg(base_salary),0) as "Avg_Annual_Base_Salary", 
							round(avg(bonus),0) as "Avg_Annual_Bonus", 
                            round(avg(stock_grant_value),0) as "Avg_Annual_Stock_Value", 
                            round(avg(years_of_experience),0) as "Avg_Experience",
                            count( title) as "Number_of_Employee"
from project_3_cleaning_data
group by title
order by round(avg(total_yearly_compensation),0) desc;

-- Gender, race, experience, income distribution for "Software Engineer" position

select race as Race, 
       count(case when gender = 'Female' then 1 end) as Number_of_Women_Employee, 
       round(avg(case when gender = 'Female' then total_yearly_compensation end),0) as Women_Avg_Income, 
	   round(avg(case when gender = 'Female' then years_of_experience end),0) as Women_Avg_Experience, 
       count(case when gender = 'Male' then 1 end) as Number_of_Men_Employee, 
       round(avg(case when Gender = 'Male' then total_yearly_compensation end),0) as Men_Avg_Gross_Income,
	   round(avg(case when gender = 'Male' then years_of_experience end),0) as Men_Avg_Experience 
from project_3_cleaning_data
where title = 'Software Engineer'
group by race
order by race asc;

-- gender, race, experience, income distribution for countries

select race, country, gender, count(*) as Number_of_Employee, 
					  round(avg(total_yearly_compensation),0) as Avg_Annual_Income,
                      round(avg(years_of_experience),0) as Avg_Experience
from project_3_cleaning_data
group by race, country, gender
having gender = 'Female'

union

select race, country, gender, count(*) as Count, 
							  round(avg(total_yearly_compensation),0) as Avg_Annual_Income,
							  round(avg(years_of_experience),0) as Avg_Experience
from project_3_cleaning_data
group by race, country, gender
having gender = 'Male' 
order by number_of_employee desc;




-- number of employees for "Software Engineer" and their salary information in the companies. Number of countries that companies have employees.

select distinct company_name as "Companies", 
				count(title) as "Number_of_Employee", 
                round(avg(total_yearly_compensation),0) as "Avg_Gross_Income",
                count(distinct country) as "Number_of_Countries"
from project_3_cleaning_data
where title = "Software Engineer"
group by company_name
order by count(title) desc;

-- education level information for Software Engineer

select distinct education as "Education_Level", 
				count(title) as "Number_of_Employee", 
                round(avg(total_yearly_compensation),0) as "Avg_Gross_Income"
                -- count(distinct country)
from project_3_cleaning_data
where title = "Software Engineer" 
group by education
order by education asc;


-- race information for "Software Engineers"
select distinct race as "Race", 
				count(title) as "Number_of_Employee", 
                round(avg(total_yearly_compensation),0) as "Avg_Gross_Income",
                count(distinct country)
from project_3_cleaning_data
where title = "Software Engineer" -- and country = "USA"
group by race
order by race asc;







