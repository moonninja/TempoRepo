CREATE DATABASE CTULMS_DB
GO

USE CTULMS_DB
GO

CREATE SCHEMA [Bloemfontein]
GO

/*Diagram flow 1*/
CREATE TABLE [Bloemfontein].[User]
(
    User_ID int identity(1,1) PRIMARY KEY NOT NULL,
    User_Name nvarchar(max) NOT NULL,
    User_Password smallint NOT NULL,
    User_Type bit NOT NULL
)
GO

CREATE TABLE [Bloemfontein].[Course]
(
    Course_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Course_Name nvarchar(max) NOT NULL,
    User_ID int FOREIGN KEY REFERENCES [Bloemfontein].[User](User_ID)
)
GO

CREATE TABLE [Bloemfontein].[LearningUnit]
(
    LearningUnit_ID int identity(1,1) PRIMARY KEY NOT NULL,
    LearningUnit_Name nvarchar(max) NOT NULL,
    Course_ID int FOREIGN KEY REFERENCES [Bloemfontein].[Course](Course_ID)
)
GO

CREATE TABLE [Bloemfontein].[International]
(
    International_ID int identity(1,1) PRIMARY KEY NOT NULL,
    International_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Bloemfontein].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Bloemfontein].[Formative]
(
    Formative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Formative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Bloemfontein].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [Bloemfontein].[Summative]
(
    Summative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Summative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [Bloemfontein].[LearningUnit](LearningUnit_ID) 
)
GO
/*Diagram flow 2*/
CREATE TABLE [Bloemfontein].[StudentGaurdian]
(
    StudentGaurdian_ID int identity(1,1) PRIMARY KEY NOT NULL,
    StudentGaurdian_Name nvarchar(max) NOT NULL,
    StudentGaurdian_CountryOfOrigin nvarchar(max) NOT NULL
)
GO

CREATE TABLE [Bloemfontein].[Student]
(
    Student_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_Name nvarchar(max) NOT NULL,
    Student_Surname nvarchar(max) NOT NULL,
    Student_DateOfBirth date NOT NULL,
    StudentGaurdian_ID int FOREIGN KEY REFERENCES [Bloemfontein].[StudentGaurdian](StudentGaurdian_ID)
)
GO

CREATE TABLE [Bloemfontein].StudentMarks 
(
	StudentMark_ID int identity(1,1) PRIMARY KEY NOT NULL,
	StudentMark_Type nvarchar(max),
    StudentMark_TypeID int null,
	StudentMark_Mark int,
	Student_ID int FOREIGN KEY REFERENCES [Bloemfontein].[Student](Student_ID)
)
GO
/* Diagram connection hub - facts table*/
CREATE TABLE [Bloemfontein].[LUConnect]
(
    LUConnect_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_ID int FOREIGN KEY REFERENCES [Bloemfontein].[Student](Student_ID),
    Course_ID int FOREIGN KEY REFERENCES [Bloemfontein].[Course](Course_ID)
)
GO

/*ALL PRIMARY KEYS ACT AS CLUSTERED INDEXES*/
/*Non-clustered indexes*/
CREATE NONCLUSTERED INDEX IX_Student_StudentID
ON [Bloemfontein].[Student](Student_ID)
GO
CREATE NONCLUSTERED INDEX IX_USER_User_ID
ON [Bloemfontein].[User](User_ID)
GO
CREATE NONCLUSTERED INDEX IX_LUConnect_LUConnect_ID
ON [Bloemfontein].[LUConnect](LUConnect_ID)
GO
/*Stored Procedures*/
CREATE PROCEDURE [Bloemfontein].StudentList @studentId int
AS
SELECT	luc.LUConnect_ID,
		luc.Course_ID,
		s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Bloemfontein].LUConnect luc
JOIN [Bloemfontein].[Student] s
on luc.Student_ID = s.Student_ID
WHERE s.Student_ID = @studentId 
GO

CREATE PROCEDURE [Bloemfontein].UserStudentList @userid int
AS
SELECT	s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [Bloemfontein].LUConnect luc
JOIN [Bloemfontein].[Student] s
on luc.Student_ID = s.Student_ID
join [Bloemfontein].Course c
on luc.Course_ID = c.Course_ID
WHERE c.User_ID = @userid 
GO

CREATE PROCEDURE [Bloemfontein].CourseList @userid int
AS
SELECT	c.Course_ID,
		c.Course_Name	
FROM [Bloemfontein].[User] u
join [Bloemfontein].Course c
on u.User_ID = c.User_ID
WHERE c.User_ID = @userid 
GO

/*Functions*/
CREATE FUNCTION [Bloemfontein].StudentAge()
RETURNS int
AS
BEGIN
return (
SELECT (YEAR(GETDATE()) - YEAR(Student_DateOfBirth) )
FROM [Bloemfontein].Student
)
END
GO
CREATE FUNCTION [Bloemfontein].StudentGaurdianCountryCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(StudentGaurdian.StudentGaurdian_ID)
FROM [Bloemfontein].[StudentGaurdian]
)
END
GO
CREATE FUNCTION [Bloemfontein].AdminCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(User_ID)
FROM [Bloemfontein].[User]
WHERE User_Type = 0
)
END
GO
/*Views*/
CREATE VIEW [Bloemfontein].AllLearningUnits
AS
SELECT * FROM [Bloemfontein].[LearningUnit]
GO
CREATE VIEW [Bloemfontein].AllSumamtives
AS
SELECT * FROM [Bloemfontein].Summative
GO
CREATE VIEW [Bloemfontein].AllFormativs
AS
SELECT * FROM [Bloemfontein].Formative
GO
CREATE VIEW [Bloemfontein].AllInternationals
AS
SELECT * FROM [Bloemfontein].International
GO
