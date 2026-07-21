use demo;
CREATE TABLE students(
    student_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT,
    class_name VARCHAR(50),
    address VARCHAR(255)
);
CREATE VIEW v_student_basic AS
SELECT
    student_id,
    full_name,
    class_name
FROM students;
INSERT INTO students(student_id, full_name, birth_year, class_name, address)
VALUES
('S001', 'Nguyễn Văn A', 2003, 'IT01', 'Hà Nội'),
('S002', 'Trần Thị B', 2004, 'IT02', 'Đà Nẵng');

SELECT * FROM v_student_basic;


