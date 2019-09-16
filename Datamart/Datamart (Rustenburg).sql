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
