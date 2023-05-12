using AdminConsole.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AdminConsole.IRepository
{
    public interface Irepository
    {
        List<Commonclass> listuser();
       
        List<Commonclass> listofmenuandsubmenu(int submenuid, int userid);

        List<Commonclass> listofmenuandsubmenuUserInsert(int submenuid);

      int inserMenuforUser(Commonclass commonclass);
        Commonclass userlogin(string username, string password);

        List<Commonclass> ListOfMainMenu();

       int insertMainmenu(Commonclass Commonclass);
        int deleteMainmenu(int menuid);
        Commonclass getmenubymenuid(int id);

    }
}
