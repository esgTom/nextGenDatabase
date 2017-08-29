USE next_Gen
GO

--  Uncomment to reload Code table,  
DELETE Code_Detail
DELETE Code
GO

DECLARE @pkValue int = 0;


INSERT INTO Code(Code_Name, Created_By, Created_Date, Modified_By, Modified_Date)  VALUES('Template Types','DB Load', GETDATE(), 'DB Load', GETDATE())
SET @pkValue = @@IDENTITY;

INSERT INTO Code_Detail(Code_Id ,Code_Value, Code_Description, Created_By, Created_Date, Modified_By,  Modified_Date)
     VALUES( @pkValue, 'Client','Client Templates', 'DB Load', GETDATE(), 'DB Load', GETDATE() )
      
INSERT INTO Code_Detail(Code_Id ,Code_Value, Code_Description, Created_By, Created_Date, Modified_By,  Modified_Date)
     VALUES( @pkValue, 'API','API Templates', 'DB Load', GETDATE(), 'DB Load', GETDATE() )

INSERT INTO Code_Detail(Code_Id ,Code_Value, Code_Description, Created_By, Created_Date, Modified_By,  Modified_Date)
VALUES( @pkValue, 'SQL','SQL Templates', 'DB Load', GETDATE(), 'DB Load', GETDATE() )


GO

SELECT * FROM CODE
SELECT * FROM Code_Detail

SELECT	c.Code_Name,
		cd.Code_Value,
		cd.Code_Description
FROM	Code c INNER JOIN Code_Detail cd
  ON	c.Code_Id = cd.Code_Id
		