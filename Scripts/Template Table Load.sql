USE next_Gen
GO

DELETE Template
GO 

INSERT INTO TEMPLATE(Template_Category, Template_Name, Template_Text, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','Controller',
'using nextGenAPI.DataAccess.Codes;
using System.Web.Http;
using System.Web.Http.Cors;','DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Template_Text, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','Repository',
'namespace nextGenAPI.DataAccess.Codes {
    internal class CodeRepository : RepositoryBase  {','DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Template_Text, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','DTO',
'using System;
namespace nextGenAPI.DataAccess.Codes {
    public class Code {}','DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Template_Text, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('API','Command Factory',
'using System.Data.SqlClient;
namespace nextGenAPI.DataAccess.Codes.DataAccess {
    public class CodeCommandFactory {
        internal SqlCommand GetCodes(SqlConnection connection) {
            var queryString = @"
            ";
            var cmd = new SqlCommand(Common.Helpers.CleanSQLText(queryString), connection);
            return cmd;
        }
    }
}','DB LOAD',GETDATE(),'DB LOAD', GETDATE())



INSERT INTO TEMPLATE(Template_Category, Template_Name, Template_Text, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('Client','DTO','export class {}','DB LOAD',GETDATE(),'DB LOAD', GETDATE())

INSERT INTO TEMPLATE(Template_Category, Template_Name, Template_Text, Created_By, Created_Date, Modified_By, Modified_Date)
	VALUES('Client','Data Service',
'import { Injectable } from ''@angular/core'';
import { HttpClient, HttpErrorResponse } from ''@angular/common/http'';
import { environment } from ''../../environments/environment'';
import { Code } from ''../_models/code'';
import { Observable } from ''rxjs/Observable'';

@Injectable()
export class NextGenDataService {
  codes: Observable<Code[]>;
  constructor( private http: HttpClient) { }
  getCodes() {
      return this.http
        .get<Code[]>(environment.nextGenAPICodeUrl);
    }
}
',
'DB LOAD',GETDATE(),'DB LOAD', GETDATE())


GO




SELECT * FROM Template


