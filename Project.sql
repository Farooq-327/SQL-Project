-- Create the database
CREATE DATABASE IF NOT EXISTS StudentDB;
USE StudentDB;

-- Create Students table
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

-- Create Courses table
CREATE TABLE IF NOT EXISTS Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

-- Create Enrollments table
CREATE TABLE IF NOT EXISTS Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Insert sample data into Students table
INSERT INTO Students (FirstName, LastName, DateOfBirth, Email, Phone)
VALUES
    ('John', 'Doe', '1990-05-15', 'johndoe@email.com', '123-456-7890'),
    ('Alice', 'Smith', '1992-08-21', 'alicesmith@email.com', '987-654-3210');

-- Insert sample data into Courses table
INSERT INTO Courses (CourseName, Credits)
VALUES
    ('Mathematics 101', 3),
    ('History 101', 3);

-- Insert sample data into Enrollments table
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES
    (1, 1, '2023-01-10'),
    (1, 2, '2023-01-12'),
    (2, 1, '2023-01-15');
