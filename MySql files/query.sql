USE gwsis;

SELECT co.CourseCode
	  ,co.CourseName
	  ,c.Section
      ,c.StartDate
FROM class c
	INNER JOIN course co
    ON c.ID_Course=co.ID_Course
    
SELECT * FROM staffassignment sa
    
SELECT 
	c.CourseName,
    cl.Section, 
    s.FirstName,
    s.LastName,
    i.FirstName,
    i.LastName
FROM course c INNER JOIN class cl
ON c.ID_Course=cl.ID_Course
INNER JOIN classparticipant cp
ON cp.ID_Class=cl.ID_Class
INNER JOIN student s
ON cp.ID_Student=s.ID_Student
INNER JOIN staffassignment sa
ON sa.ID_Class=cl.ID_Class
INNER JOIN staff i 
ON sa.ID_staff=i.ID_staff
WHERE c.CourseName = 'Data Visualization and Analytics'






