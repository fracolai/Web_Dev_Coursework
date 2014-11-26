using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectParameters["Id"].DefaultValue = HttpContext.Current.User.Identity.Name;
        string menuId = Request.QueryString["id"];
            switch (menuId)
            {
                case "1":
                    FormView1.Row.FindControl("CVPathRow").Visible = false;
                    FormView1.Row.FindControl("CLPathRow").Visible = false;
                    FormView1.Row.FindControl("ALinkRow").Visible = false;
                    if (FormView1.CurrentMode == FormViewMode.Edit)
                    {
                        FormView1.Row.FindControl("CVPathEditRow").Visible = false;
                        FormView1.Row.FindControl("CLPathEditRow").Visible = false;
                        FormView1.Row.FindControl("ALinkEditRow").Visible = false;
                    }
                    break;
                case "2":
                    FormView1.Row.FindControl("IdRow").Visible = false;
                    FormView1.Row.FindControl("FirstNameRow").Visible = false;
                    FormView1.Row.FindControl("LastNameRow").Visible = false;
                    FormView1.Row.FindControl("EmailIdRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberRow").Visible = false;
                    FormView1.Row.FindControl("CountryRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberRow").Visible = false;
                    FormView1.Row.FindControl("PostCodeRow").Visible = false;
                    FormView1.Row.FindControl("CLPathRow").Visible = false;
                    FormView1.Row.FindControl("ALinkRow").Visible = false;
                    FormView1.Row.FindControl("IdEditRow").Visible = false;
                    FormView1.Row.FindControl("FirstNameEditRow").Visible = false;
                    FormView1.Row.FindControl("LastNameEditRow").Visible = false;
                    FormView1.Row.FindControl("EmailIdEditRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberEditRow").Visible = false;
                    FormView1.Row.FindControl("CountryEditRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberEditRow").Visible = false;
                    FormView1.Row.FindControl("PostCodeEditRow").Visible = false;
                    FormView1.Row.FindControl("CLPathEditRow").Visible = false;
                    FormView1.Row.FindControl("ALinkEditRow").Visible = false;
                    break;
                case "3":
                    FormView1.Row.FindControl("IdRow").Visible = false;
                    FormView1.Row.FindControl("FirstNameRow").Visible = false;
                    FormView1.Row.FindControl("LastNameRow").Visible = false;
                    FormView1.Row.FindControl("EmailIdRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberRow").Visible = false;
                    FormView1.Row.FindControl("CountryRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberRow").Visible = false;
                    FormView1.Row.FindControl("PostCodeRow").Visible = false;
                    FormView1.Row.FindControl("CVPathRow").Visible = false;
                    FormView1.Row.FindControl("ALinkRow").Visible = false;
                    FormView1.Row.FindControl("IdEditRow").Visible = false;
                    FormView1.Row.FindControl("FirstNameEditRow").Visible = false;
                    FormView1.Row.FindControl("LastNameEditRow").Visible = false;
                    FormView1.Row.FindControl("EmailIdEditRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberEditRow").Visible = false;
                    FormView1.Row.FindControl("CountryEditRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberEditRow").Visible = false;
                    FormView1.Row.FindControl("PostCodeEditRow").Visible = false;
                    FormView1.Row.FindControl("CVPathEditRow").Visible = false;
                    FormView1.Row.FindControl("ALinkEditRow").Visible = false;
                    break;
                case "4":
                    FormView1.Row.FindControl("IdRow").Visible = false;
                    FormView1.Row.FindControl("FirstNameRow").Visible = false;
                    FormView1.Row.FindControl("LastNameRow").Visible = false;
                    FormView1.Row.FindControl("EmailIdRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberRow").Visible = false;
                    FormView1.Row.FindControl("CountryRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberRow").Visible = false;
                    FormView1.Row.FindControl("PostCodeRow").Visible = false;
                    FormView1.Row.FindControl("CVPathRow").Visible = false;
                    FormView1.Row.FindControl("CLPathRow").Visible = false;
                    FormView1.Row.FindControl("IdEditRow").Visible = false;
                    FormView1.Row.FindControl("FirstNameEditRow").Visible = false;
                    FormView1.Row.FindControl("LastNameEditRow").Visible = false;
                    FormView1.Row.FindControl("EmailIdEditRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberEditRow").Visible = false;
                    FormView1.Row.FindControl("CountryEditRow").Visible = false;
                    FormView1.Row.FindControl("MobileNumberEditRow").Visible = false;
                    FormView1.Row.FindControl("PostCodeEditRow").Visible = false;
                    FormView1.Row.FindControl("CVPathEditRow").Visible = false;
                    FormView1.Row.FindControl("CLPathEditRow").Visible = false;
                    break;
                default:
                    break;

            }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void EditIdTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}