SELECT * FROM ddl_sql.student3;
INSERT INTO student3 (student_id, full_name, birth_date, gender, email)
VALUES
('S001', 'Nguyen Van A', '2003-05-10', 'Nam', 'a@example.com'),
('S002', 'Tran Thi B', '2004-02-20', 'Nu', 'b@example.com'),
('S003', 'Le Van C', '2003-11-01', 'Nam', NULL),   -- không có email
('S004', 'Pham Thi D', '2005-07-15', 'Nu', 'd@example.com'),
('S005', 'Hoang Van E', '2004-09-09', 'Nam', 'e@example.com');
SELECT * FROM student3;
SELECT student_id, full_name, email
FROM student3;

