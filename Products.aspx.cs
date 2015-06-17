/**
*Senior Project
*Group B
*May Session 2015
*CIS470
*Brad Busch, David Dalloo, Ionut Sava, Christina Roark, Jose Morales
 **/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Products : Page
{
    
    int totalPlaquePrice = 0;

    //keep textboxes hidden until prompted by the user
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        txtTShirtQty.Visible = false;
        Label2.Visible = false;
        txtPlaqueQty.Visible = false;
        linkTShirtAdd.Visible = false;
        linkPlaqueAdd.Visible = false;
    }

    //im going to assume that this is the "Buy" button for the plaques. this has since been renamed
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        txtPlaqueQty.Visible = true;
        txtPlaqueQty.Focus();
        linkPlaqueAdd.Visible = true;
    }

    //im going to assume that this is the "Buy" button for the tshirts. this has since been renamed
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        txtTShirtQty.Visible = true;
        txtTShirtQty.Focus();
        linkTShirtAdd.Visible = true;
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
            //price of tshirts
            int totalTShirtPrice = ProductClass.productPrice * ProductClass.productQty;
            //display summary of the order
            MessageBox.Show (new Form {TopMost = true},
                "ORDER REVIEW" + "\n_______________________\n"
                + ProductClass.productName + "\n" 
                + "Quantity: " + ProductClass.productQty.ToString() +"\n" 
                + "Total Price: " + totalTShirtPrice.ToString());
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
        Response.Redirect("./Shop.aspx");
    }

    //will add the qty of the plaques to the shop page. will catch non-integers
    protected void linkPlaqueAdd_Click(object sender, EventArgs e)
    {
        int intOutput = 0;
        lblPlaqueWarning.Visible = false;

        //determine that the value is parsable - if it is, assign values. Else, display error
        if (int.TryParse(txtTShirtQty.Text, out intOutput))
        {
            ProductClass.productName = "Plaque";
            ProductClass.productPrice = 10;
            ProductClass.productQty = Int32.Parse(txtPlaqueQty.Text);
            //price of plaques
            int totalPlaquePrice = ProductClass.productPrice * ProductClass.productQty;
            //display summary of the order
            MessageBox.Show(new Form { TopMost = true },
                "ORDER REVIEW" + "\n_______________________\n"
                + ProductClass.productName + "\n"
                + "Quantity: " + ProductClass.productQty.ToString() + "\n"
                + "Total Price: " + totalPlaquePrice.ToString());
        }
        else
        {
            lblPlaqueWarning.Visible = true;
            lblPlaqueWarning.Text = "Please enter a valid number";
            txtTShirtQty.Text = "";
        }
    }
}
