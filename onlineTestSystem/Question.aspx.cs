using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace onlineTestSystem
{
    public partial class Question : System.Web.UI.Page
    {
        char[] array = new char[] { 'a', 'b', 'c', 'd', 'e' };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["BuildMyText"] != null && (bool)ViewState["BuildMyText"])
            {
                if (ViewState["NumberOfControls"] != null)
                    createDynamicTextBoxes(Convert.ToInt32(ViewState["NumberOfControls"]));
            }
            if (!IsPostBack)
            {

                DAL obj = new DAL();
                DataTable dt = new DataTable();

                dt = obj.selectData("Select * from Class");
                ddlClass.DataSource = dt;
                ddlClass.DataBind();
                ddlClass.DataTextField = "ClassName";
                ddlClass.DataValueField = "ClassID";
                ddlClass.DataBind();
                ddlClass.Items.Insert(0, new ListItem("Select Class", "0"));
                ddlSubject.Items.Insert(0, new ListItem("Select Subject", "0"));
                ddlChapter.Items.Insert(0, new ListItem("Select Chapter", "0"));
               // ddlSubject.Items.Insert(0, new ListItem("Select Subject", "0"));
            }

        }

        protected void ddlNumOFOpt_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Controls.Clear();
            int a = Convert.ToInt16(ddlNumOFOpt.SelectedItem.Value);
            ViewState["NumberOfControls"] = a;
            createDynamicTextBoxes(a);
            ViewState["BuildMyText"] = true;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (ViewState["BuildMyText"] != null && (bool)ViewState["BuildMyText"])
            {
                int a = (int)ViewState["NumberOfControls"];
                DataTable dt = new DataTable();
                dt.Columns.Add("optionText", typeof(string));
                dt.Columns.Add("optionDesc", typeof(string));
                for (int i = 0; i < a; i++)
                {
                    DataRow dr = dt.NewRow();
                    string lbl = "lbl" + array[i];
                    dr["optionText"] = (Panel1.FindControl(lbl) as Label).Text;
                    string txtbox = "txt" + (i + 1);
                    dr["optionDesc"] = (Panel1.FindControl(txtbox) as TextBox).Text;
                    dt.Rows.Add(dr);
                }

                DAL dal = new DAL();
                string insertQuery = @"
                                    INSERT INTO Question
                                    (
	                                    -- QuestionID -- this column value is auto-generated
	                                    [Description],
	                                    class,
	                                    Chapter,
	                                    CorrectOption,
	                                    [Subject]
                                    )
                                    VALUES
                                    ( '" + txtQuestion.Text + "','" + ddlClass.SelectedValue + "','" + ddlChapter.SelectedValue + "',	'" + ddlCorrectAnswer.SelectedValue + "','" + ddlSubject.Text + "') SELECT SCOPE_IDENTITY()";

                int QuestionID = dal.insertDataWithReturnId(insertQuery);
                if (QuestionID > 0)
                {

                    foreach (DataRow dr in dt.Rows)
                    {
                        string query = @"INSERT INTO QuestionOption
                                        (
	                                        QuestionID,OptionID,OptionDesc
                                        )
                                        VALUES
                                        (" + QuestionID + ",'" + dr["optionText"] + "','" + dr["optionDesc"] + "')";
                        dal.insertData(query);

                    }
                }

                ViewState["NumberOfControls"] = null;
                ViewState["BuildMyText"] = null;

            }

        }

        public void createDynamicTextBoxes(int a)
        {
            for (int i = 0; i < a; i++)
            {
                Label lbl1 = new Label();
                lbl1.Text = "<br />";
                Panel1.Controls.Add(lbl1);

                Label lbl = new Label();
                lbl.ID = "lbl" + array[i].ToString();
                lbl.Attributes.Add("runat", "server");
                lbl.Text = array[i].ToString();
                lbl.CssClass = "col-sm-2 control-label";
                // lbl.CssClass = "col-sm-1 control-label";
                Panel1.Controls.Add(lbl);

                TextBox txt = new TextBox();
                txt.ID = "txt" + (i + 1);
                txt.Attributes.Add("runat", "server");
                txt.ViewStateMode = System.Web.UI.ViewStateMode.Enabled;
                //txt.Attributes.Add("CssClass", "form-control");
                txt.CssClass = "form-control";
                Panel1.Controls.Add(txt);

            }
        }

        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            DAL obj = new DAL();
            int a = Convert.ToInt32(ddlClass.SelectedValue);
            
            DataTable dt = new DataTable();
            string query = "Select * from Subject where ClassID = '" + a + "'";
            dt = obj.selectData(query);
            ddlSubject.DataSource = dt;
            ddlSubject.DataBind();
            ddlSubject.DataTextField = "SubjectName";
            ddlSubject.DataValueField = "SubjectID";
            ddlSubject.DataBind();
            ddlSubject.Items.Insert(0, new ListItem("Select Subject", "0"));
            ddlSubject.SelectedIndex = 0;
        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {

           

                DAL obj = new DAL();
                int a = Convert.ToInt32(ddlSubject.SelectedValue);
                string query = "Select * from Chapter where SubjectID='" + a + "'";
                DataTable dt = new DataTable();
                dt = obj.selectData(query);
                ddlChapter.DataSource = dt;
                ddlChapter.DataBind();
                ddlChapter.DataTextField = "ChapterName";
                ddlChapter.DataValueField = "ChapterID";
                ddlChapter.DataBind();
                ddlChapter.Items.Insert(0, new ListItem("Select Chapter", "0"));
                ddlChapter.SelectedIndex = 0;
        }

    }
}