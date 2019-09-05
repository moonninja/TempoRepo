CREATE DATABASE CTULMS_DB
GO

USE CTULMS_DB
GO

CREATE SCHEMA [TestSchema]
GO
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

/*Diagram solo flow*/
CREATE TABLE [TestSchema].[International]
(
    International_ID int identity(1,1) PRIMARY KEY NOT NULL,
    International_Mark int null,
    International_Pass varchar(5) null /*Pass or Fail*/
)
GO

CREATE TABLE [TestSchema].[Formative]
(
    Formative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Formative_Mark int null,
    Formative_Pass varchar(5) null /*Pass or Fail*/
)
GO

CREATE TABLE [TestSchema].[Summative]
(
    Summative_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Summative_Mark int null,
    Summative_Pass varchar(5) null /*Pass or Fail*/
)
GO

/* Diagram connection hub - facts table*/
CREATE TABLE [TestSchema].[LUConnect]
(
    LUConnect_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Student_ID int FOREIGN KEY REFERENCES [TestSchema].[Student](Student_ID),
    Summative_ID int FOREIGN KEY REFERENCES [TestSchema].[Summative](Summative_ID),
    Formative_ID int FOREIGN KEY REFERENCES [TestSchema].[Formative](Formative_ID),
    International_ID int FOREIGN KEY REFERENCES [TestSchema].[International](International_ID),
    LearningUnit_ID int FOREIGN KEY REFERENCES [TestSchema].[LearningUnit](LearningUnit_ID)
)
GO
