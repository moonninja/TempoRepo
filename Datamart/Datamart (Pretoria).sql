CREATE DATABASE CTULMS_DB
GO

USE CTULMS_DB
GO

CREATE SCHEMA [Pretoria]
GO

/*Diagram flow 1*/
CREATE TABLE [Pretoria].[User]
(
    User_ID int identity(1,1) PRIMARY KEY NOT NULL,
    User_Name nvarchar(max) NOT NULL,
    User_Password smallint NOT NULL,
    User_Type bit NOT NULL
)
GO

CREATE TABLE [Pretoria].[Course]
(
    Course_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Course_Name nvarchar(max) NOT NULL,
    User_ID int FOREIGN KEY REFERENCES [Pretoria].[User](User_ID)
)
GO

CREATE TABLE [Pretoria].[LearningUnit]
(
    LearningUnit_ID int identity(1,1) PRIMARY KEY NOT NULL,
    LearningUnit_Name nvarchar(max) NOT NULL,
    Course_ID int FOREIGN KEY REFERENCES [Pretoria].[Course](Course_ID)
)
GO

CREATE TABLE [Pretoria].[International]
(
    International_ID int identity(1,1) PRIMARY KEY NOT NULL,
    International_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Pretoria].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Pretoria].[Formative]
(
    Formative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Formative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Pretoria].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Pretoria].[Summative]
(
    Summative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Summative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Pretoria].[LearningUnit](LearningUnit_ID) 
)
GO
/*Diagram flow 2*/
CREATE TABLE [Pretoria].[StudentGaurdian]
(
    StudentGaurdian_ID int identity(1,1) PRIMARY KEY NOT NULL,
    StudentGaurdian_Name nvarchar(max) NOT NULL,
    StudentGaurdian_CountryOfOrigin nvarchar(max) NOT NULL
)
GO

CREATE TABLE [Pretoria].[Student]
(
    Student_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_Name nvarchar(max) NOT NULL,
    Student_Surname nvarchar(max) NOT NULL,
    Student_DateOfBirth date NOT NULL,
    StudentGaurdian_ID int FOREIGN KEY REFERENCES [Pretoria].[StudentGaurdian](StudentGaurdian_ID)
)
GO

CREATE TABLE [Pretoria].StudentMarks 
(
	StudentMark_ID int identity(1,1) PRIMARY KEY NOT NULL,
	StudentMark_Type nvarchar(max),
    StudentMark_TypeID int null,
	StudentMark_Mark int,
	Student_ID int FOREIGN KEY REFERENCES [Pretoria].[Student](Student_ID)
)
GO
/* Diagram connection hub - facts table*/
CREATE TABLE [Pretoria].[LUConnect]
(
    LUConnect_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_ID int FOREIGN KEY REFERENCES [Pretoria].[Student](Student_ID),
    Course_ID int FOREIGN KEY REFERENCES [Pretoria].[Course](Course_ID)
)
GO

/*ALL PRIMARY KEYS ACT AS CLUSTERED INDEXES*/
/*Non-clustered indexes*/
CREATE NONCLUSTERED INDEX IX_Student_StudentID
ON [Pretoria].[Student](Student_ID)
GO
CREATE NONCLUSTERED INDEX IX_USER_User_ID
ON [Pretoria].[User](User_ID)
GO
CREATE NONCLUSTERED INDEX IX_LUConnect_LUConnect_ID
ON [Pretoria].[LUConnect](LUConnect_ID)
GO
/*Stored Procedures*/
CREATE PROCEDURE [Pretoria].StudentList @studentId int
AS
SELECT	luc.LUConnect_ID,
		luc.Course_ID,
		s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Pretoria].LUConnect luc
JOIN [Pretoria].[Student] s
on luc.Student_ID = s.Student_ID
WHERE s.Student_ID = @studentId 
GO

CREATE PROCEDURE [Pretoria].UserStudentList @userid int
AS
SELECT	s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Pretoria].LUConnect luc
JOIN [Pretoria].[Student] s
on luc.Student_ID = s.Student_ID
join [Pretoria].Course c
on luc.Course_ID = c.Course_ID
WHERE c.User_ID = @userid 
GO

CREATE PROCEDURE [Pretoria].CourseList @userid int
AS
SELECT	c.Course_ID,
		c.Course_Name	
FROM [Pretoria].[User] u
join [Pretoria].Course c
on u.User_ID = c.User_ID
WHERE c.User_ID = @userid 
GO

/*Functions*/
CREATE FUNCTION [Pretoria].StudentAge()
RETURNS int
AS
BEGIN
return (
SELECT (YEAR(GETDATE()) - YEAR(Student_DateOfBirth) )
FROM [Pretoria].Student
)
END
GO
CREATE FUNCTION [Pretoria].StudentGaurdianCountryCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(StudentGaurdian.StudentGaurdian_ID)
FROM [Pretoria].[StudentGaurdian]
)
END
GO
CREATE FUNCTION [Pretoria].AdminCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(User_ID)
FROM [Pretoria].[User]
WHERE User_Type = 0
)
END
GO
/*Views*/
CREATE VIEW [Pretoria].AllLearningUnits
AS
SELECT * FROM [Pretoria].[LearningUnit]
GO
CREATE VIEW [Pretoria].AllSumamtives
AS
SELECT * FROM [Pretoria].Summative
GO
CREATE VIEW [Pretoria].AllFormativs
AS
SELECT * FROM [Pretoria].Formative
GO
CREATE VIEW [Pretoria].AllInternationals
AS
SELECT * FROM [Pretoria].International
GO
