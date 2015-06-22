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

        switch(Session["UserAuthentication"].ToString())
        {
            case "bbusch":
                {
                    lnkProducts.Visible = true;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = true;
                    lnkUserMgt.Visible = true;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = true;
                    break;
                }
            case "isava":
                {
                    lnkProducts.Visible = true;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = true;
                    lnkUserMgt.Visible = true;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = true;
                    break;
                }
            case "ddalloo":
                {
                    lnkProducts.Visible = true;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = false;
                    lnkUserMgt.Visible = false;
                    lnkInventoryMgt.Visible = false;
                    lnkCustomerMgt.Visible = true;
                    break;
                }
            case "jmorales":
                {
                    lnkProducts.Visible = false;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = false;
                    lnkUserMgt.Visible = false;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = false;
                    break;
                }
            case "croark":
                {
                    lnkProducts.Visible = false;
                    lnkLogin.Visible = true;
                    lnkOrderRvw.Visible = true;
                    lnkUserMgt.Visible = false;
                    lnkInventoryMgt.Visible = true;
                    lnkCustomerMgt.Visible = false;
                    break;
                }
        }
 
    }

    protected void Hyperlink3_Click()
    {
        
    }
}
