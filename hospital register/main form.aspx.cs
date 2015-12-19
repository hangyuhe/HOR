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
   
    public partial class main_form : System.Web.UI.Page
    {

        Engine eg = new Engine();
        DataSet dataset;
        public int num;
        public  string[] x = new string[100];
        public static string ip = "10.138.111.60";
        protected void Page_Load(object sender, EventArgs e)
        {
           ;
            if (log_in.huanzhe != null)
            {
                Label2.Text = log_in.huanzhe;
                 Button1.Visible = false;
                 Label1.Visible = true;
                 Label2.Visible = true;
                 Button2.Visible = true;
                 Button3.Visible = true;
            } 
            else
            {
                Button1.Visible = true;
                Label1.Visible = false;
                Label2.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
            }
            eg.Config(ip, "test", "yf123456");
            eg.DataBase.Select("*").From("dbo.[hospital]").Finish();
            dataset = eg.QueryDirectly();
          //  foreach (DataRow datarow in dataset.Tables[0].Rows)

             //   Label5.Text = datarow["name"].ToString();
          //  DataRow datarow;
            
             num = dataset.Tables[0].Rows.Count;
          //  Label5.Text = dataset.Tables[0].Rows.Count.ToString();
            for (int i = 0; i <num ; i++)
                x[i] = dataset.Tables[0].Rows[i]["name"].ToString();
                //   Console.Write(dataset.Tables[0].Rows[0]["name"]);
                //    Console.Write(dataset.Tables[0].Rows[1]["name"]);
                // TextBox1.Text = dataset.Tables[0].Rows[1]["name"].ToString();
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("log in.aspx", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            log_in.huanzhe = null;
            Response.Redirect("main form.aspx",true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("personal data.aspx", true);
        }

       

        

        
    }
}