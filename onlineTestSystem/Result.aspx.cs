using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineTestSystem
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["score"] != null)
            {
                lblResult.Text = "You have secured " + Session["score"] + " Mark(s) out of " + Session["NumberOfQuestions"];
            }
            else {
                Response.Redirect("Login.aspx");
            }
        }
    }
}