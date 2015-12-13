using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospital_register
{
    public partial class doctor_detail : System.Web.UI.Page
    {
        public string doctor_name;
        public static string yisheng;
        protected void Page_Load(object sender, EventArgs e)
        {
            doctor_name = Request.QueryString["doctor_name"];
            Label1.Text = doctor_name;
            Label2.Text = "主治医师";
            yisheng = doctor_name;
            Label3.Text = hospital.keshi;
            Label5.Text = "1234567";
            Label7.Text = " 妇科良恶性肿瘤等疑难杂症、子宫内膜异位症、原发不孕、月经失调及盆腔包裹性积液的诊断和治疗及产科高危妊娠，如胎儿生长概况、胎儿先天性心脏病等方面的超声诊断具有一定.";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx", true);
        }
    }
}