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
    public partial class register : System.Web.UI.Page
    {
       // public  string doctor_name;
       // public string x;
        Engine eg = new Engine();
        DataSet dataset;
        public DateTime start;
        public DateTime end;
        protected void Page_Load(object sender, EventArgs e)
        {
           // x = Request.QueryString["doctor_name"];
            eg.Config(main_form.ip, "test", "yf123456");
            int doc = Convert.ToInt32(doctor_detail.doctor_id);
            eg.DataBase.Select("*").From("dbo.[doctor]").Where("id='" + doctor_detail.doctor_id + "'").Finish();
            dataset = eg.QueryDirectly();
           
           // string a = dataset.Tables[0].Rows[0]["telephone"].ToString();
             start = Convert.ToDateTime(dataset.Tables[0].Rows[0]["start_time"]);
             end = Convert.ToDateTime(dataset.Tables[0].Rows[0]["end_time"]);
          
            Label2.Text = doctor_detail.yisheng;
            if (log_in.huanzhe == null)
            {
                Button1.Visible = false;

            }
            else Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
           string date = Calendar1.SelectedDate.ToShortDateString();
           // yisheng = Label2.Text;

           if (log_in.huanzhe != null)
           {
               //Response.Write(hospital.yiyuan);
               //Response.Write(Label2.Text);
               //Response.Write(doctor.keshi);
              
              // Response.Write(log_in.huanzhe);
               eg.DataBase.Select("*").From("dbo.[reservation]").Where("patient_id='" + log_in.user_id + "'").And("doctor_id='"+doctor_detail.doctor_id+"'").Finish();
               dataset = eg.QueryDirectly();
               int count = dataset.Tables[0].Rows.Count;
               if (Calendar1.SelectedDate.Year != 1)
               {
                   if (count == 0)
                   {
                       eg.DataBase.InsertIntoTable("reservation", new[] { "patient_id", "doctor_id", "appointment_time", "scheduled_time", "cost", "patient_name", "doctor_name", "department_name", "hospital_name" }, new[] { "'" + log_in.user_id + "'", "'" + doctor_detail.doctor_id + "'", "'" + DateTime.Now + "'", "'" + Calendar1.SelectedDate + "'", "1", "'" + log_in.huanzhe + "'", "'" + Label2.Text + "'", "'" + doctor.keshi + "'", "'" + hospital.yiyuan  + "'" }).Finish();
                       dataset = eg.QueryDirectly();
                       eg.DataBase.InsertIntoTable("record", new[] { "patient_id", "doctor_id", "time", "doctor_name", "department_name", "hospital_name","detail"}, new[] { "'" + log_in.user_id + "'", "'" + doctor_detail.doctor_id + "'",  "'" + Calendar1.SelectedDate + "'", "'" + Label2.Text + "'", "'" + doctor.keshi + "'", "'" + hospital.yiyuan + "'" ,"'"+Label4.Text+"'"}).Finish();
                       dataset = eg.QueryDirectly();
                       Response.Write("<script>alert('预约成功!')</script>");
                   }
                   else
                       Response.Write("<script>alert('已有该医生的预约记录!')</script>");
                   //Response.Write(date);
               }
               else
                   Response.Write("<script>alert('请选择一个有效日期!')</script>");
           }
           else
           {
               string strUrl = "<script>alert('您还未登陆');window.location.href='log2.aspx'</script>";
               Response.Write(strUrl);
               // Response.Redirect("log2.aspx",true);
           } 
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {

            DateTime d = new DateTime(2015, 12, 15, 0, 0, 0);
           
            //if (e.Day.Date <= DateTime.Now.Date || e.Day.Date >= d)
            //    e.Day.IsSelectable = false;
            //else
            //{ 
            //    if (e.Day.IsSelected==false)
            //    e.Cell.BackColor = System.Drawing.Color.LightGreen;
            //} 
            if  (e.Day.Date>=start.Date&&e.Day.Date<=end.Date)
            {
                if (e.Day.IsSelected == false)
                    e.Cell.BackColor = System.Drawing.Color.LightGreen;
            }
            else
            {
                e.Day.IsSelectable = false;
            }
           // Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Red;
        }
    }
}