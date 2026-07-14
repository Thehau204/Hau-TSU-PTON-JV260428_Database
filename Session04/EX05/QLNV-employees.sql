SELECT * FROM ddl_sql.employees;
INSERT INTO employees (emp_id, full_name, birth_year, department, salary, phone)
VALUES
('E001', 'Nguyen Van Anh', 1995, 'IT', 15000000, '0901111111'),
('E002', 'Tran Thi B', 1998, 'HR', 12000000, '0902222222'),
('E003', 'Le Van C', 1990, 'Finance', 8000000, NULL),
('E004', 'Pham Thi D', 1997, 'IT', 20000000, '0903333333'),
('E005', 'Hoang Van E', 1988, 'Marketing', 4500000, NULL),
('E006', 'Vo Thi F', 1996, 'HR', 17000000, '0904444444'),
('E007', 'Bui Van G', 1992, 'IT', 9000000, NULL),
('E008', 'Do Thi H', 1999, 'Finance', 22000000, '0905555555'),
('E009', 'Pham Van Anh', 1994, 'IT', 18000000, NULL),
('E010', 'Nguyen Thi K', 1991, 'HR', 7000000, '0906666666');

/* Hiển thị danh sách nhân viên có mức
 lương từ 10.000.000 đến 20.000.000*/
SELECT * FROM employees
WHERE salary between 10000000 AND 20000000;
 
 /*Hiển thị nhân viên thuộc phòng ban IT hoặc HR*/
SELECT * FROM employees
WHERE department IN ('IT', 'HR');
/*Hiển thị nhân viên có họ tên chứa chữ “Anh” */
SELECT * FROM employees
WHERE full_name LIKE '%ANH%';
/* Hiển thị nhân viên chưa có số điện thoại */
SELECT * FROM employees
WHERE phone IS NULL;

/* Cập nhật & xóa dữ liệu (UPDATE – DELETE) */
/* Cập nhật lương tăng thêm 10% cho nhân viên phòng IT */
SELECT * FROM ddl_sql.employees;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';
/* Cập nhật số điện thoại cho nhân viên chưa có số điện thoại */
UPDATE employees
SET phone = '00000000'
WHERE phone IS NULL;
/* Xóa nhân viên có mức lương thấp hơn 5000000 */
SELECT * FROM employees;
DELETE FROM employees
WHERE salary < 5000000;
-------


  