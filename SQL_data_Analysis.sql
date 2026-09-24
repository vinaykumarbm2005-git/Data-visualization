CREATE DATABASE student_performance_analysis;
USE student_performance_analysis;
CREATE TABLE student_performance (
    StudentID VARCHAR(20),
    StudentName VARCHAR(100),
    Grade VARCHAR(20),
    Email VARCHAR(100),
    AssessmentID VARCHAR(50),
    Subject VARCHAR(100),
    TotalMarks INT,
    QuestionID VARCHAR(50),
    CorrectAnswer VARCHAR(10),
    ResultID VARCHAR(50),
    MarksObtained INT,
    Percentage DECIMAL(5,2),
    AttemptDate DATE,
    TeacherName VARCHAR(100),
    AttendanceStatus VARCHAR(30)
);

# imported cleaned data

USE student_performance_analysis;

SELECT COUNT(*) AS total_records
FROM student_performance;

SELECT *
FROM student_performance
LIMIT 5;


