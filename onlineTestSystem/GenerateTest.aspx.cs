using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineTestSystem
{
    public partial class GenerateTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Convert.ToString(Session["TeacherID"])))
            {
                //Response.Redirect("Login.aspx");
            }
        }
        DAL dal = new DAL();
        protected void btnGenerateTest_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [Test]
                            (
	                             Name, [Subject], Chapter, Duration, NumberOfQuestions ,Class,  isActive
                            )
                            VALUES
                            ('" + txtName.Text+"','"+ddlSubject.SelectedValue+"','"+ddlChapter.SelectedValue+"',"+txtDuration.Text+","+txtNumOfQuestions.Text+",'"+ddlClass.SelectedValue+"',1)";
            int a = 0 ;
            a = dal.insertData(query);
            if (a > 0)
            {
                lblConfirm.Text = "Test Generated successfully!!";
            }

        }

        protected void btnAddQuestion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Question.aspx");
        }

    }
}