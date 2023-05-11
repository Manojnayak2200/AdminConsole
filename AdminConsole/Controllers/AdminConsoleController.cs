using AdminConsole.IRepository;
using AdminConsole.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AdminConsole.Controllers
{
    public class AdminConsoleController : Controller
    {
        public Irepository _irepository;
        public AdminConsoleController(Irepository irepository)
        {
            _irepository = irepository;
        }
        public IActionResult Index()
        {
            return View();
        }
      
        
        public IActionResult Listofuser()
        {
            List<Commonclass> list = new List<Commonclass>();
            try
            {
               
                list = _irepository.listuser();
                return Json(list);
            }
            catch(Exception ex)
            {
                Log.SaveLogErrorOrMesage("AdminConsole", "Listofuser", ex.Message);
                return Json(list);
            }
          
        }
        [HttpPost]
        public IActionResult listmenuandsubmenu(int id, int userid)
        {
            List<Commonclass> list = new List<Commonclass>();
            try
            {
                list = _irepository.listofmenuandsubmenu(id, userid);
                return Json(list);
            }
            catch(Exception ex)
            {
                Log.SaveLogErrorOrMesage("AdminConsole", "listmenuandsubmenu", ex.Message);
                return Json(list);
            }
          
            
        }
        [HttpPost]
        public IActionResult listmenuandsubmenuinsert(int id)
        {
            List<Commonclass> list = new List<Commonclass>();
            try
            {
                list = _irepository.listofmenuandsubmenuUserInsert(id);
                return Json(list);

            }
            catch(Exception ex)
            {
                Log.SaveLogErrorOrMesage("AdminConsole", "listmenuandsubmenuinsert", ex.Message);
                return Json(list);
            }
         
        }
        public IActionResult Insertusermenu()
        {
            return View();
        }
        [HttpPost]
        public IActionResult insertMemuToUser(int id,string menu)
        {
            int result = 0;
            char[] menuaray = menu.ToCharArray();
            List<int> TagIds = menu.Split(',').Select(int.Parse).ToList();
            try
            {
                Commonclass obj = new Commonclass();
                obj.intuserid = id;
                for (int i = 0; i < TagIds.Count; i++)
                {
                    obj.intmanuid = Convert.ToInt32(TagIds[i]);
                    result = _irepository.inserMenuforUser(obj);
                }
                return Json(result);
            }
            catch(Exception ex)
            {
                Log.SaveLogErrorOrMesage("AdminConsole", "insertMemuToUser", ex.Message);
                return Json(result);
            }
          


           
        }

        public IActionResult Login()
        {

            return View();
        }
        [HttpPost]
        
        public IActionResult Loginsuccess(string uname,string password,string Captcha)
        {
            Log.SaveLogErrorOrMesage("AdminConsole", "Loginsuccess", "Login Method Call");
            string url = "";
            Commonclass obj = new Commonclass();
            try
            {
                string captchsession = HttpContext.Session.GetString("captcha");
                if(captchsession != Captcha)
                {
                    return Json(4);
                }

                obj = _irepository.userlogin(uname, password);
                if(obj != null)
                {
                    HttpContext.Session.SetString("Username", obj.vchUserName);
                    HttpContext.Session.SetString("userid", obj.userId.ToString());
                    url = " /AdminConsole/Dashboard";

                    Log.SaveLogErrorOrMesage("AdminConsole", "Loginsuccess", ""+obj.vchUserName+" Login Success ");

                    return Json(url);
                }
                else
                {
                    return Json(1);
                }


               
              
            }
            catch(Exception ex)
            {
                Log.SaveLogErrorOrMesage("AdminConsole", "Loginsuccess",ex.Message);
                return Json(2);
            }
            
        }

        public IActionResult Dashboard()
        {
            return View();
        }

        public IActionResult Logoutuser()
        {
            Log.SaveLogErrorOrMesage("AdminConsole", "Logout", "Logout Call");
            string url="";
            try
            {
                HttpContext.Session.Remove("Username");
                HttpContext.Session.Remove("userid");
                HttpContext.Session.Remove("captcha");
                
                url = "../AdminConsole/login";
            }
            catch(Exception ex)
            {
                Log.SaveLogErrorOrMesage("AdminConsole", "Logoutuser", ex.Message);
            }
            
            return Json(url);
        }

        public IActionResult captchanumber()
        {
            Random res = new Random();

            // String that contain both alphabets and numbers
            String str = "abcdefghijklmnopqrstuvwxyz0123456789";
            int size = 6;

            // Initializing the empty string
            String randomstring = "";

            for (int i = 0; i < size; i++)
            {

                // Selecting a index randomly
                int x = res.Next(str.Length);

                // Appending the character at the 
                // index to the random alphanumeric string.
                randomstring = randomstring + str[x];
            }

            //Console.WriteLine("Random alphanumeric String:" + randomstring);

            HttpContext.Session.SetString("captcha", randomstring);
            return Json(randomstring);
        }
      
        
    }
}
