SELECT student_id, full_name, birth_date
FROM student3
WHERE email IS NULL;
SELECT * FROM ddl_sql.student3;
SELECT student_id, full_name, birth_date
FROM student3
WHERE email IS NOT NULL;
SELECT student_id, full_name, birth_date
FROM student3
WHERE full_name LIKE 'Ng%';
SELECT student_id, full_name, birth_date
FROM student3
WHERE gender <> 'Nam';

