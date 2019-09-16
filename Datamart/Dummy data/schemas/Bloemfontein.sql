/*StudentGaurdian*/
insert into [Bloemfontein].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Lukas', 'China');
insert into [Bloemfontein].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Powell', 'China');
insert into [Bloemfontein].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Katha', 'South Africa');
insert into [Bloemfontein].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Rosetta', 'China');
insert into [Bloemfontein].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Nikolai', 'China');
/*Student*/
insert into [Bloemfontein].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Tristan', 'Briand', '1999-02-08', 1);
insert into [Bloemfontein].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Bonny', 'Asipenko', '1997-05-17', 2);
insert into [Bloemfontein].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Donni', 'Grew', '1999-07-06', 3);
insert into [Bloemfontein].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Derron', 'Regis', '1996-11-03', 4);
insert into [Bloemfontein].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Babita', 'Giovani', '1997-01-05', 5);
insert into [Bloemfontein].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Theda', 'Crosen', '1999-09-18', 6);

/*Users*/
INSERT INTO [Bloemfontein].[User] VALUES('Ben',2,0);
INSERT INTO [Bloemfontein].[User] VALUES('Eileen',408,1);
INSERT INTO [Bloemfontein].[User] VALUES('Rose',298,1);
/*Courses*/
INSERT INTO [Bloemfontein].[Course] VALUES('Accounting',2);
INSERT INTO [Bloemfontein].[Course] VALUES('Ancient Civilizations',2);
INSERT INTO [Bloemfontein].[Course] VALUES('Modern Literature',2);
INSERT INTO [Bloemfontein].[Course] VALUES('Earth Science',3);
INSERT INTO [Bloemfontein].[Course] VALUES('Mathematics',3);
INSERT INTO [Bloemfontein].[Course] VALUES('Instrumental Music',3);
/*LearningUnit*/
insert into [Bloemfontein].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 1);
insert into [Bloemfontein].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 2);
insert into [Bloemfontein].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 3);
insert into [Bloemfontein].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 4);
insert into [Bloemfontein].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 5);
insert into [Bloemfontein].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 6);
/*Summatives-formatives-internationals*/
insert into [Bloemfontein].[Summative] values ("Summative1",1);
insert into [Bloemfontein].[Summative] values ("Summative1",2);
insert into [Bloemfontein].[Summative] values ("Summative1",3);
insert into [Bloemfontein].[Summative] values ("Summative1",4);
insert into [Bloemfontein].[Summative] values ("Summative1",5);
insert into [Bloemfontein].[Summative] values ("Summative1",6);

insert into [Bloemfontein].[Summative] values ("Summative2",1);
insert into [Bloemfontein].[Summative] values ("Summative2",2);
insert into [Bloemfontein].[Summative] values ("Summative2",3);
insert into [Bloemfontein].[Summative] values ("Summative2",4);
insert into [Bloemfontein].[Summative] values ("Summative2",5);
insert into [Bloemfontein].[Summative] values ("Summative2",6);

insert into [Bloemfontein].[Formative] values ("Formative1",1);
insert into [Bloemfontein].[Formative] values ("Formative1",2);
insert into [Bloemfontein].[Formative] values ("Formative1",3);
insert into [Bloemfontein].[Formative] values ("Formative1",4);
insert into [Bloemfontein].[Formative] values ("Formative1",5);
insert into [Bloemfontein].[Formative] values ("Formative1",6);

insert into [Bloemfontein].[International] values ("International1",1);
insert into [Bloemfontein].[International] values ("International1",2);
insert into [Bloemfontein].[International] values ("International1",3);
insert into [Bloemfontein].[International] values ("International1",4);
insert into [Bloemfontein].[International] values ("International1",5);
insert into [Bloemfontein].[International] values ("International1",6);
insert into [Bloemfontein].[International] values ("International1",7);
/*LU Connect*/
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (1, 1);
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (2, 1);
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (3, 1);
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (4, 2);
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (5, 3);
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (6, 4);
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (2, 5);
insert into [Bloemfontein].[LUConnect] (Student_ID, Course_ID) values (4, 6);

/*Student Marks*/
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",1,50,1);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",1,51,1);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",1,55,1);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",1,50,1);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",1,50,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",1,51,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",1,55,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",1,50,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",1,50,3);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",1,51,3);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",1,55,3);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",1,50,3);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",2,50,4);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",2,51,4);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",2,55,4);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",2,50,4);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",3,50,5);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",3,51,5);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",3,55,5);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",3,50,5);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",4,50,6);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",4,51,6);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",4,55,6);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",4,50,6);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",5,50,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",5,51,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",5,55,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",5,50,2);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",6,50,4);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",6,51,4);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",6,55,4);
insert into [Bloemfontein].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",6,50,4);

