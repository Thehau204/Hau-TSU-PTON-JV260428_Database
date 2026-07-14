SELECT * FROM ddl_sql.students;
alter table students
change column MaSV student_id VARCHAR(10);

alter table students
change column HoTen full_name VARCHAR(100);

alter table students
change column NgaySinh birth_year INT;

alter table students
change column GioiTinh gender VARCHAR(10);

alter table students
add column score DECIMAL(4,2);
DESCRIBE students;

INSERT INTO students (student_id, full_name, birth_year, gender, score)
VALUES
('SV001', 'Nguyen Van A', 2003, 'Nam', 7.8),
('SV002', 'Tran Thi B', 2004, 'Nu', 8.5),
('SV003', 'Le Van C', 2002, 'Nam', 6.9),
('SV004', 'Pham Thi D', 2005, 'Nu', 9.1),
('SV005', 'Hoang Van E', 2003, 'Nam', 5.4),
('SV006', 'Vo Thi F', 2004, 'Nu', 7.2),
('SV007', 'Bui Van G', 2002, 'Nam', 8.0),
('SV008', 'Do Thi H', 2005, 'Nu', 9.5),
('SV009', 'Pham Van I', 2003, 'Nam', 6.3),
('SV010', 'Nguyen Thi K', 2004, 'Nu', 8.9);

/* Hiển thị mã sinh viên + họ tên (viết hoa toàn bộ)*/
SELECT 
    student_id,
    UPPER(full_name) AS full_name_upper
FROM students;
SELECT * FROM ddl_sql.students;
/*Hiển thị họ tên + số tuổi của sinh viên*/
SELECT 
    full_name,
    YEAR(CURDATE()) - birth_year AS age
FROM students;
/* Hiện thị điểm trung bình làm tròn 1 chữ số thập phân */
SELECT 
    full_name,
    ROUND(score, 1) AS rounded_score
FROM students;
/* Hiện thị tổng số sinh viên, điểm cao nhất, điểm thấp nhất */
SELECT 
    COUNT(*) AS total_students,
    MAX(score) AS highest_score,
    MIN(score) AS lowest_score
FROM students;



