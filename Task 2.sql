SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;
SELECT * FROM SALARY;

-- Editing the name of the common column between Departmet table and Employee table

Exec sp_rename 'DEPARTMENT.depID', 'DeptID', 'COLUMN';

-- Show the average yearly increment for employees in each department. 

SELECT CONCAT(NAME, ' ', FNAME) AS FULL_NAME, DESIGNATION, AVG(YEARLY_INCREMENT) AS AVERAGE_YEARLY_INCREMENT
FROM SALARY S JOIN EMPLOYEE E ON S.empID=E.empID JOIN DEPARTMENT D ON E.DeptID=D.DeptID GROUP BY CONCAT(NAME, ' ', FNAME)
, DESIGNATION;

----Show departments with an average yearly increment greater than 5000 only.

 SELECT CONCAT(NAME, ' ', FNAME) AS FULL_NAME, DESIGNATION, AVG(YEARLY_INCREMENT) AS AVERAGE_YEARLY_INCREMENT
FROM SALARY S JOIN EMPLOYEE E ON S.empID=E.empID JOIN DEPARTMENT D ON E.DeptID=D.DeptID GROUP BY CONCAT(NAME, ' ', FNAME)
, DESIGNATION  HAVING AVG(YEARLY_INCREMENT) > 5000;



