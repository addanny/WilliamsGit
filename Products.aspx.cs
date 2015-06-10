using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
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
    }

    //im going to assume that this is the "Buy" button for the plaques. this has since been renamed
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        txtTShirtQty.Visible = true;
        txtTShirtQty.Focus();
        linkTShirtAdd.Visible = true;
    }

    //im going to assume that this is the "Buy" button for the tshirts. this has since been renamed
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        txtPlaqueQty.Visible = true;
        txtPlaqueQty.Focus();
        linkPlaqueAdd.Visible = true;
    }

    //i am unsure what these two functions are being used for. will leave them be for now
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    //will add the qty of the tshirts to the shop page. will catch non-integers
    protected void linkPlaqueAdd_Click(object sender, EventArgs e)
    {
        int intOutput = 0;
        lblPlaqueWarning.Visible = false;

        if (int.TryParse(txtPlaqueQty.Text, out intOutput))
        {
            txtPlaqueQty.Text = "yay";
        }
        else
        {
            lblPlaqueWarning.Visible = true;
            lblPlaqueWarning.Text = "Please enter a valid number";
        }
    }

    //will add the qty of the tshirts to the shop page. will catch non-integers
    protected void linkTShirtAdd_Click(object sender, EventArgs e)
    {
       
    }

    //button that is being used to test the syntax/logic - delete or make hidden when done
    protected void Button3_Click(object sender, EventArgs e)
    {
        int intOutput = 0;
        lblPlaqueWarning.Visible = false;

        if (int.TryParse(txtPlaqueQty.Text, out intOutput))
        {
            txtPlaqueQty.Text = "yay";
        }
        else
        {
            lblPlaqueWarning.Visible = true;
            lblPlaqueWarning.Text = "Please enter a valid number";
        }
    }
}