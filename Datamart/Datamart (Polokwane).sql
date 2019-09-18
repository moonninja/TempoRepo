CREATE DATABASE CTULMS_DB
GO

USE CTULMS_DB
GO

CREATE SCHEMA [Polokwane]
GO

/*Diagram flow 1*/
CREATE TABLE [Polokwane].[User]
(
    User_ID int identity(1,1) PRIMARY KEY NOT NULL,
    User_Name nvarchar(max) NOT NULL,
    User_Password smallint NOT NULL,
    User_Type bit NOT NULL
)
GO

CREATE TABLE [Polokwane].[Course]
(
    Course_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Course_Name nvarchar(max) NOT NULL,
    User_ID int FOREIGN KEY REFERENCES [Polokwane].[User](User_ID)
)
GO

CREATE TABLE [Polokwane].[LearningUnit]
(
    LearningUnit_ID int identity(1,1) PRIMARY KEY NOT NULL,
    LearningUnit_Name nvarchar(max) NOT NULL,
    Course_ID int FOREIGN KEY REFERENCES [Polokwane].[Course](Course_ID)
)
GO

CREATE TABLE [Polokwane].[International]
(
    International_ID int identity(1,1) PRIMARY KEY NOT NULL,
    International_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Polokwane].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Polokwane].[Formative]
(
    Formative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Formative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Polokwane].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Polokwane].[Summative]
(
    Summative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Summative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Polokwane].[LearningUnit](LearningUnit_ID) 
)
GO
/*Diagram flow 2*/
CREATE TABLE [Polokwane].[StudentGaurdian]
(
    StudentGaurdian_ID int identity(1,1) PRIMARY KEY NOT NULL,
    StudentGaurdian_Name nvarchar(max) NOT NULL,
    StudentGaurdian_CountryOfOrigin nvarchar(max) NOT NULL
)
GO

CREATE TABLE [Polokwane].[Student]
(
    Student_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_Name nvarchar(max) NOT NULL,
    Student_Surname nvarchar(max) NOT NULL,
    Student_DateOfBirth date NOT NULL,
    StudentGaurdian_ID int FOREIGN KEY REFERENCES [Polokwane].[StudentGaurdian](StudentGaurdian_ID)
)
GO

CREATE TABLE [Polokwane].StudentMarks 
(
	StudentMark_ID int identity(1,1) PRIMARY KEY NOT NULL,
	StudentMark_Type nvarchar(max),
    StudentMark_TypeID int null,
	StudentMark_Mark int,
	Student_ID int FOREIGN KEY REFERENCES [Polokwane].[Student](Student_ID)
)
GO
/* Diagram connection hub - facts table*/
CREATE TABLE [Polokwane].[LUConnect]
(
    LUConnect_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_ID int FOREIGN KEY REFERENCES [Polokwane].[Student](Student_ID),
    Course_ID int FOREIGN KEY REFERENCES [Polokwane].[Course](Course_ID)
)
GO

/*ALL PRIMARY KEYS ACT AS CLUSTERED INDEXES*/
/*Non-clustered indexes*/
CREATE NONCLUSTERED INDEX IX_Student_StudentID
ON [Polokwane].[Student](Student_ID)
GO
CREATE NONCLUSTERED INDEX IX_USER_User_ID
ON [Polokwane].[User](User_ID)
GO
CREATE NONCLUSTERED INDEX IX_LUConnect_LUConnect_ID
ON [Polokwane].[LUConnect](LUConnect_ID)
GO
/*Stored Procedures*/
CREATE PROCEDURE [Polokwane].StudentList @studentId int
AS
SELECT	luc.LUConnect_ID,
		luc.Course_ID,
		s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Polokwane].LUConnect luc
JOIN [Polokwane].[Student] s
on luc.Student_ID = s.Student_ID
WHERE s.Student_ID = @studentId 
GO

CREATE PROCEDURE [Polokwane].UserStudentList @userid int
AS
SELECT	s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Polokwane].LUConnect luc
JOIN [Polokwane].[Student] s
on luc.Student_ID = s.Student_ID
join [Polokwane].Course c
on luc.Course_ID = c.Course_ID
WHERE c.User_ID = @userid 
GO

CREATE PROCEDURE [Polokwane].CourseList @userid int
AS
SELECT	c.Course_ID,
		c.Course_Name	
FROM [Polokwane].[User] u
join [Polokwane].Course c
on u.User_ID = c.User_ID
WHERE c.User_ID = @userid 
GO

/*Functions*/
CREATE FUNCTION [Polokwane].StudentAge()
RETURNS int
AS
BEGIN
return (
SELECT (YEAR(GETDATE()) - YEAR(Student_DateOfBirth) )
FROM [Polokwane].Student
)
END
GO
CREATE FUNCTION [Polokwane].StudentGaurdianCountryCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(StudentGaurdian.StudentGaurdian_ID)
FROM [Polokwane].[StudentGaurdian]
)
END
GO
CREATE FUNCTION [Polokwane].AdminCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(User_ID)
FROM [Polokwane].[User]
WHERE User_Type = 0
)
END
GO
/*Views*/
CREATE VIEW [Polokwane].AllLearningUnits
AS
SELECT * FROM [Polokwane].[LearningUnit]
GO
CREATE VIEW [Polokwane].AllSumamtives
AS
SELECT * FROM [Polokwane].Summative
GO
CREATE VIEW [Polokwane].AllFormativs
AS
SELECT * FROM [Polokwane].Formative
GO
CREATE VIEW [Polokwane].AllInternationals
AS
SELECT * FROM [Polokwane].International
GO
