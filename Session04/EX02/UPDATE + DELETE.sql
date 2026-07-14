SET SQL_SAFE_UPDATES = 0;
UPDATE ddl_sql.student3
SET email = 'default@example.com'
WHERE email IS NULL;
SELECT * FROM ddl_sql.student3;
UPDATE student3
SET gender = 'Nu'
WHERE student_id = 'S005';
DELETE FROM student3
WHERE student_id = 'S003';

