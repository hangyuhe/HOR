using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DataEngine;
namespace hospital_register
{
    public partial class personal_data : System.Web.UI.Page
    {
        Engine eg = new Engine();
        
        DataSet dataset;
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime now = DateTime.Now;
            TextBox1.Text = now.ToString();
            eg.Config(main_form.ip, "test", "yf123456");

            eg.DataBase.Select("*").From("dbo.[user]").Where("id='" + log_in.user_id + "'").Finish();
            dataset = eg.QueryDirectly();
          
            Label8.Text = log_in.user_id;
            Label12.Text = dataset.Tables[0].Rows[0]["credit"].ToString();
            Label2.Text = log_in.huanzhe;
            Label4.Text = dataset.Tables[0].Rows[0]["sex"].ToString();
            Label6.Text = dataset.Tables[0].Rows[0]["age"].ToString();
            Label10.Text = dataset.Tables[0].Rows[0]["address"].ToString();
            eg.DataBase.Select("*").From("dbo.[record]").Where("patient_id='" + log_in.user_id + "'").Finish();
            dataset = eg.QueryDirectly();
            if (dataset.Tables[0].Rows.Count == 0)
                Label15.Visible = true;
            else
                Label15.Visible = false;
            eg.DataBase.Select("*").From("dbo.[reservation]").Where("patient_id='" + log_in.user_id + "'").Finish();
            dataset = eg.QueryDirectly();
            if (dataset.Tables[0].Rows.Count == 0)
            { 
                Label16.Visible = true;
                Button1.Visible = false;
            }
            else
                Label16.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Write(GridView1.SelectedRow.Cells[2].Text);
         //   Response.Write(GridView1.SelectedRow.Cells[5].Text);
           if (GridView1.SelectedRow!=null)
           {
            eg.DataBase.DeleteFrom("dbo.[reservation]").Where("patient_id='" + GridView1.SelectedRow.Cells[1].Text + "'").And("doctor_id='" + GridView1.SelectedRow.Cells[4].Text + "'").Finish();
            dataset = eg.QueryDirectly();
            eg.DataBase.DeleteFrom("dbo.[record]").Where("patient_id='" + GridView1.SelectedRow.Cells[1].Text + "'").And("doctor_id='" + GridView1.SelectedRow.Cells[4].Text + "'").Finish();
            dataset = eg.QueryDirectly();
            string strUrl = "<script>alert('取消预约成功');window.location.href='personal data.aspx'</script>";
            Response.Write(strUrl); }


           // Response.Write(GridView1.SelectedRow.Cells[6].Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("main form.aspx", true);
        }
    }
}