using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using DataEngine;
namespace hospital_register
{
    public partial class department_edit : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = hospital_log_in.yiyuan;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            eg.Config(main_form.ip, "test", "yf123456");
            eg.DataBase.InsertIntoTable("department", new[] { "id", "name", "telephone", "introduction", "hospital_id"}, new[] { "'" + TextBox1.Text + "'", "'" + TextBox2.Text + "'", "'" +TextBox4.Text + "'", "'" + TextBox3.Text + "'",  "'" + hospital_log_in.yiyuan + "'" }).Finish();
            dataset = eg.QueryDirectly();
            string strUrl = "<script>alert('添加科室成功！');window.location.href='department_edit.aspx'</script>";
            Response.Write(strUrl);
        }
    }
}