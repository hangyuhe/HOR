﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = admin_log_in.id;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_log in.aspx", true);
        }
    }
}