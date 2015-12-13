using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class hospital_log_in : System.Web.UI.Page
    {
        public static string yiyuan;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text=="a"&&TextBox2.Text=="a")
            {
                Response.Redirect("hospital edit.aspx", true);
                yiyuan = TextBox1.Text;
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误!')</script>");
            }
        }
    }
}