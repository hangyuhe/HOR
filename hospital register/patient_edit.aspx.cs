using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DataEngine;
using System.Data;
namespace hospital_register
{
    public partial class patient_edit : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            TextBox1.Text = now.ToString();
            Label1.Text = hospital_log_in.hos;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // if (GridView1.SelectedRow.Cells[2].Text!=null)
            // Response.Write(GridView1.SelectedRow.Cells[2].Text);
            eg.Config(main_form.ip, "test", "yf123456");
           
            if (GridView1.SelectedRow!=null)
            {
                if (GridView1.SelectedRow.Cells[5].Text!="爽约")
                {
                    eg.DataBase.Update("dbo.[record]").Set("detail", "'"+Label4.Text+"'").Where("patient_id='" + GridView1.SelectedRow.Cells[4].Text + "'").And("doctor_id='" + GridView1.SelectedRow.Cells[2].Text + "'").Finish();
                dataset = eg.QueryDirectly();
                eg.DataBase.Update("dbo.[user]").Set("credit", "credit-1").Where("id='" + GridView1.SelectedRow.Cells[4].Text + "'").And("credit>=0").Finish();
                dataset = eg.QueryDirectly();
                string strUrl = "<script>alert('标记爽约成功！');window.location.href='patient_edit.aspx'</script>";
                Response.Write(strUrl);
                }
                else
                    Response.Write("<script>alert('该病人已被标记爽约!')</script>");
               // GridView1.SelectedRow.Cells["patient_id"];
            }
            else
                 Response.Write("<script>alert('请选中一行!')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            eg.Config(main_form.ip, "test", "yf123456");
            if (GridView1.SelectedRow!=null)
            {
                if (GridView1.SelectedRow.Cells[5].Text!="爽约")
                {
                    eg.DataBase.Update("dbo.[record]").Set("detail", "'" +TextBox2.Text+ "'").Where("patient_id='" + GridView1.SelectedRow.Cells[4].Text + "'").And("doctor_id='" + GridView1.SelectedRow.Cells[2].Text + "'").Finish();
                    dataset = eg.QueryDirectly();
                    string strUrl1 = "<script>alert('添加病例成功！');window.location.href='patient_edit.aspx'</script>";
                    Response.Write(strUrl1);
                }
                else
                {
                    Response.Write("<script>alert('该病人已被标记爽约!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('请选中一行!')</script>");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}