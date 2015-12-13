using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class patient_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow.Cells[2].Text!=null)
             Response.Write(GridView1.SelectedRow.Cells[2].Text);
        }
    }
}