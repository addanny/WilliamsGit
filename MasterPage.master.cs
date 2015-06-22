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

public partial class MasterPage : System.Web.UI.MasterPage
{
    
    //display user name at the bottom-left of the screen
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserAuthentication"] != null)
        {
            lblUserName.Text = (string)Session["UserAuthentication"];
        }
        else
        {
            lblUserName.Text = "guest";
        }

        //display the user role and assign the appropriate links
        switch((string)Session["UserAuthentication"])
        {
            case "bbusch":              
                    lnkProducts.Visible = true;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = true;
                    lnkUserMgt.Visible = true;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = true;
                    lblRole.Text = "Operations Mgr";
                    break;              
            case "isava":
                    lnkProducts.Visible = true;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = true;
                    lnkUserMgt.Visible = true;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = true;
                    lblRole.Text = "Operations Mgr";
                    break;
            case "ddalloo":
                    lnkProducts.Visible = true;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = false;
                    lnkUserMgt.Visible = false;
                    lnkInventoryMgt.Visible = false;
                    lnkCustomerMgt.Visible = true;
                    lblRole.Text = "Sales";
                    break;
            case "jamorales":
                    lnkProducts.Visible = false;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = false;
                    lnkUserMgt.Visible = false;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = false;
                    lblRole.Text = "Storeroom";
                    break;
            case "croark":
                    lnkProducts.Visible = false;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = true;
                    lnkUserMgt.Visible = false;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = false;
                    lblRole.Text = "Printer/Engraver";
                    break;
            default:
                {
                    lnkProducts.Visible = true;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = false;
                    lnkUserMgt.Visible = false;
                    lnkInventoryMgt.Visible = false;
                    lnkCustomerMgt.Visible = false;
                    lblRole.Text = "Guest";
                    break;
                }
        }
 
    }

    protected void Hyperlink3_Click()
    {
        
    }
}
