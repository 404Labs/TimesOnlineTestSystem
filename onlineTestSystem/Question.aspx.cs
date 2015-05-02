using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineTestSystem
{
    public partial class Question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        char[] array = new char[] { 'a', 'b', 'c', 'd', 'e' };
        protected void ddlNumOFOpt_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = Convert.ToInt16(ddlNumOFOpt.SelectedItem.Value);
            
            for (int i = 0; i < a; i++)
            {
                Label lbl1 = new Label();
                lbl1.Text = "<br />";
                Panel1.Controls.Add(lbl1);

                Label lbl = new Label();
                lbl.ID = "lbl" + array[i].ToString();
                lbl.Attributes.Add("runat", "server");
                lbl.Text = array[i].ToString();
               // lbl.CssClass = "col-sm-1 control-label";
                Panel1.Controls.Add(lbl);

                TextBox txt = new TextBox();
                txt.ID = "txt" + (i + 1);
                txt.Attributes.Add("runat", "server");
                //txt.Attributes.Add("CssClass", "form-control");
                txt.CssClass = "form-control";
                Panel1.Controls.Add(txt);
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

    }
}