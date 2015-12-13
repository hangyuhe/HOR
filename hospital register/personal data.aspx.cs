using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class personal_data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Text = log_in.huanzhe;
            Label12.Text = "5";
            Label2.Text = "rzh";
            Label4.Text = "男";
            Label6.Text = "20";
            Label10.Text = "北航大运村";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(GridView1.SelectedRow.Cells[2].Text);
            Response.Write(GridView1.SelectedRow.Cells[5].Text);
            Response.Write(GridView1.SelectedRow.Cells[6].Text);
        }
    }
}