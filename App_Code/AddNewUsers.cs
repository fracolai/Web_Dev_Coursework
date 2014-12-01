using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Web_Dev_Coursework.App_Code;

/// <summary>
/// Summary description for AddNewUsers
/// </summary>
public class AddNewUsers
{
	public AddNewUsers(string UserName)
	{
        //Setting up UserInfo records for new users
        string currentuser = UserName;

        //getting connection string for Web_Dev_Coursework
        string connStr = ConfigurationManager.ConnectionStrings["Web_Dev_Coursework"].ConnectionString;

        //Establishing connection
        SqlConnection connection = new SqlConnection(connStr);

        //Using Sql command to retrive rows based on UserName (Id)
        SqlCommand command = new SqlCommand("SELECT Id FROM UserInfoes WHERE Id=@Id ;", connection);
        command.Parameters.Add("@Id", SqlDbType.VarChar);
        command.Parameters["@Id"].Value = currentuser;
        UserContext context = new UserContext();
        if (connection != null && connection.State == ConnectionState.Closed && context.Database.Exists())
        {
            //Opening connection
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            //Checks if the User Name is already present in UserInfoes table
            if (!reader.HasRows)
            {
                reader.Close();
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.InsertCommand = new SqlCommand("INSERT INTO UserInfoes (Id,UserMenuID) VALUES (@Id,@UserMenuID)", connection);

                // Create the parameters. Add rows for new User.
                adapter.InsertCommand.Parameters.Add("@Id", SqlDbType.NVarChar, 256, "Id").Value = currentuser;
                adapter.InsertCommand.Parameters.Add("@UserMenuID", SqlDbType.Int, 40, "UserMenuID").Value = 1;
                adapter.InsertCommand.ExecuteNonQuery();

                adapter.InsertCommand.Parameters["@Id"].Value = currentuser;
                adapter.InsertCommand.Parameters["@UserMenuID"].Value = 2;
                adapter.InsertCommand.ExecuteNonQuery();

                adapter.InsertCommand.Parameters["@Id"].Value = currentuser;
                adapter.InsertCommand.Parameters["@UserMenuID"].Value = 3;
                adapter.InsertCommand.ExecuteNonQuery();

                adapter.InsertCommand.Parameters["@Id"].Value = currentuser;
                adapter.InsertCommand.Parameters["@UserMenuID"].Value = 4;
                adapter.InsertCommand.ExecuteNonQuery();

            }
            //Close connection
            connection.Close();
        }
	}
}