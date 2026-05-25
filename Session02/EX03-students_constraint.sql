USE ddl_sql;

CREATE TABLE students_constraint (
    MaSV VARCHAR(10) PRIMARY KEY,
    HoTen VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    NgaySinh DATE,
    Tuoi INT,
    CHECK (Tuoi >= 18)
);

