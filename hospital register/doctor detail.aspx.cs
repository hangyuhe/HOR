using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataEngine;
using System.Data;
using System.Data.SqlClient;
namespace hospital_register
{
    public partial class doctor_detail : System.Web.UI.Page
    {
        public static string doctor_id;
        Engine eg = new Engine();
        DataSet dataset;
        public static string yisheng;
        protected void Page_Load(object sender, EventArgs e)
        {
            doctor_id = Request.QueryString["doctor_id"];
            eg.Config(main_form.ip, "test", "yf123456");

            eg.DataBase.Select("*").From("dbo.[doctor]").Where("id='" + doctor_id + "'").Finish();
           dataset = eg.QueryDirectly();
            Label1.Text = dataset.Tables[0].Rows[0]["name"].ToString();
            Label2.Text = dataset.Tables[0].Rows[0]["level"].ToString();
            Label5.Text = dataset.Tables[0].Rows[0]["telephone"].ToString();
            Label7.Text = dataset.Tables[0].Rows[0]["skill"].ToString();
            yisheng = dataset.Tables[0].Rows[0]["name"].ToString();
            Label3.Text = doctor.keshi;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx", true);
        }
    }
}