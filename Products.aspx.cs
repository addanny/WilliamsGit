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

public partial class Products : Page
{

    //keep textboxes hidden until prompted by the user
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        txtTShirtQty.Visible = false;
        Label2.Visible = false;
        txtPlaqueQty.Visible = false;
        linkTShirtAdd.Visible = false;
        linkPlaqueAdd.Visible = false;
        lblEngrave.Visible = false;
        txtPEngrave.Visible = false;
        lblEngrave0.Visible = false;
        txtTEngrave.Visible = false;

        
    }

    //im going to assume that this is the "Buy" button for the plaques. this has since been renamed
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["UserAuthentication"] != null)
        {
            Label2.Visible = true;
            txtPlaqueQty.Visible = true;
            txtPlaqueQty.Focus();
            linkPlaqueAdd.Visible = true;
            lblEngrave.Visible = true;
            txtPEngrave.Visible = true;
            
        }
        else
        {
            MessageBox.Show("Please log-in to purchase items");
        }
        
    }

    //im going to assume that this is the "Buy" button for the tshirts. this has since been renamed
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["UserAuthentication"] != null)
        {
            Label1.Visible = true;
            txtTShirtQty.Visible = true;
            txtTShirtQty.Focus();
            linkTShirtAdd.Visible = true;
            lblEngrave0.Visible = true;
            txtTEngrave.Visible = true; 
        }
        else
        {
            MessageBox.Show("Please log-in to purchase items");
            Response.Redirect("~/Login.aspx");           
        }
    }

    //i am unsure what these two functions are being used for. will leave them be for now
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    //will add the qty of the tshirts to the shop page. will catch non-integers
    protected void linkTShirtAdd_Click(object sender, EventArgs e)
    {
        int intOutput = 0;
        lblTShirtWarning.Visible = false;

        //determine that the value is parsable - if it is, assign values. Else, display error
        if (int.TryParse(txtTShirtQty.Text, out intOutput))
        {
            ProductClass.productName = "T-Shirt";
            ProductClass.productPrice = 10;
            ProductClass.productQty = Int32.Parse(txtTShirtQty.Text);
            if (txtTEngrave.Text != null)
            {
                ProductClass.productEngraving = txtTEngrave.Text;
            }
            else
            {
                ProductClass.productEngraving = " ";
            }
            //price of tshirts
            int totalTShirtPrice = ProductClass.productPrice * ProductClass.productQty;
            String displayOrder = ProductClass.productName 
                + "\nQuantity: " + ProductClass.productQty.ToString() 
                + "\nEngraving: " + ProductClass.productEngraving
                + "\nTotal Price: " + totalTShirtPrice.ToString("C2") 
                + "\n\n\nIs this correct?";
            //display summary of the order
            DialogResult orderReviewDialog = MessageBox.Show(displayOrder, "Order Review", MessageBoxButtons.YesNo);
            if (orderReviewDialog == DialogResult.Yes)
            {
                //declare variables
                string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                //connect code to the databse
                using (SqlConnection connection = new SqlConnection(s))
                {
                    //gather the values
                    SqlCommand addTShirtOrder = new SqlCommand("INSERT INTO dbo.tblOrders (ItemId, ItemQty, orderEngrave) VALUES (@ItemID, @ItemQty, @Engrave)");
                    addTShirtOrder.CommandType = CommandType.Text;
                    addTShirtOrder.Connection = connection;
                    addTShirtOrder.Parameters.AddWithValue("@ItemID", "1");
                    addTShirtOrder.Parameters.AddWithValue("@ItemQty", ProductClass.productQty);
                    addTShirtOrder.Parameters.AddWithValue("@Engrave", txtTEngrave.Text);
                    connection.Open();
                    addTShirtOrder.ExecuteNonQuery();
                    connection.Close();
                }
                //display message of great success
                MessageBox.Show("Order Added Successfully", "Success!");
                Response.Redirect("~/Customer.aspx");
            }
        }
        else
        {
            lblTShirtWarning.Visible = true;
            lblTShirtWarning.Text = "Please enter a valid number";
            txtTShirtQty.Text = "";
        }
    }

    //button that is being used to test the syntax/logic - delete or make hidden when done
    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }

    //will add the qty of the plaques to the shop page. will catch non-integers
    protected void linkPlaqueAdd_Click(object sender, EventArgs e)
    {
        int intOutput = 0;
        lblPlaqueWarning.Visible = false;

        //determine that the value is parsable - if it is, assign values. Else, display error
        if (int.TryParse(txtPlaqueQty.Text, out intOutput))
        {
            ProductClass.productName = "Plaque";
            ProductClass.productPrice = 20;
            ProductClass.productQty = Int32.Parse(txtPlaqueQty.Text);
            if (txtPEngrave.Text != null)
            {
                ProductClass.productEngraving = txtPEngrave.Text;
            }
            else
            {
                ProductClass.productEngraving = " ";
            }
            //price of plaques
            int totalPlaquePrice = ProductClass.productPrice * ProductClass.productQty;
            String displayOrder = ProductClass.productName 
                + "\nQuantity: " + ProductClass.productQty.ToString()
                + "\nEngraving: " + ProductClass.productEngraving
                + "\nTotal Price: " + totalPlaquePrice.ToString("C2") 
                + "\n\n\nIs this correct?";
            DialogResult orderReviewDialog = MessageBox.Show(displayOrder, "Order Review", MessageBoxButtons.YesNo);
            if (orderReviewDialog == DialogResult.Yes)
            {
                //declare variables
                string s = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                //connect code to the databse
                using (SqlConnection connection = new SqlConnection(s))
                {
                    //gather the values
                    SqlCommand addPlaqueOrder = new SqlCommand("INSERT INTO dbo.tblOrders (ItemId, ItemQty, orderEngrave) VALUES (@ItemID, @ItemQty, @orderEngrave)");
                    addPlaqueOrder.CommandType = CommandType.Text;
                    addPlaqueOrder.Connection = connection;
                    addPlaqueOrder.Parameters.AddWithValue("@ItemID", "2");
                    addPlaqueOrder.Parameters.AddWithValue("@ItemQty", ProductClass.productQty);
                    addPlaqueOrder.Parameters.AddWithValue("@orderEngrave", ProductClass.productEngraving);                  
                    connection.Open();
                    addPlaqueOrder.ExecuteNonQuery();
                }
                //display message of great success
                MessageBox.Show("Customer Added Successfully", "Success!");
                Response.Redirect("~/Customer.aspx");
            }
        }
        else
        {
            //display warning if int is not entered
            lblPlaqueWarning.Visible = true;
            lblPlaqueWarning.Text = "Please enter a valid number";
            txtTShirtQty.Text = "";
        }
    }
}
