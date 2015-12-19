using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataEngine;
using System.Data.SqlClient;
using System.Data;
namespace hospital_register
{
    public partial class hospital_log_in : System.Web.UI.Page
    {
        public static string yiyuan;
        public static string hos;
        Engine eg = new Engine();
        DataSet dataset;
        bool f;
        protected void Page_Load(object sender, EventArgs e)
        {
            f=false;
            eg.Config(main_form.ip, "test", "yf123456");
            eg.DataBase.Select("*").From("dbo.[hospital]").Finish();
            dataset = eg.QueryDirectly();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (DataRow datarow in dataset.Tables[0].Rows)
            {
                if ( datarow["id"].ToString().Equals(TextBox1.Text) && datarow["password"].Equals(TextBox2.Text))
                {
                       f=true;
                        yiyuan = TextBox1.Text;
                        hos = datarow["name"].ToString();
                }
               
            }
            if (f)
            {
                Response.Redirect("hospital edit.aspx", true);
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误!')</script>");
            }
        }
    }
}