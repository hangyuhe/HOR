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
    public partial class hospital_edit : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            eg.Config(main_form.ip, "test", "yf123456");
            eg.DataBase.Select("*").From("dbo.[hospital]").Where("id='" + hospital_log_in.yiyuan + "'").Finish();
            dataset = eg.QueryDirectly();
            Label1.Text = hospital_log_in.hos;
            if (!IsPostBack)
            {
                TextBox1.Text = dataset.Tables[0].Rows[0]["address"].ToString();
                TextBox2.Text = dataset.Tables[0].Rows[0]["telephone"].ToString();
                TextBox3.Text = dataset.Tables[0].Rows[0]["introduction"].ToString();
            }
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            eg.Config(main_form.ip, "test", "yf123456");
            eg.DataBase.Update("dbo.[hospital]").Set("address", "'" + TextBox1.Text + "'").Where("id='" + hospital_log_in.yiyuan + "'").Finish();
            dataset = eg.QueryDirectly();
            eg.DataBase.Update("dbo.[hospital]").Set("telephone", "'" + TextBox2.Text + "'").Where("id='" + hospital_log_in.yiyuan + "'").Finish();
            dataset = eg.QueryDirectly();
            eg.DataBase.Update("dbo.[hospital]").Set("introduction","'"+TextBox3.Text+"'").Where("id='" + hospital_log_in.yiyuan + "'").Finish();
            dataset = eg.QueryDirectly();
          //  Response.Write("<script>alert('修改信息成功!')</script>");
            string strUrl = "<script>alert('修改信息成功！');window.location.href='hospital edit.aspx'</script>";
            Response.Write(strUrl);
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}