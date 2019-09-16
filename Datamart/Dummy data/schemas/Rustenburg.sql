/*StudentGaurdian*/
insert into [Rustenburg].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Lukas', 'China');
insert into [Rustenburg].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Powell', 'China');
insert into [Rustenburg].[StudentGaurdian] (StudentGaurdian_Name, StudentGaurdian_CountryOfOrigin) values ('Katha', 'South Africa');
/*Student*/
insert into [Rustenburg].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Taka', 'Pryer', '1997-01-14', 1);
insert into [Rustenburg].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Ival', 'Dabnot', '2001-05-01', 2);
insert into [Rustenburg].[Student] (Student_Name, Student_Surname, Student_DateOfBirth, StudentGaurdian_ID) values ('Fan', 'Bossingham', '1999-07-02', 3);
/*Users*/
INSERT INTO [Rustenburg].[User] VALUES('Admin',2,0);
INSERT INTO [Rustenburg].[User] VALUES('Mays',408,1);
INSERT INTO [Rustenburg].[User] VALUES('Dean',298,1);
/*Courses*/
INSERT INTO [Rustenburg].[Course] VALUES('Music',2);
INSERT INTO [Rustenburg].[Course] VALUES('French',2);
INSERT INTO [Rustenburg].[Course] VALUES('LOGIC',3);
/*LearningUnit*/
insert into [Rustenburg].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 1);
insert into [Rustenburg].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 2);
insert into [Rustenburg].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 1', 3);
insert into [Rustenburg].[LearningUnit] (LearningUnit_Name, Course_ID) values ('LU 2', 3);

/*Summatives-formatives-internationals*/
insert into [Rustenburg].[Summative] values ("Summative1",1);
insert into [Rustenburg].[Summative] values ("Summative1",2);
insert into [Rustenburg].[Summative] values ("Summative1",3);
insert into [Rustenburg].[Summative] values ("Summative2",3);
 
insert into [Rustenburg].[Formative] values ("Formative1",1);
insert into [Rustenburg].[Formative] values ("Formative1",2);
insert into [Rustenburg].[Formative] values ("Formative1",3);
insert into [Rustenburg].[Formative] values ("Formative2",3);

insert into [Rustenburg].[International] values ("International1",1);
insert into [Rustenburg].[International] values ("International1",2);
insert into [Rustenburg].[International] values ("International1",3);
insert into [Rustenburg].[International] values ("International2",3);

/*LU Connect*/
insert into [Rustenburg].[LUConnect] (Student_ID, Course_ID) values (1, 3);
insert into [Rustenburg].[LUConnect] (Student_ID, Course_ID) values (2, 2);
insert into [Rustenburg].[LUConnect] (Student_ID, Course_ID) values (3, 1);
/*Student Marks*/
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",3,65,1);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative2",4,62,1);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",3,65,1);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative2",4,62,1);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",3,65,1);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",4,62,1);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",2,65,2);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",2,62,2);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",2,82,2);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Summative1",1,65,3);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("Formative1",1,62,3);
insert into [Rustenburg].[StudentMarks] (StudentMark_Type,StudentMark_TypeID,StudentMark_Mark,Student_ID) values ("International1",1,82,3);


