SELECT * FROM employee_review;

-- Selecting unique values  from work life balance column
SELECT DISTINCT WORK_LIFE_BALANCE FROM employee_review;

-- Finding the average and rounding up the value
SELECT ROUND(AVG(WORK_LIFE_BALANCE), 0) FROM employee_review;

-- Updating the table, replacing the null values with the average value
UPDATE employee_review
SET WORK_LIFE_BALANCE = 4 WHERE WORK_LIFE_BALANCE IS NULL;  


-- Selecting unique values salary_and_benefits from  column
SELECT DISTINCT salary_and_benefits FROM employee_review;

-- Finding the average and rounding up the value
SELECT ROUND(AVG(Salary_and_benefits), 0) FROM employee_review;

-- Updating the table, replacing the null values with the average value
UPDATE employee_review
SET salary_and_benefits = 3 WHERE salary_and_benefits IS NULL;


--Finding 3 job titles in the Software development dept that have a work_life_balance rating greater than 4
--salary_and_benefits rating greater than 4.5 

SELECT DISTINCT TOP 3 TITLE FROM employee_review WHERE WORK_LIFE_BALANCE > 4 AND
salary_and_benefits > 4.5 AND DEPARTMENT = 'SOFTWARE DEVELOPMENT DEPARTMENT';

 --create a new column that specifies everything greater than 4 for the whole qualities as 'excellent', 
 --having atleast two qualities greater than 3 as 'Good' and everyother thing as 'poor'


SELECT *, CASE 
WHEN OVERALL_RATING > 4 
AND work_life_balance > 4 
AND skill_development  > 4
AND salary_and_benefits > 4 
AND job_security  > 4
AND career_growth  > 4
AND work_satisfaction > 4 
THEN 'Excellent' 

WHEN OVERALL_RATING > 4 
AND work_life_balance > 4 
AND skill_development  > 4 OR 
OVERALL_RATING > 4
AND work_life_balance > 4 
AND job_security  > 4 OR
 job_security  > 4
AND career_growth  > 4
AND work_satisfaction > 4 
THEN 'Good'

ELSE 'Poor'

END AS REMARK FROM EMPLOYEE_REVIEW;


-- Adding a new column to the table

ALTER TABLE employee_review ADD REMARK VARCHAR(50);

SELECT * FROM employee_review;

-- Updating the new column- 'Remark' with values

UPDATE employee_review
SET REMARK=
CASE 
WHEN OVERALL_RATING > 4 
AND work_life_balance > 4 
AND skill_development  > 4
AND salary_and_benefits > 4 
AND job_security  > 4
AND career_growth  > 4
AND work_satisfaction > 4 
THEN 'Excellent' 

WHEN OVERALL_RATING > 4 
AND work_life_balance > 4 
AND skill_development  > 4 OR 
OVERALL_RATING > 4
AND work_life_balance > 4 
AND job_security  > 4 OR
 job_security  > 4
AND career_growth  > 4
AND work_satisfaction > 4 
THEN 'Good'

ELSE 'Poor'

END; 

SELECT * FROM employee_review;