using AdminConsole.IRepository;
using AdminConsole.Models;
using MCC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dapper;
using System.Data;

namespace AdminConsole.Repository
{
    public class repository : Connection, Irepository
    {
        SqlConnection con = connectioncreate();

        public int inserMenuforUser(Commonclass commonclass)
        {
            int result = 0;
            var p = new DynamicParameters();
            p.Add("@menuid", commonclass.intmanuid);
            p.Add("@userid", commonclass.intuserid);
            p.Add("@permission", commonclass.intPermission);
            p.Add("@intmsgout", dbType: DbType.Int32, direction: ParameterDirection.Output);

            int output = con.Query<int>("Usp_AdminConsoleUserInsert", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

            result = p.Get<int>("@intmsgout");

            return result;
        }


        public List<Commonclass> listofmenuandsubmenu(int submenuid, int userid)
        {
            List<Commonclass> list = new List<Commonclass>();
            try
            {




                list = con.Query<Commonclass>("select * from M_adminconsole a inner join m_t_AdminConsole b on a.intmanuid=b.menuid where a.intdeletedflag=0 and a.intuserid=" + userid+" and b.Submenuid="+submenuid+"", commandType: CommandType.Text).ToList();


            }
            catch (Exception ex)
            {

            }
            return list;
        }
        public List<Commonclass> listofmenuandsubmenuUserInsert(int submenuid)
        {
            List<Commonclass> list = new List<Commonclass>();
            try
            {




                list = con.Query<Commonclass>("select * from m_t_AdminConsole where  Submenuid=" + submenuid+"", commandType: CommandType.Text).ToList();


            }
            catch (Exception ex)
            {

            }
            return list;
        }


        public List<Commonclass> listuser()
        {
            List<Commonclass> list = new List<Commonclass>();
            try
            {




                list = con.Query<Commonclass>("select * from M_USER where intDeletedflag=0", commandType: CommandType.Text).ToList();


            }
            catch (Exception ex)
            {

            }
            return list;
        }

        public Commonclass userlogin(string username, string password)
        {
            Commonclass comobj = new Commonclass();
            try
            {
                comobj = con.Query<Commonclass>("  select * from m_user where vchusername='"+username+"' and vchPassword='"+password+"' and intDeletedflag=0", commandType: CommandType.Text).FirstOrDefault();
            }
            catch(Exception ex)
            {

            }
            return comobj;
        }
    }
}
