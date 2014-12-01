using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectParameters["Id"].DefaultValue = HttpContext.Current.User.Identity.Name;
    }

    protected void UploadButton1_Click(object sender, EventArgs e)
    {
        string saveDir = @"\Files\";

        string appPath = Request.PhysicalApplicationPath;

        if (FormView2.FindControl("FileUpload1") != null)
        {
            FileUpload upload1 = (FileUpload)FormView2.FindControl("FileUpload1");

            // Before attempting to save the file, verify
            // that the FileUpload control contains a file.
            if (upload1.HasFile)
            {
                string savePath = appPath + saveDir +
                Server.HtmlEncode(upload1.FileName);
                upload1.SaveAs(savePath);

                if (FormView2.FindControl("MyCVPathEditTextBox") != null)
                {
                    TextBox MyCVPathEditTextBox = (TextBox)FormView2.FindControl("MyCVPathEditTextBox");
                    MyCVPathEditTextBox.Text = savePath;
                }

                // Notify the user that the file was uploaded successfully.
                if (FormView2.FindControl("UploadStatusLabel1") != null)
                {
                    Label UploadStatusLabel1 = (Label)FormView2.FindControl("UploadStatusLabel1");
                    UploadStatusLabel1.Text = "Your file was uploaded successfully.";
                }
            }
            else
            {
                // Notify the user that a file was not uploaded.
                if (FormView2.FindControl("UploadStatusLabel1") != null)
                {
                    Label UploadLabel1 = (Label)FormView2.FindControl("UploadStatusLabel1");
                    UploadLabel1.Text = "You did not specify a file to upload.";
                }

            }
        }
    }

    protected void UploadButton2_Click(object sender, EventArgs e)
    {
        string saveDir = @"\Files\";

        string appPath = Request.PhysicalApplicationPath;

        if (FormView3.FindControl("FileUpload2") != null)
        {
            FileUpload upload2 = (FileUpload)FormView3.FindControl("FileUpload2");

            // Before attempting to save the file, verify
            // that the FileUpload control contains a file.
            if (upload2.HasFile)
            {
                string savePath = appPath + saveDir +
                Server.HtmlEncode(upload2.FileName);
                upload2.SaveAs(savePath);

                if (FormView3.FindControl("MyCLPathEditTextBox") != null)
                {
                    TextBox MyCLPathEditTextBox = (TextBox)FormView3.FindControl("MyCLPathEditTextBox");
                    MyCLPathEditTextBox.Text = savePath;
                }

                // Notify the user that the file was uploaded successfully.
                if (FormView3.FindControl("UploadStatusLabel2") != null)
                {
                    Label UploadStatusLabel2 = (Label)FormView3.FindControl("UploadStatusLabel2");
                    UploadStatusLabel2.Text = "Your file was uploaded successfully.";
                }
            }
            else
            {
                // Notify the user that a file was not uploaded.
                if (FormView3.FindControl("UploadStatusLabel2") != null)
                {
                    Label UploadLabel2 = (Label)FormView3.FindControl("UploadStatusLabel1");
                    UploadLabel2.Text = "You did not specify a file to upload.";
                }

            }
        }
    }

}