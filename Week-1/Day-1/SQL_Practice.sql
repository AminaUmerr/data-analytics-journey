-- Display all students
SELECT *
FROM Students;

-- Display only student names
SELECT Name
FROM Students;

-- Students older than 21
SELECT *
FROM Students
WHERE Age > 21;

-- Sort students by age
SELECT *
FROM Students
ORDER BY Age DESC;

-- First 3 students
SELECT TOP 3 *
FROM Students;
