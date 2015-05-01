using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace onlineTestSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DAL dal = new DAL();
            string query = "select UserName, Password from Login where Username = '" + txtUsername.Text + "' AND Password = '" + txtPassword.Text + "'";

            DataTable dt = dal.selectData(query);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("GenerateTest.aspx");
            }
        }
    }
}