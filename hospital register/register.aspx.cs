using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class register : System.Web.UI.Page
    {
       // public  string doctor_name;
       // public string x;
        protected void Page_Load(object sender, EventArgs e)
        {
           // x = Request.QueryString["doctor_name"];
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
               Response.Write(hospital.yiyuan);
               Response.Write(Label2.Text);
               Response.Write(doctor.keshi);
               
               Response.Write(log_in.huanzhe);
               if (Calendar1.SelectedDate.Year != 1)
                   Response.Write(date);
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
            if (e.Day.Date <= DateTime.Now.Date || e.Day.Date >= d)
                e.Day.IsSelectable = false;
            else
            { 
                if (e.Day.IsSelected==false)
                e.Cell.BackColor = System.Drawing.Color.LightGreen;
            } 
           // Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Red;
        }
    }
}