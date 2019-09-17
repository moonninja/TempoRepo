/*StudentGaurdian*/
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Lukas', 'China');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Powell', 'China');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Katha', 'South Africa');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Rosetta', 'China');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Nikolai', 'China');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Mikol', 'China');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Laural', 'South Africa');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Say', 'China');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Dorie', 'China');
insert into [Pretoria].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Bartolomeo', 'China');
/*Student*/
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Rahal', 'Pryer', '1997-01-14', 1);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Idell', 'Dabnot', '2001-05-01', 2);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Fancy', 'Bossingham', '1999-07-02', 3);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Dalton', 'Josiah', '1996-08-27', 4);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Merrill', 'Jephson', '1999-07-05', 5);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Friedrich', 'Mixhel', '2000-03-29', 6);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Nolan', 'Quixley', '2000-11-27', 7);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Bastien', 'Ourtic', '1995-09-26', 8);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Gauthier', 'Fausset', '1999-12-28', 9);
insert into [Pretoria].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Tristan', 'Briand', '1999-02-08', 10);
/*Users*/
INSERT INTO [Pretoria].[User] VALUES('Tyson',2,0);
INSERT INTO [Pretoria].[User] VALUES('Mayleen',408,1);
INSERT INTO [Pretoria].[User] VALUES('Rosalee',298,1);
INSERT INTO [Pretoria].[User] VALUES('Estrella',498,1);
/*Courses*/
INSERT INTO [Pretoria].[Course] VALUES('Accounting',2);
INSERT INTO [Pretoria].[Course] VALUES('Ancient Civilizations',2);
INSERT INTO [Pretoria].[Course] VALUES('Modern Literature',3);
INSERT INTO [Pretoria].[Course] VALUES('Resource Program',3);
INSERT INTO [Pretoria].[Course] VALUES('Mathematics',4);
INSERT INTO [Pretoria].[Course] VALUES('Instrumental Music',4);
/*LearningUnit*/
insert into [Pretoria].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 1);
insert into [Pretoria].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 2);
insert into [Pretoria].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 3);
insert into [Pretoria].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 4);
insert into [Pretoria].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 5);
insert into [Pretoria].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 6);
/*Summatives-formatives-internationals*/
insert into [Pretoria].[Summative] values ('Summative1',1);
insert into [Pretoria].[Summative] values ('Summative1',2);
insert into [Pretoria].[Summative] values ('Summative1',3);
insert into [Pretoria].[Summative] values ('Summative1',4);
insert into [Pretoria].[Summative] values ('Summative1',5);
insert into [Pretoria].[Summative] values ('Summative1',6);
insert into [Pretoria].[Summative] values ('Summative1',7);
insert into [Pretoria].[Formative] values ('Formative1',1);
insert into [Pretoria].[Formative] values ('Formative1',2);
insert into [Pretoria].[Formative] values ('Formative1',3);
insert into [Pretoria].[Formative] values ('Formative1',4);
insert into [Pretoria].[Formative] values ('Formative1',5);
insert into [Pretoria].[Formative] values ('Formative1',6);
insert into [Pretoria].[Formative] values ('Formative1',7);
insert into [Pretoria].[International] values ('International1',1);
insert into [Pretoria].[International] values ('International1',2);
insert into [Pretoria].[International] values ('International1',3);
insert into [Pretoria].[International] values ('International1',4);
insert into [Pretoria].[International] values ('International1',5);
insert into [Pretoria].[International] values ('International1',6);
insert into [Pretoria].[International] values ('International1',7);
/*LU Connect*/
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (1, 1);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (2, 1);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (3, 1);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (4, 2);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (5, 3);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (6, 4);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (7, 5);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (8, 6);
insert into [Pretoria].[LUConnect] (Student_ID, Course_ID) values (9, 6);
/*Student Marks*/
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',1,65,1);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',1,62,1);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',1,82,1);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',1,65,2);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',1,62,2);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',1,82,2);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',1,65,3);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',1,62,3);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',1,82,3);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',2,65,4);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',2,62,4);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',2,82,4);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',3,65,5);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',3,62,5);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',3,82,5);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',4,65,6);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',4,62,6);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',4,82,6);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',5,65,7);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',5,62,7);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',5,82,7);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',6,65,8);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',6,62,8);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',6,82,8);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Summative1',6,65,9);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('Formative1',6,62,9);
insert into [Pretoria].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ('International1',6,82,9);



