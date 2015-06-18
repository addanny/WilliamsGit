using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms();

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFName.Text = "";
        txtLName.Text = "";
        txtAddress.Text = "";
        txtCity.Text = "";
        ddState.SelectedIndex = 0;
        txtZip.Text = "";
        txtEmail.Text = "";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtFName.Text = "";
        txtLName.Text = "";
        txtAddress.Text = "";
        txtCity.Text = "";
        ddState.SelectedIndex = 0;
        txtZip.Text = "";
        txtEmail.Text = "";
        Response.Redirect("~/Home.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(s))
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.tblcustomer (Fname, Lname, Address, City, Zip, State, Email) VALUES (@Fname, @LName, @Address, @City, @Zip, @State, @Email)");
            cmd.CommandType = CommandType.Text;
            cmd.Connection = connection;
            cmd.Parameters.AddWithValue("@FName", txtFName.Text);
            cmd.Parameters.AddWithValue("@LName", txtLName.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text);
            cmd.Parameters.AddWithValue("@State", ddState.SelectedValue);
            cmd.Parameters.AddWithValue("@Zip", txtZip.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            connection.Open();
            cmd.ExecuteNonQuery();
        }

        MessageBox.Show("Customer Added Successfully", "Success!");

        txtFName.Text = "";
        txtLName.Text = "";
        txtAddress.Text = "";
        txtCity.Text = "";
        ddState.SelectedIndex = 0;
        txtZip.Text = "";
        txtEmail.Text = "";
        Response.Redirect("~/Home.aspx");
    }
}