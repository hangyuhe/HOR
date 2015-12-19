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
    public partial class hospital_add : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            eg.Config(main_form.ip, "test", "yf123456");
            if (TextBox1.Text!=""&&TextBox2.Text!=""&&TextBox7.Text!=""&&TextBox4.Text!=""&&TextBox5.Text!=""&&TextBox6.Text!="")
            {
                eg.DataBase.InsertIntoTable
                    ("hospital", new[] 
                    { "id", "introduction", "name", "address", "password", "telephone" },
                    new[]
                    { "'" + TextBox5.Text + "'", "'" + TextBox4.Text + "'", "'" + TextBox1.Text + "'", "'" +TextBox2.Text + "'", "'" + TextBox6.Text + "'", "'" +TextBox7.Text + "'" }).Finish();
                dataset = eg.QueryDirectly();
                Response.Write("<script>alert('添加医院成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('请补全信息!')</script>");
            }
        }
    }
}