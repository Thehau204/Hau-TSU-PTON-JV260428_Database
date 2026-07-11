CREATE TABLE books (
    BookID VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100)
);

CREATE TABLE readers (
    ReaderID VARCHAR(10) PRIMARY KEY,
    ReaderName VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE borrowings (
    BorrowID VARCHAR(10) PRIMARY KEY,
    BookID VARCHAR(10),
    ReaderID VARCHAR(10),
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES books(BookID),
    FOREIGN KEY (ReaderID) REFERENCES readers(ReaderID)
);

ALTER TABLE borrowings
MODIFY BorrowDate DATE NOT NULL;
