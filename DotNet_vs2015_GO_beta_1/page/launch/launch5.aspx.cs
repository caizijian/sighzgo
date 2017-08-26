﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("../system/login.aspx", false);
                return;
            }

        }
        protected void Button1_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("../system/Home.html", false);
            return;
        }
    }
}