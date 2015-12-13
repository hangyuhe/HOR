using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
   
    public partial class main_form : System.Web.UI.Page
    {
     
        
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (log_in.huanzhe != null)
            {
                Label2.Text = log_in.huanzhe;
                 Button1.Visible = false;
                 Label1.Visible = true;
                 Label2.Visible = true;
                 Button2.Visible = true;
                 Button3.Visible = true;
            } 
            else
            {
                Button1.Visible = true;
                Label1.Visible = false;
                Label2.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("log in.aspx", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            log_in.huanzhe = null;
            Response.Redirect("main form.aspx",true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("personal data.aspx", true);
        }

        

        
    }
}