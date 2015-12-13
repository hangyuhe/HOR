using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class log_in : System.Web.UI.Page
    {
        public static string huanzhe;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "a" && TextBox2.Text == "b")

            {
                huanzhe = TextBox1.Text;
                Response.Redirect("main form.aspx", true); 
            }
            else
            {

                Response.Write("<script>alert('用户名或密码错误!')</script>");

            }
                

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("main form.aspx", true);
        }
    }
}