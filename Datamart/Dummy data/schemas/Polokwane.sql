/*StudentGaurdian*/
insert into [Polokwane].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Jacky', 'China');
insert into [Polokwane].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Poer', 'China');
/*Student*/
insert into [Polokwane].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Cody', 'Almack', '1995-06-09', 1);
insert into [Polokwane].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Farly', 'Viccars', '1999-10-05', 2);
/*Users*/
INSERT INTO [Polokwane].[User] VALUES('Ron',666,1);
INSERT INTO [Polokwane].[User] VALUES('Johnny',765,1);
INSERT INTO [Polokwane].[User] VALUES('Josh',274,1);
INSERT INTO [Polokwane].[User] VALUES('Luke',81,0);
INSERT INTO [Polokwane].[User] VALUES('Oliver',829,1);
/*Courses*/
INSERT INTO [Polokwane].[Course] VALUES('Sociology',1);
INSERT INTO [Polokwane].[Course] VALUES('Resource Program',2);
INSERT INTO [Polokwane].[Course] VALUES('Trigonometry',3);
/*LearningUnit*/
insert into [Polokwane].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 1);
insert into [Polokwane].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 2);
insert into [Polokwane].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 3);
insert into [Polokwane].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 2', 1);
insert into [Polokwane].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 2', 2);
insert into [Polokwane].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 2', 3);
/*Summatives-formatives-internationals*/
insert into [Polokwane].[Summative] values ("Summative1",1);
insert into [Polokwane].[Summative] values ("Summative1",2);
insert into [Polokwane].[Summative] values ("Summative1",3);
insert into [Polokwane].[Summative] values ("Summative1",4);
insert into [Polokwane].[Summative] values ("Summative1",5);
insert into [Polokwane].[Summative] values ("Summative1",6);

insert into [Polokwane].[Summative] values ("Summative2",1);
insert into [Polokwane].[Summative] values ("Summative2",2);
insert into [Polokwane].[Summative] values ("Summative2",3);
insert into [Polokwane].[Summative] values ("Summative2",4);
insert into [Polokwane].[Summative] values ("Summative2",5);
insert into [Polokwane].[Summative] values ("Summative2",6);


insert into [Polokwane].[Formative] values ("Formative1",1);
insert into [Polokwane].[Formative] values ("Formative1",2);
insert into [Polokwane].[Formative] values ("Formative1",3);
insert into [Polokwane].[Formative] values ("Formative1",4);
insert into [Polokwane].[Formative] values ("Formative1",5);
insert into [Polokwane].[Formative] values ("Formative1",6);


insert into [Polokwane].[Formative] values ("Formative2",1);
insert into [Polokwane].[Formative] values ("Formative2",2);
insert into [Polokwane].[Formative] values ("Formative2",3);
insert into [Polokwane].[Formative] values ("Formative2",4);
insert into [Polokwane].[Formative] values ("Formative2",5);
insert into [Polokwane].[Formative] values ("Formative2",6);


/*LU Connect*/
insert into [Polokwane].[LUConnect] (Student_ID, Course_ID) values (1, 1);
insert into [Polokwane].[LUConnect] (Student_ID, Course_ID) values (2, 2);
insert into [Polokwane].[LUConnect] (Student_ID, Course_ID) values (1, 3);
insert into [Polokwane].[LUConnect] (Student_ID, Course_ID) values (2, 1);

/*Student Marks*/
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",1,33,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",1,59,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",1,75,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",1,44,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",4,33,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",4,59,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",4,75,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",4,44,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",2,33,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",2,59,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",2,75,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",2,44,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",5,33,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",5,59,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",5,75,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",5,44,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",3,33,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",3,59,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",3,75,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",3,44,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",6,33,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",6,59,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",6,75,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",6,44,1);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",1,33,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",1,59,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",1,75,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",1,44,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",4,33,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",4,59,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",4,75,2);
insert into [Polokwane].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",4,44,2);

