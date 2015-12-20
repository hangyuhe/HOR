using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class hospital_register : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(log_in.huanzhe == null)
            {
                Lable_user_name.Text = "请登录";
            }
            else
            {
                Lable_user_name.Text = log_in.huanzhe;
            }
        }

        protected void LinkButton_signin_Click(object sender, EventArgs e)
        {
            Response.Redirect("log in.aspx", true);
            LinkButton_signin.Visible = false;
        }

        protected void LinkButton_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("log2.aspx",true);
        }
    }
}