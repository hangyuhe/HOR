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
    public partial class doctor_add : System.Web.UI.Page
    {
        Engine eg = new Engine();
        DataSet dataset;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label11.Text = hospital_log_in.yiyuan;
            string a = DropDownList1.SelectedValue;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            eg.Config(main_form.ip, "test", "yf123456");
 
            
            if (TextBox1.Text!=""&& TextBox2.Text!=""&&TextBox3.Text!=""&&TextBox4.Text!=""&&TextBox5.Text!=""&&TextBox6.Text!=""&&TextBox7.Text!="")
            {

            
            if (Convert.ToDateTime(TextBox7.Text)>=Convert.ToDateTime(TextBox6.Text))
            {
                if (Convert.ToDateTime(TextBox7.Text) > DateTime.Now && Convert.ToDateTime(TextBox6.Text) > DateTime.Now)
                {
                    eg.DataBase.InsertIntoTable("doctor", new[]
                    { "id", "name", "sex", "age", "telephone", "level",
                        "department_id","start_time","end_time","skill","hospital_id" },
                    new[] { "'" + TextBox1.Text + "'", "'" + TextBox2.Text + "'",  "'"+DropDownList1.SelectedItem.Text+"'", 
                        "'" + TextBox3.Text + "'", "'" + TextBox4.Text + "'",  "'"+DropDownList2.SelectedItem.Text+"'",
                        "'"+DropDownList3.SelectedItem.Text+"'", "'" + TextBox6.Text + "'", "'" + TextBox7.Text + "'",
                        "'" + TextBox5.Text + "'", "'" + hospital_log_in.yiyuan + "'" }).Finish();
                    dataset = eg.QueryDirectly();
                      Response.Write("<script>alert('添加医生成功!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('不可选择今天以前的日期!')</script>");
                }
              
            }
            else
            {
                Response.Write("<script>alert('终止日期不可在开始日期之前!')</script>");
            }

            }
            else
            {
                Response.Write("<script>alert('请补全信息!')</script>");
            }
            
        }
    }
}