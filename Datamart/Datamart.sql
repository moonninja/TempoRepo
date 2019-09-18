CREATE DATABASE CTULMS_DB
GO

USE CTULMS_DB
GO

/*CREATE SCHEMA [TestSchema]
GO*/

/*Diagram flow 1*/
CREATE TABLE [TestSchema].[User]
(
    User_ID int identity(1,1) PRIMARY KEY NOT NULL,
    User_Name nvarchar(max) NOT NULL,
    User_Password smallint NOT NULL,
    User_Type bit NOT NULL
)
GO

CREATE TABLE [TestSchema].[Course]
(
    Course_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Course_Name nvarchar(max) NOT NULL,
    User_ID int FOREIGN KEY REFERENCES [TestSchema].[User](User_ID)
)
GO

CREATE TABLE [TestSchema].[LearningUnit]
(
    LearningUnit_ID int identity(1,1) PRIMARY KEY NOT NULL,
    LearningUnit_Name nvarchar(max) NOT NULL,
    Course_ID int FOREIGN KEY REFERENCES [TestSchema].[Course](Course_ID)
)
GO

CREATE TABLE [TestSchema].[International]
(
    International_ID int identity(1,1) PRIMARY KEY NOT NULL,
    International_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [TestSchema].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [TestSchema].[Formative]
(
    Formative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Formative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [TestSchema].[LearningUnit](LearningUnit_ID) 
)
GO

CREATE TABLE [TestSchema].[Summative]
(
    Summative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Summative_Name nvarchar(max),
    LearningUnit_ID int FOREIGN KEY REFERENCES [TestSchema].[LearningUnit](LearningUnit_ID) 
)
GO
/*Diagram flow 2*/
CREATE TABLE [TestSchema].[StudentGaurdian]
(
    StudentGaurdian_ID int identity(1,1) PRIMARY KEY NOT NULL,
    StudentGaurdian_Name nvarchar(max) NOT NULL,
    StudentGaurdian_CountryOfOrigin nvarchar(max) NOT NULL
)
GO

CREATE TABLE [TestSchema].[Student]
(
    Student_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_Name nvarchar(max) NOT NULL,
    Student_Surname nvarchar(max) NOT NULL,
    Student_DateOfBirth date NOT NULL,
    StudentGaurdian_ID int FOREIGN KEY REFERENCES [TestSchema].[StudentGaurdian](StudentGaurdian_ID)
)
GO

CREATE TABLE [TestSchema].StudentMarks 
(
	StudentMark_ID int identity(1,1) PRIMARY KEY NOT NULL,
	StudentMark_Type nvarchar(max),
    StudentMark_TypeID int null,
	StudentMark_Mark int,
	Student_ID int FOREIGN KEY REFERENCES [TestSchema].[Student](Student_ID)
)
GO
/* Diagram connection hub - facts table*/
CREATE TABLE [TestSchema].[LUConnect]
(
    LUConnect_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_ID int FOREIGN KEY REFERENCES [TestSchema].[Student](Student_ID),
    Course_ID int FOREIGN KEY REFERENCES [TestSchema].[Course](Course_ID)
)
GO

/*ALL PRIMARY KEYS ACT AS CLUSTERED INDEXES*/
/*Non-clustered indexes*/
CREATE NONCLUSTERED INDEX IX_Student_StudentID
ON [TestSchema].[Student](Student_ID)
GO
CREATE NONCLUSTERED INDEX IX_USER_User_ID
ON [TestSchema].[User](User_ID)
GO
CREATE NONCLUSTERED INDEX IX_LUConnect_LUConnect_ID
ON [TestSchema].[LUConnect](LUConnect_ID)
GO
/*Stored Procedures*/
CREATE PROCEDURE [TestSchema].StudentList @studentId int
AS
SELECT	luc.LUConnect_ID,
		luc.Course_ID,
		s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [TestSchema].LUConnect luc
JOIN [TestSchema].[Student] s
on luc.Student_ID = s.Student_ID
WHERE s.Student_ID = @studentId 
GO

CREATE PROCEDURE [TestSchema].UserStudentList @userid int
AS
SELECT	s.Student_ID,
		s.Student_Name,
		s.Student_Surname,
		s.Student_DateOfBirth	
FROM [TestSchema].LUConnect luc
JOIN [TestSchema].[Student] s
on luc.Student_ID = s.Student_ID
join [TestSchema].Course c
on luc.Course_ID = c.Course_ID
WHERE c.User_ID = @userid 
GO

CREATE PROCEDURE [TestSchema].CourseList @userid int
AS
SELECT	c.Course_ID,
		c.Course_Name	
FROM [TestSchema].[User] u
join [TestSchema].Course c
on u.User_ID = c.User_ID
WHERE c.User_ID = @userid 
GO

/*Functions*/
CREATE FUNCTION [TestSchema].StudentAge()
RETURNS int
AS
BEGIN
return (
SELECT (YEAR(GETDATE()) - YEAR(Student_DateOfBirth) )
FROM [TestSchema].Student
)
END
GO
CREATE FUNCTION [TestSchema].StudentGaurdianCountryCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(StudentGaurdian.StudentGaurdian_ID)
FROM [TestSchema].[StudentGaurdian]
)
END
GO
CREATE FUNCTION [TestSchema].AdminCount()
RETURNS int
AS
BEGIN
return (
SELECT COUNT(User_ID)
FROM [TestSchema].[User]
WHERE User_Type = 0
)
END
GO
/*Views*/
CREATE VIEW [TestSchema].AllLearningUnits
AS
SELECT * FROM [TestSchema].[LearningUnit]
GO
CREATE VIEW [TestSchema].AllSumamtives
AS
SELECT * FROM [TestSchema].Summative
GO
CREATE VIEW [TestSchema].AllFormativs
AS
SELECT * FROM [TestSchema].Formative
GO
CREATE VIEW [TestSchema].AllInternationals
AS
SELECT * FROM [TestSchema].International
GO
