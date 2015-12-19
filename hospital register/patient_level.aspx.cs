using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataEngine;
using System.Data.SqlClient;
namespace hospital_register
{
    public partial class patient_level : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            eg.Config(main_form.ip, "test", "yf123456");
            if (GridView1.SelectedRow!=null)
            {
                eg.DataBase.Update("dbo.[user]").Set("credit", "'" + DropDownList1.SelectedValue + "'").Where("id='" + GridView1.SelectedRow.Cells[1].Text + "'").Finish();
                dataset = eg.QueryDirectly();
                string strUrl = "<script>alert('修改信用等级成功！');window.location.href='patient_level.aspx'</script>";
                Response.Write(strUrl);
            }
            else
            {
                Response.Write("<script>alert('请选中一名用户!')</script>");
            }
        }
    }
}