using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Dapper;
using Microsoft.Extensions.Configuration;

namespace MCC.Models
{
    public class Connection
    {


        public static SqlConnection connectioncreate()
        {

            SqlConnection con = new SqlConnection(@"Data Source=CSMBHUL562\SQLEXPRESS;database=Adminconsole;Integrated Security=True");
            if (con.State == ConnectionState.Closed)
                try
                {

                    {
                        con.Open();
                    }
                }
                catch (Exception ex)
                {

                }

            return con;

        }
    }
}
