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

#SQL analysis-----------------------------------------------

#SELECT
SELECT *
FROM student_performance;

#WHERE
SELECT *
FROM student_performance
WHERE AttendanceStatus = 'Present';

#ORDER BY
SELECT StudentID, StudentName, Subject, Percentage
FROM student_performance
ORDER BY Percentage DESC;

#DISTINCT
SELECT DISTINCT Subject;

#COUNT()
SELECT COUNT(*)
FROM student_performance;

#SUM()
SELECT SUM(MarksObtained)
FROM student_performance;

#AVG()
SELECT AVG(Percentage)
FROM student_performance;

#MIN()
SELECT MIN(Percentage)
FROM student_performance;

#MAX()
SELECT MAX(Percentage)
FROM student_performance;

# GROUP BY
SELECT Subject, COUNT(*)
FROM student_performance
GROUP BY Subject;

# HAVING
SELECT Subject, COUNT(*)
FROM student_performance
GROUP BY Subject
HAVING COUNT(*) > 1800;

# WHERE + ORDER BY
SELECT StudentName, Percentage
FROM student_performance
WHERE Percentage > 80
ORDER BY Percentage DESC;

