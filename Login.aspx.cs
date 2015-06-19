/**
*Senior Project
*Group B
*May Session 2015
*CIS470
*Brad Busch, David Dalloo, Ionut Sava, Christina Roark, Jose Morales
 **/

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //turn off the login form and display user name when page loads
        if((string)Session["UserAuthentication"] != null)
        {
            lblLoginMsg.Visible = true;
            lblUserName.Text = (string)Session["UserAuthentication"];
            lblUserName.Visible = true;
            btnLogout.Visible = true;
        }
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //declare the variables
        string username = Login1.UserName;
        string pwd = Login1.Password;
        string sqlUserName;
        string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(s);

        //open the connection
        con.Open();
        
        //insert SQL statement
        sqlUserName = "SELECT Username,Password FROM tblLogin WHERE Username ='" + username + "' AND Password ='" + pwd + "'";
        SqlCommand cmd = new SqlCommand(sqlUserName, con);
        string CurrentName = (string)cmd.ExecuteScalar();
        //authenticate user
        if (CurrentName != null)
        {
            //access granted
            Session["UserAuthentication"] = username;
            Session.Timeout = 1000;
            //Response.Redirect("~/Home.aspx");
            con.Close();
        }
        else
        {
            //access denied
            Session["UserAuthentication"] = "";
            con.Close();
        }
    }


    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.Remove("UserAuthentication");

        Session["UserAuthentication"] = null;

        Response.Redirect("~/Login.aspx");
    }
}
