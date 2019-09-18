CREATE DATABASE CTULMS_DB
GO

USE CTULMS_DB
GO

CREATE SCHEMA [Rustenburg]
GO

/*Diagram flow 1*/
CREATE TABLE [Rustenburg].[User]
(
    User_ID int identity(1,1) PRIMARY KEY NOT NULL,
    User_Name nvarchar(max) NOT NULL,
    User_Password smallint NOT NULL,
    User_Type bit NOT NULL
)
GO

CREATE TABLE [Rustenburg].[Course]
(
    Course_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Course_Name nvarchar(max) NOT NULL,
    User_ID int FOREIGN KEY REFERENCES [Rustenburg].[User](User_ID)
)
GO

CREATE TABLE [Rustenburg].[LearningUnit]
(
    LearningUnit_ID int identity(1,1) PRIMARY KEY NOT NULL,
    LearningUnit_Name nvarchar(max) NOT NULL,
    Course_ID int FOREIGN KEY REFERENCES [Rustenburg].[Course](Course_ID)
)
GO

CREATE TABLE [Rustenburg].[International]
(
    International_ID int identity(1,1) PRIMARY KEY NOT NULL,
    International_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Rustenburg].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Rustenburg].[Formative]
(
    Formative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Formative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Rustenburg].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Rustenburg].[Summative]
(
    Summative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Summative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Rustenburg].[LearningUnit](LearningUnit_ID) 
)
GO
/*Diagram flow 2*/
CREATE TABLE [Rustenburg].[StudentGaurdian]
(
    StudentGaurdian_ID int identity(1,1) PRIMARY KEY NOT NULL,
    StudentGaurdian_Name nvarchar(max) NOT NULL,
    StudentGaurdian_CountryOfOrigin nvarchar(max) NOT NULL
)
GO

CREATE TABLE [Rustenburg].[Student]
(
    Student_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_Name nvarchar(max) NOT NULL,
    Student_Surname nvarchar(max) NOT NULL,
    Student_DateOfBirth date NOT NULL,
    StudentGaurdian_ID int FOREIGN KEY REFERENCES [Rustenburg].[StudentGaurdian](StudentGaurdian_ID)
)
GO

CREATE TABLE [Rustenburg].StudentMarks 
(
	StudentMark_ID int identity(1,1) PRIMARY KEY NOT NULL,
	StudentMark_Type nvarchar(max),
    StudentMark_TypeID int null,
	StudentMark_Mark int,
	Student_ID int FOREIGN KEY REFERENCES [Rustenburg].[Student](Student_ID)
)
GO
/* Diagram connection hub - facts table*/
CREATE TABLE [Rustenburg].[LUConnect]
(
    LUConnect_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_ID int FOREIGN KEY REFERENCES [Rustenburg].[Student](Student_ID),
    Course_ID int FOREIGN KEY REFERENCES [Rustenburg].[Course](Course_ID)
)
GO

/*ALL PRIMARY KEYS ACT AS CLUSTERED INDEXES*/
/*Non-clustered indexes*/
CREATE NONCLUSTERED INDEX IX_Student_StudentID
ON [Rustenburg].[Student](Student_ID)
GO
CREATE NONCLUSTERED INDEX IX_USER_User_ID
ON [Rustenburg].[User](User_ID)
GO
CREATE NONCLUSTERED INDEX IX_LUConnect_LUConnect_ID
ON [Rustenburg].[LUConnect](LUConnect_ID)
GO
/*Stored Procedures*/
CREATE PROCEDURE [Rustenburg].StudentList @studentId int
AS
SELECT	luc.LUConnect_ID,
		luc.Course_ID,
		s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Rustenburg].LUConnect luc
JOIN [Rustenburg].[Student] s
on luc.Student_ID = s.Student_ID
WHERE s.Student_ID = @studentId 
GO

CREATE PROCEDURE [Rustenburg].UserStudentList @userid int
AS
SELECT	s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Rustenburg].LUConnect luc
JOIN [Rustenburg].[Student] s
on luc.Student_ID = s.Student_ID
join [Rustenburg].Course c
on luc.Course_ID = c.Course_ID
WHERE c.User_ID = @userid 
GO

CREATE PROCEDURE [Rustenburg].CourseList @userid int
AS
SELECT	c.Course_ID,
		c.Course_Name	
FROM [Rustenburg].[User] u
join [Rustenburg].Course c
on u.User_ID = c.User_ID
WHERE c.User_ID = @userid 
GO

/*Functions*/
CREATE FUNCTION [Rustenburg].StudentAge()
RETURNS int
AS
BEGIN
return (
SELECT (YEAR(GETDATE()) - YEAR(Student_DateOfBirth) )
FROM [Rustenburg].Student
)
END
GO
CREATE FUNCTION [Rustenburg].StudentGaurdianCountryCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(StudentGaurdian.StudentGaurdian_ID)
FROM [Rustenburg].[StudentGaurdian]
)
END
GO
CREATE FUNCTION [Rustenburg].AdminCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(User_ID)
FROM [Rustenburg].[User]
WHERE User_Type = 0
)
END
GO
/*Views*/
CREATE VIEW [Rustenburg].AllLearningUnits
AS
SELECT * FROM [Rustenburg].[LearningUnit]
GO
CREATE VIEW [Rustenburg].AllSumamtives
AS
SELECT * FROM [Rustenburg].Summative
GO
CREATE VIEW [Rustenburg].AllFormativs
AS
SELECT * FROM [Rustenburg].Formative
GO
CREATE VIEW [Rustenburg].AllInternationals
AS
SELECT * FROM [Rustenburg].International
GO
