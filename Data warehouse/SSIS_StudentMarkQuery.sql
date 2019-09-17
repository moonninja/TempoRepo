select	s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name,		
		LEFT(SUM(sm.StudentMark_Mark),2) as Mark,
        '1' as Campus_ID,
        GETDATE() as Mark_Date,
		IIF(LEFT(SUM(sm.StudentMark_Mark),2) > 50,'Pass','Fail') as Mark_Pass
from [TestSchema].[LUConnect] luc
join [TestSchema].[Student] s
on luc.Student_ID = s.Student_ID
join [TestSchema].[StudentMarks] sm
on s.Student_ID = sm.Student_ID
join [TestSchema].[Course] c
on luc.Course_ID = c.Course_ID
join [TestSchema].[User] u 
on c.User_ID = u.User_ID
join [TestSchema].[LearningUnit] lu
on c.Course_ID = lu.Course_ID
join [TestSchema].[Summative] summative
on summative.LearningUnit_ID = lu.LearningUnit_ID
join [TestSchema].Formative formative
on formative.LearningUnit_ID = lu.LearningUnit_ID
join [TestSchema].International inter
on inter.LearningUnit_ID = lu.LearningUnit_ID
GROUP BY s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name

		select	s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name,		
		LEFT(SUM(sm.StudentMark_Mark),2) as Mark,
        '5' as Campus_ID,
        GETDATE() as Mark_Date,
		IIF(LEFT(SUM(sm.StudentMark_Mark),2) > 50,'Pass','Fail') as Mark_Pass
from [Rustenburg].[LUConnect] luc
join [Rustenburg].[Student] s
on luc.Student_ID = s.Student_ID
join [Rustenburg].[StudentMarks] sm
on s.Student_ID = sm.Student_ID
join [Rustenburg].[Course] c
on luc.Course_ID = c.Course_ID
join [Rustenburg].[User] u 
on c.User_ID = u.User_ID
join [Rustenburg].[LearningUnit] lu
on c.Course_ID = lu.Course_ID
join [Rustenburg].[Summative] summative
on summative.LearningUnit_ID = lu.LearningUnit_ID
join [Rustenburg].Formative formative
on formative.LearningUnit_ID = lu.LearningUnit_ID
join [Rustenburg].International inter
on inter.LearningUnit_ID = lu.LearningUnit_ID
GROUP BY s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name

		select	s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name,		
		LEFT(SUM(sm.StudentMark_Mark),2) as Mark,
        '2' as Campus_ID,
        GETDATE() as Mark_Date,
		IIF(LEFT(SUM(sm.StudentMark_Mark),2) > 50,'Pass','Fail') as Mark_Pass
from [Pretoria].[LUConnect] luc
join [Pretoria].[Student] s
on luc.Student_ID = s.Student_ID
join [Pretoria].[StudentMarks] sm
on s.Student_ID = sm.Student_ID
join [Pretoria].[Course] c
on luc.Course_ID = c.Course_ID
join [Pretoria].[User] u 
on c.User_ID = u.User_ID
join [Pretoria].[LearningUnit] lu
on c.Course_ID = lu.Course_ID
join [Pretoria].[Summative] summative
on summative.LearningUnit_ID = lu.LearningUnit_ID
join [Pretoria].Formative formative
on formative.LearningUnit_ID = lu.LearningUnit_ID
join [Pretoria].International inter
on inter.LearningUnit_ID = lu.LearningUnit_ID
GROUP BY s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name


		select	s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name,		
		LEFT(SUM(sm.StudentMark_Mark),2) as Mark,
        '4' as Campus_ID,
        GETDATE() as Mark_Date,
		IIF(LEFT(SUM(sm.StudentMark_Mark),2) > 50,'Pass','Fail') as Mark_Pass
from [Polokwane].[LUConnect] luc
join [Polokwane].[Student] s
on luc.Student_ID = s.Student_ID
join [Polokwane].[StudentMarks] sm
on s.Student_ID = sm.Student_ID
join [Polokwane].[Course] c
on luc.Course_ID = c.Course_ID
join [Polokwane].[User] u 
on c.User_ID = u.User_ID
join [Polokwane].[LearningUnit] lu
on c.Course_ID = lu.Course_ID
join [Polokwane].[Summative] summative
on summative.LearningUnit_ID = lu.LearningUnit_ID
join [Polokwane].Formative formative
on formative.LearningUnit_ID = lu.LearningUnit_ID
join [Polokwane].International inter
on inter.LearningUnit_ID = lu.LearningUnit_ID
GROUP BY s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name

		select	s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name,		
		LEFT(SUM(sm.StudentMark_Mark),2) as Mark,
        '3' as Campus_ID,
        GETDATE() as Mark_Date,
		IIF(LEFT(SUM(sm.StudentMark_Mark),2) > 50,'Pass','Fail') as Mark_Pass
from [Bloemfontein].[LUConnect] luc
join [Bloemfontein].[Student] s
on luc.Student_ID = s.Student_ID
join [Bloemfontein].[StudentMarks] sm
on s.Student_ID = sm.Student_ID
join [Bloemfontein].[Course] c
on luc.Course_ID = c.Course_ID
join [Bloemfontein].[User] u 
on c.User_ID = u.User_ID
join [Bloemfontein].[LearningUnit] lu
on c.Course_ID = lu.Course_ID
join [Bloemfontein].[Summative] summative
on summative.LearningUnit_ID = lu.LearningUnit_ID
join [Bloemfontein].Formative formative
on formative.LearningUnit_ID = lu.LearningUnit_ID
join [Bloemfontein].International inter
on inter.LearningUnit_ID = lu.LearningUnit_ID
GROUP BY s.Student_ID,s.Student_Name,s.Student_Surname,s.Student_DateOfBirth,
		c.Course_ID,c.Course_Name,
		u.User_ID,u.User_Name
