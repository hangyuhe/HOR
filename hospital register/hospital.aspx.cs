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
    
    public partial class hospital : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        public string hospital_name;
        public static string yiyuan;
        public int department_num;
        public int hospital_id;
        public string[] x = new string[1000];
        protected void Page_Load(object sender, EventArgs e)
        {
            hospital_name = Request.QueryString["hospital_name"];
           
            Label1.Text = hospital_name;
            yiyuan = hospital_name;

            eg.Config(main_form.ip, "test", "yf123456");
            
            eg.DataBase.Select("*").From("dbo.[hospital]").Where("name='"+Label1.Text+"'").Finish();
            
            dataset = eg.QueryDirectly();
            Label3.Text = dataset.Tables[0].Rows[0]["address"].ToString();
            Label5.Text = dataset.Tables[0].Rows[0]["telephone"].ToString();
            Label7.Text = dataset.Tables[0].Rows[0]["introduction"].ToString();
            hospital_id = Convert.ToInt32(dataset.Tables[0].Rows[0]["id"]);
            Console.Write(hospital_id);
            eg.DataBase.Select("*").From("dbo.[department]").Where("hospital_id='"+hospital_id+"'").Finish();
            dataset = eg.QueryDirectly();
            department_num = dataset.Tables[0].Rows.Count;
            for (int i = 0; i < department_num; i++)
                x[i] = dataset.Tables[0].Rows[i]["name"].ToString();
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