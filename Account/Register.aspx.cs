﻿using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using Web_Dev_Coursework;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser() { UserName = UserName.Text };
        IdentityResult result = manager.Create(user, Password.Text);
        if (result.Succeeded)
        {
            AddNewUsers users = new AddNewUsers(UserName.Text);
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //redirects to the search page instead of Home Page
            Response.Redirect("/Search.aspx");
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }
    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }
}