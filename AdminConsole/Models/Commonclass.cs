using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AdminConsole.Models
{
    public class Commonclass
    {
        public int intmanuid { get; set; }
        public string vchMainmenu { get; set; }
        public string intsubmenuid { get; set; }
        public string vchsubmenu { get; set; }

        public int intRoleid { get; set; }

        public int userId { get; set; }
        public string vchUserName { get; set; }
        public int intmainid { get; set; }
        public int MenuId { get; set; }
        public string Menu { get; set; }
        public int Submenuid { get; set; }
        public string MenuUrl { get; set; } = null;
        public int intuserid { get; set; }
        public int intPermission { get; set; }


    }
}
