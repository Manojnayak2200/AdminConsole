using MCC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Dapper;

namespace AdminConsole.Models
{
    public class Log: Connection
    {
     public static  SqlConnection con = connectioncreate();

        public static void SaveLogErrorOrMesage(string Controller ,string ActionMethodname,string exceptionMessage)
        {
    
            var p = new DynamicParameters();
            p.Add("@vchControllerName", Controller);
            p.Add("@vchActionMethodName",ActionMethodname );
            p.Add("@vchExceptionMessage", exceptionMessage);
            
            int output = con.Query<int>("M_USP_LOG", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

           

          
        }
       
    }
}
