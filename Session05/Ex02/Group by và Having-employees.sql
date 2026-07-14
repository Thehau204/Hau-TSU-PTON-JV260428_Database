SELECT * FROM ddl_sql.employees;
/*1.Thống kê mỗi phòng ban có bao nhiêu nhân viên*/
SELECT
     department,
     COUNT(*) AS total_employees
FROM employees
GROUP BY department;
/*2. Tính mức lương trung bình của từng phòng ban*/
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
/*3. Chỉ hiện thị các phòng ban có trên 3 nhân viên*/
SELECT 
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;
/*4.Chỉ hiện thị các phòng ban có lương trung bình > 12.000.000*/
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 12000000;
