using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class hospital_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = hospital_log_in.yiyuan;
            TextBox1.Text = "b";
            TextBox2.Text = "c";
            TextBox3.Text = "d";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('修改信息成功!')</script>");
        }
    }
}