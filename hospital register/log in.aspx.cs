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
    public partial class log_in : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        bool f;
        public static string huanzhe;
        public static string user_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            eg.Config(main_form.ip, "test", "yf123456");
            eg.DataBase.Select("*").From("dbo.[user]").Finish();
            dataset = eg.QueryDirectly();
            
            f = false;
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            foreach (DataRow datarow in dataset.Tables[0].Rows)
            {
                 if (datarow["id"].Equals(TextBox1.Text) && datarow["password"].Equals(TextBox2.Text))
                 {
                     f = true;
                     huanzhe = datarow["name"].ToString();
                     user_id = datarow["id"].ToString();
                     
                 }
            }
            if (f)
            {
               // huanzhe = TextBox1.Text;
                Response.Redirect("main form.aspx", true);
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误!')</script>"); 
            }
            
            //if (TextBox1.Text == "a" && TextBox2.Text == "b")

            //{
            //    huanzhe = TextBox1.Text;
            //    Response.Redirect("main form.aspx", true); 
            //}
            //else
            //{

            //    Response.Write("<script>alert('用户名或密码错误!')</script>");

            //}
                

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("main form.aspx", true);
        }
    }
}