using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Dev_Coursework.App_Code;

public partial class Account_UserMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IQueryable<UserMenu> GetUserMenus()
    {
        var _db = new Web_Dev_Coursework.App_Code.UserContext();
        IQueryable<UserMenu> query = _db.UserMenus;
        return query;
    }
}