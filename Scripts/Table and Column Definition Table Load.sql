USE next_Gen
GO

--  Uncomment to reload Code table,  
DELETE Column_Definition
DELETE Table_Definition
GO

DECLARE @pkValue int = 0;

INSERT INTO Table_Definition(Table_Name,Created_By,Created_Date,Modified_By,Modified_Date) VALUES('Workout','DB Load', GETDATE(), 'DB Load', GETDATE())
SET @pkValue = @@IDENTITY;

INSERT INTO Column_Definition(
			Table_Id, Column_Name, Column_Description, Column_SQL_Data_Type, Column_API_Data_Type, Column_Client_Data_Type, 
			Column_Length, Column_Decimal_Places, Column_SQL_Name, Column_API_Name, Column_Client_Name, 
			Created_By, Created_Date, Modified_By,  Modified_Date)
     VALUES( @pkValue, 'Workout Identity','Workout Identity','int','int','Number', 
			NULL, NULL, 'Workout_Id','WorkoutId','WorkoutId','DB Load', 
			GETDATE(), 'DB Load', GETDATE() )

INSERT INTO Column_Definition(
			Table_Id, Column_Name, Column_Description, Column_SQL_Data_Type, Column_API_Data_Type, Column_Client_Data_Type, 
			Column_Length, Column_Decimal_Places, Column_SQL_Name, Column_API_Name, Column_Client_Name, 
			Created_By, Created_Date, Modified_By,  Modified_Date)
     VALUES( @pkValue, 'Workout Type','Workout Type - bike, weights, swim, etc','varchar(50)','String','String', 
			50, NULL, 'Workout_Type','WorkoutType','WorkoutType','DB Load', 
			GETDATE(), 'DB Load', GETDATE() )

		

INSERT INTO Table_Definition(Table_Name,Created_By,Created_Date,Modified_By,Modified_Date) VALUES('Schedule','DB Load', GETDATE(), 'DB Load', GETDATE())
SET @pkValue = @@IDENTITY;

INSERT INTO Column_Definition(
			Table_Id, Column_Name, Column_Description, Column_SQL_Data_Type, Column_API_Data_Type, Column_Client_Data_Type, 
			Column_Length, Column_Decimal_Places, Column_SQL_Name, Column_API_Name, Column_Client_Name, 
			Created_By, Created_Date, Modified_By,  Modified_Date)
     VALUES( @pkValue, 'Schedule Identity','Schedule Identity','int','int','Number', 
			NULL, NULL, 'Schedule_Id','ScheduleId','ScheduleId','DB Load', 
			GETDATE(), 'DB Load', GETDATE() )

INSERT INTO Column_Definition(
			Table_Id, Column_Name, Column_Description, Column_SQL_Data_Type, Column_API_Data_Type, Column_Client_Data_Type, 
			Column_Length, Column_Decimal_Places, Column_SQL_Name, Column_API_Name, Column_Client_Name, 
			Created_By, Created_Date, Modified_By,  Modified_Date)
     VALUES( @pkValue, 'Schedule Category','What is being scheduled - workouts, nutrition','varchar(50)','String','String', 
			50, NULL, 'ScheduleCategory','ScheduleCategory','ScheduleCategory','DB Load', 
			GETDATE(), 'DB Load', GETDATE() )

			
GO

SELECT * FROM Table_Definition
SELECT * FROM Column_Definition

SELECT	t.Table_Name,
		cd.Column_Name
FROM	Table_Definition t INNER JOIN Column_Definition cd
  ON	t.Table_Id = cd.Table_Id
		