using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        TextBox1.Visible = false;
        Label2.Visible = false;
        TextBox2.Visible = false;
        LinkButton2.Visible = false;
        LinkButton3.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox2.Text != "")
        {
            TextBox2.Visible = true;
            LinkButton3.Visible = true;
        Label1.Visible = true;
        TextBox1.Visible = true;
        TextBox1.Focus();
        LinkButton2.Visible = true;
        }
        Label1.Visible = true;
        TextBox1.Visible = true;
        TextBox1.Focus();
        LinkButton2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            TextBox1.Visible = true;
            LinkButton2.Visible = true;
            Label2.Visible = true;
            TextBox2.Visible = true;
            TextBox2.Focus();
            LinkButton3.Visible = true;
        }
        Label2.Visible = true;
        TextBox2.Visible = true;
        TextBox2.Focus();
        LinkButton3.Visible = true;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}