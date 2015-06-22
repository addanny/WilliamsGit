﻿/**
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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //display the information if there is an appropriate user - otherwise, do not
        if (((string)Session["UserAuthentication"] == "bbusch") || ((string)Session["UserAuthentication"] == "isava"))
        {
            GridView1.Visible = true;
        }
        else
        {
            GridView1.Visible = false;
        }
    }
}