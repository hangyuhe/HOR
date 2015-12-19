using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using DataEngine;
namespace hospital_register
{
    public partial class doctor : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        public static string keshi;
        public int keshi_id;
        public int doctor_num;
        public string[] x = new string[1000];
        public string[] y = new string[1000];
        public string[] z = new string[1000];
       // public static string[] z = new string[1000];
        protected void Page_Load(object sender, EventArgs e)
        {
            keshi = Request.QueryString["department_name"];
            Label1.Text = keshi;
            eg.Config(main_form.ip, "test", "yf123456");

            eg.DataBase.Select("*").From("dbo.[department]").Where("name='" + Label1.Text + "'").Finish();
            dataset = eg.QueryDirectly();
            keshi_id = Convert.ToInt32 (dataset.Tables[0].Rows[0]["id"]);
            eg.DataBase.Select("*").From("dbo.[doctor]").Where("department_id='" + keshi_id + "'").Finish();
            dataset = eg.QueryDirectly();
            doctor_num = dataset.Tables[0].Rows.Count;
            for (int i = 0; i < doctor_num; i++)
            {
                x[i] = dataset.Tables[0].Rows[i]["name"].ToString();
                y[i] = dataset.Tables[0].Rows[i]["level"].ToString();
                z[i] = dataset.Tables[0].Rows[i]["id"].ToString();
            }
        }

        
    }
}