SELECT student_id, full_name, birth_date
FROM student3
WHERE birth_date BETWEEN '2003-01-01' AND '2005-12-31';
SELECT student_id, full_name, birth_date
FROM student3
WHERE gender IN ('Nam', 'Nu');
SELECT * FROM ddl_sql.student3;
SELECT student_id, full_name, birth_date
FROM student3
WHERE student_id IN('S001', 'S004', 'S005');