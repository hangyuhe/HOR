using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
namespace hospital_register
{
    public partial class doctor : System.Web.UI.Page
    {
        public static string keshi;
        protected void Page_Load(object sender, EventArgs e)
        {
            keshi = Request.QueryString["department_name"];
            Label1.Text = keshi;
        }

        
    }
}