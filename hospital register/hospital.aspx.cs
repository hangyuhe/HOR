using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    
    public partial class hospital : System.Web.UI.Page
    {
        public string hospital_name;
        public static string yiyuan;
        protected void Page_Load(object sender, EventArgs e)
        {
            hospital_name = Request.QueryString["hospital_name"];
            Label1.Text = hospital_name;
            yiyuan = hospital_name;
        }
        public static string keshi;

        protected void Button1_Click(object sender, EventArgs e)
        {
            keshi = DropDownList1.SelectedItem.ToString();
           // Response.Write("<script>alert(a)</script>");
            Response.Redirect("doctor.aspx",false);
            
            
        }

        
    }
}