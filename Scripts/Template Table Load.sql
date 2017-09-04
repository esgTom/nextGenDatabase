USE next_Gen
GO

DELETE Template
GO 

INSERT INTO TEMPLATE(Template_Category, Template_Name, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','Controller', 'DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','Repository', 'DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','Model', 'DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','CommandFactory', 'DB LOAD',GETDATE(),'DB LOAD', GETDATE())
		
INSERT INTO TEMPLATE(Template_Category, Template_Name, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('Client','Model','DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('Client','Data Service', 'DB LOAD',GETDATE(),'DB LOAD', GETDATE())


GO




SELECT * FROM Template


