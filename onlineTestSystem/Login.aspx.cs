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
            if (ddlUserType.SelectedValue == "2")
            {
                string query = "select * from Teacher where UserName = '" + txtUsername.Text + "' AND Password = '" + txtPassword.Text + "'";

                DataTable dt = dal.selectData(query);
                if (dt.Rows.Count > 0)
                {
                    Session["userType"] = "Teacher";
                    Session["TeacherID"] = dt.Rows[0][0];
                    Response.Redirect("GenerateTest.aspx");
                }
                else
                {
                    Pnl1.Visible = true;
                    lblError.Text = "Incorrect User name or Password";
                    txtUsername.Focus();
                }
            }
            if (ddlUserType.SelectedValue == "1")
            {
                //string query = "select * from Teacher where UserName = '" + txtUsername.Text + "' AND Password = '" + txtPassword.Text + "'";

                //DataTable dt = dal.selectData(query);
                //if (dt.Rows.Count > 0)
                //{
                //    Response.Redirect("GenerateTest.aspx");
                //}
                //else
                //{
                //    Pnl1.Visible = true;
                //    lblError.Text = "Incorrect User name or Password";
                //    txtUsername.Focus();
                //}
            }

        }
    }
}