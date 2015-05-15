using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace onlineTestSystem
{
    public partial class Test : System.Web.UI.Page
    {
        DAL dal;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["NumberOfQuestions"] != null)
                {
                    int totalQuestion = Convert.ToInt32(Session["NumberOfQuestions"]);
                    ViewState["TotalQuestions"] = totalQuestion;
                    string query = @"SELECT TOP " + totalQuestion + " * FROM (SELECT * FROM Question q ) Tablealias ORDER BY NEWID()";
                    dal = new DAL();
                    dt = new DataTable();
                    dt = dal.selectData(query);
                    ViewState["Questions"] = dt;
                    ViewState["counter"] = 0;
                    int questionNo = Convert.ToInt32(ViewState["counter"]);
                    lblQuestionNumber.Text = "Question # " + (Convert.ToInt32(ViewState["counter"]) + 1);
                    lblQuestion.Text = dt.Rows[questionNo]["Description"].ToString();

                    string queryForOptions = "select * from [QuestionOption] where QuestionID = '" + dt.Rows[questionNo]["QuestionID"].ToString() + "'";
                    DataTable dtOption = new DataTable();
                    dtOption = dal.selectData(queryForOptions);
                    rblOptions.DataSource = dtOption;
                    rblOptions.DataBind();
                    rblOptions.DataTextField = "OptionDesc";
                    rblOptions.DataValueField = "OptionID";
                    rblOptions.DataBind();
                    //correct answers

                    DataTable result = new DataTable();
                    result.Columns.Add("CorrectOption", typeof(char));
                    result.Columns.Add("UserAnswer", typeof(char));

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        DataRow dr = result.NewRow();
                        dr["CorrectOption"] = Convert.ToChar(dt.Rows[i]["CorrectOption"]);
                        dr["UserAnswer"] = 0;
                        result.Rows.Add(dr);
                    }

                    ViewState["Answers"] = result;


                    btnPrevious.Enabled = false;
                }
                else
                {
                    Response.Redirect("Login.aspx");

                }
            }
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {

            if (Convert.ToInt32(ViewState["TotalQuestions"]) == 5)
            {
                btnPrevious.Enabled = false;
                string UserAnswer = rblOptions.SelectedValue;
                DataTable Result = (DataTable)ViewState["Answers"];
                int Counter = Convert.ToInt32(ViewState["counter"]);
                Result.Rows[Counter]["UserAnswer"] = (UserAnswer == "") ? '0' : Convert.ToChar(UserAnswer);
                ViewState["Answers"] = Result;

            }
            else
            {
                string UserAnswer = rblOptions.SelectedValue;
                DataTable Result = (DataTable)ViewState["Answers"];
                int Counter = Convert.ToInt32(ViewState["counter"]);
                Result.Rows[Counter]["UserAnswer"] = (UserAnswer == "") ? '0' : Convert.ToChar(UserAnswer);
                ViewState["Answers"] = Result;

                ViewState["TotalQuestions"] = Convert.ToInt32(ViewState["TotalQuestions"]) + 1;
                dt = new DataTable();
                dt = (DataTable)ViewState["Questions"];
                ViewState["counter"] = Convert.ToInt32(ViewState["counter"]) - 1;
                lblQuestionNumber.Text = "Question # " + (Convert.ToInt32(ViewState["counter"]) + 1);
                int questionNo = Convert.ToInt32(ViewState["counter"]);
                lblQuestion.Text = dt.Rows[questionNo]["Description"].ToString();
                string queryForOptions = "select * from [QuestionOption] where QuestionID = '" + dt.Rows[questionNo]["QuestionID"].ToString() + "'";
                DataTable dtOption = new DataTable();
                dal = new DAL();
                dtOption = dal.selectData(queryForOptions);
                rblOptions.DataSource = dtOption;
                rblOptions.DataBind();
                rblOptions.DataTextField = "OptionDesc";
                rblOptions.DataValueField = "OptionID";
                rblOptions.DataBind();
                btnNext.Enabled = true;
            }


        }
        protected void btnNext_Click(object sender, EventArgs e)
        {

            if (Convert.ToInt32(ViewState["TotalQuestions"]) == 1)
            {
                btnNext.Enabled = false;
                string UserAnswer = rblOptions.SelectedValue;
                DataTable Result = (DataTable)ViewState["Answers"];
                int Counter = Convert.ToInt32(ViewState["counter"]);
                Result.Rows[Counter]["UserAnswer"] = (UserAnswer == "") ? '0' : Convert.ToChar(UserAnswer);
                ViewState["Answers"] = Result;
            }
            else
            {
                //Result
                string UserAnswer = rblOptions.SelectedValue;
                DataTable Result = (DataTable)ViewState["Answers"];
                int Counter = Convert.ToInt32(ViewState["counter"]);
                Result.Rows[Counter]["UserAnswer"] = (UserAnswer == "") ? '0' : Convert.ToChar(UserAnswer);
                ViewState["Answers"] = Result;

                ViewState["TotalQuestions"] = Convert.ToInt32(ViewState["TotalQuestions"]) - 1;
                dt = new DataTable();
                dt = (DataTable)ViewState["Questions"];
                ViewState["counter"] = Convert.ToInt32(ViewState["counter"]) + 1;
                lblQuestionNumber.Text = "Question # " + (Convert.ToInt32(ViewState["counter"]) + 1);
                int questionNo = Convert.ToInt32(ViewState["counter"]);
                lblQuestion.Text = dt.Rows[questionNo]["Description"].ToString();
                string queryForOptions = "select * from [QuestionOption] where QuestionID = '" + dt.Rows[questionNo]["QuestionID"].ToString() + "'";
                DataTable dtOption = new DataTable();
                dal = new DAL();
                dtOption = dal.selectData(queryForOptions);
                rblOptions.DataSource = dtOption;
                rblOptions.DataBind();
                rblOptions.DataTextField = "OptionDesc";
                rblOptions.DataValueField = "OptionID";
                rblOptions.DataBind();



                btnPrevious.Enabled = true;
            }
        }

        protected void lbEndTest_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)ViewState["Answers"];
            int j = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["CorrectOption"].ToString() == dt.Rows[i]["UserAnswer"].ToString())
                {
                    j++;
                }
            }
            Session["score"] = j;
            Response.Redirect("Result.aspx");
        }
    }
}