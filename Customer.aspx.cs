/**
*Senior Project
*Group B
*May Session 2015
*CIS470
*Brad Busch, David Dalloo, Ionut Sava, Christina Roark, Jose Morales
 **/

using System;
using System.Collections.Generic;
using System.Data;
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

    }

    //determine what happens when you hit the reset buttons : resets all of the fields
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFName.Text = "";
        txtLName.Text = "";
        txtAddress.Text = "";
        txtCity.Text = "";
        ddState.SelectedIndex = 0;
        txtZip.Text = "";
        txtEmail.Text = "";
        txtFName.Focus(); //throws cursor back on the first text box
    }

    //erases all data from the txt forms - asks for confirmation and if yes sends user home to start all over
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        DialogResult cancelForm = MessageBox.Show("Are you sure you want to cancel?" , "Cancel Confirmation", MessageBoxButtons.YesNo);
        if (cancelForm == DialogResult.Yes)
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
    }

    //time to add the data to the customer database
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //declare variables
        string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //connect code to the databse
        using (SqlConnection connection = new SqlConnection(s))
        {
            //gather the values
            SqlCommand addCustomer = new SqlCommand("INSERT INTO dbo.tblcustomer (Fname, Lname, Address, City, Zip, State, Email) VALUES (@Fname, @LName, @Address, @City, @Zip, @State, @Email)");
            addCustomer.CommandType = CommandType.Text;
            addCustomer.Connection = connection;
            addCustomer.Parameters.AddWithValue("@FName", txtFName.Text);
            addCustomer.Parameters.AddWithValue("@LName", txtLName.Text);
            addCustomer.Parameters.AddWithValue("@Address", txtAddress.Text);
            addCustomer.Parameters.AddWithValue("@City", txtCity.Text);
            addCustomer.Parameters.AddWithValue("@State", ddState.SelectedValue);
            addCustomer.Parameters.AddWithValue("@Zip", txtZip.Text);
            addCustomer.Parameters.AddWithValue("@Email", txtEmail.Text);
            connection.Open();
            addCustomer.ExecuteNonQuery();
        }

        //display message of great success
        MessageBox.Show("Customer Added Successfully", "Success!");

        //reset text boxes
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