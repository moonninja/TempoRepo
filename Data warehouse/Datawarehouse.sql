CREATE DATABASE CTULMS_DW
GO

USE CTULMS_DW
GO

/*Dimension Tables Campus -> Facilitator*/
CREATE TABLE [Campus]
(
    Campus_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Campus_Name varchar(max) NOT NULL
)
GO
CREATE TABLE [Course]
(
    Course_ID int NOT NULL,
    Campus_ID int FOREIGN KEY REFERENCES [Campus] (Campus_ID),
    Course_Name nvarchar(max) NOT NULL,
    PRIMARY KEY (Course_ID,Campus_ID)
)
GO

CREATE TABLE [Student]
(
    Student_ID int NOT NULL,
    Campus_ID int FOREIGN KEY REFERENCES [Campus] (Campus_ID),
    Student_Name nvarchar(max) NOT NULL,
    Student_Surname nvarchar(max) NOT NULL,
    Student_DateOfBirth date NOT NULL,
    PRIMARY KEY (Student_ID,Campus_ID)
)
GO

/*Convert facilitator user to generic facilitator*/
CREATE TABLE [Facilitator]
(
    Facilitator_ID int NOT NULL,
    Campus_ID int FOREIGN KEY REFERENCES [Campus] (Campus_ID),
    Facilitator_Name nvarchar(max) NOT NULL,
    PRIMARY KEY (Facilitator_ID,Campus_ID)
)
GO

/*Fact table*/
CREATE TABLE [Mark]
(
    Mark_ID int identity(1,1) PRIMARY KEY NOT NULL,
    Mark_Date datetime DEFAULT GETDATE(),
	Student_ID int NOT NULL,
	Course_ID int NOT NULL,
	Facilitator_ID int NOT NULL,
    FOREIGN KEY (Student_ID,Campus_ID) REFERENCES [Student](Student_ID,Campus_ID),
	FOREIGN KEY (Course_ID,Campus_ID) REFERENCES Course(Course_ID,Campus_ID),
	FOREIGN KEY (Facilitator_ID,Campus_ID) REFERENCES Facilitator(Facilitator_ID,Campus_ID),
    Campus_ID int FOREIGN KEY REFERENCES [Campus](Campus_ID),
    Mark_Final smallint NULL,
    Mark_Pass varchar(10) NOT NULL
)
GO