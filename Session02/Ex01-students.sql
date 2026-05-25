USE ddl_sql;  


CREATE TABLE students (
    MaSV VARCHAR(10) PRIMARY KEY,
    HoTen VARCHAR(100),
    NgaySinh DATE,
    GioiTinh ENUM('Nam', 'Nu')
);
