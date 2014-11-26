using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserContext
/// </summary>
namespace Web_Dev_Coursework.App_Code
{
    public class UserContext:DbContext
    {
        public UserContext(): base("Web_Dev_Coursework")
        {

        }

        public DbSet<UserMenu> UserMenus { get; set; }
        public DbSet<UserInfo> UserInfos { get; set; }
    }
}