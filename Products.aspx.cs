using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        txtTShirtQty.Visible = false;
        Label2.Visible = false;
        txtPlaqueQty.Visible = false;
        linkTShirtAdd.Visible = false;
        linkPlaqueAdd.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(txtPlaqueQty.Text != "")
        {
            txtPlaqueQty.Visible = true;
            linkPlaqueAdd.Visible = true;
        Label1.Visible = true;
        txtTShirtQty.Visible = true;
        txtTShirtQty.Focus();
        linkTShirtAdd.Visible = true;
        }
        Label1.Visible = true;
        txtTShirtQty.Visible = true;
        txtTShirtQty.Focus();
        linkTShirtAdd.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtTShirtQty.Text != "")
        {
            txtTShirtQty.Visible = true;
            linkTShirtAdd.Visible = true;
            Label2.Visible = true;
            txtPlaqueQty.Visible = true;
            txtPlaqueQty.Focus();
            linkPlaqueAdd.Visible = true;
        }
        Label2.Visible = true;
        txtPlaqueQty.Visible = true;
        txtPlaqueQty.Focus();
        linkPlaqueAdd.Visible = true;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void linkPlaqueAdd_Click(object sender, EventArgs e)
    {
        String plaqueQuantity = txtPlaqueQty.ToString();
        
        
    }
}