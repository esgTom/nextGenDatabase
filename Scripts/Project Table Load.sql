USE next_Gen
GO

--DELETE Project
-- DELETE Project WHERE Project_Id IN (2,4)
GO 

INSERT INTO Project(Project_Name, Project_Description, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('Testing','Project used during the construction of nextGen', 'DB LOAD',GETDATE(),'DB LOAD', GETDATE())


INSERT INTO Project(Project_Name, Project_Description, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('Training Log','Training Log', 'DB LOAD',GETDATE(),'DB LOAD', GETDATE())

GO


SELECT * FROM Project


--SELECT * FROM Table_Definition
--Update Table_Definition SET Project_Id = XXX