using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using TravelEntities;
using TravelBAL;

public partial class industravels_TravelFeedback : System.Web.UI.Page
{
    TravelPackages tp = new TravelPackages();
    wwUtils tb = new wwUtils();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreset_Click1(object sender, EventArgs e)
    {
        ClearInputs(Page.Controls);
    }
    void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;

            else if (ctrl is DropDownList)
                ((DropDownList)ctrl).SelectedIndex = -1;
            //ClearInputs(ctrl.Controls);
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string strScript = "";
        try
        {
            recaptcha.Validate();
            if (recaptcha.IsValid)
            {
                #region oldCode
                //string name = "";
                //string organization = "";
                //string address = "";
                //string country = "";
                //string telno = "";
                //string email = "";
                //string Lastname = "";
                //string category = "";
                //string coments = "";              

                //Fullname = Convert.ToString(txtfname.Text);
                //Lastname = Convert.ToString(txtNname.Text);
                //Organization = Convert.ToString(txtorg.Text);
                //Address = Convert.ToString(txtaddr.Text);
                //Country = Convert.ToString(country.SelectedItem.Text);
                //Phone = Convert.ToString(txttel.Text);
                //Email = Convert.ToString(txtemail.Text);
                //Comments = Convert.ToString(txtdec.Text);
                
                //string Date = System.DateTime.Now.ToString("dd MMM,yyyy hh:mm:ss tt");
                //string str = ConfigurationManager.ConnectionStrings["cnn"].ConnectionString;
                //SqlConnection con = new SqlConnection(str);
                ////con.Open();
                //SqlCommand cmd = new SqlCommand("sp_fback", con);
                //cmd.CommandType = CommandType.StoredProcedure;               
               // cmd.Parameters.AddWithValue("@name", txtname.Text);
               // cmd.Parameters.AddWithValue("@organization", txtorg.Text);
               // cmd.Parameters.AddWithValue("@address", txtadd.Text);
               // cmd.Parameters.AddWithValue("@country", Country.SelectedItem.Text);
               // cmd.Parameters.AddWithValue("@telno", txttelno.Text);
               // cmd.Parameters.AddWithValue("@email", txtemail.Text);
               // cmd.Parameters.AddWithValue("@Category", ddlcategory.SelectedItem.Text);
               // cmd.Parameters.AddWithValue("@coments", txtcomment.Text);
               // cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString());
               // cmd.ExecuteNonQuery();
               //// con.Close();
                // Response.Write("feedback submitted successfully");
                #endregion

                SqlParameter[] parm = new SqlParameter[9];
                parm[0] = new SqlParameter("@name", txtname.Text);
                parm[1] = new SqlParameter("@organization","");
                parm[2] = new SqlParameter("@address", "");
                parm[3] = new SqlParameter("@country","");
                parm[4] = new SqlParameter("@telno", txttelno.Text);
                parm[5] = new SqlParameter("@email", txtemail.Text);
                parm[6] = new SqlParameter("@Category", ddlcategory.SelectedItem.Text);
                parm[7] = new SqlParameter("@coments", txtcomment.Text);
                parm[8] = new SqlParameter("@Date", DateTime.Now.ToString());
                int insert = tb.ExecuteNonQuery("sp_fback", parm);
                if (insert == 1)
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Thank You For Giving Feedback !!!');</script>");
                    txtname.Text = string.Empty;
                    //txtorg.Text = string.Empty;
                   // txtadd.Text = string.Empty;
                    txttelno.Text = string.Empty;
                    txtemail.Text = string.Empty;
                    txtcomment.Text = string.Empty;
                   // txtorg.Text = string.Empty;
                   // Country.SelectedIndex = -1;
                    ddlcategory.SelectedIndex = -1;
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('failed to submit the feedback !!!');</script>");
                }
            }
            else
            {
                strScript = "alert('entered characters are invalid on image');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);                    
            }
        }
        catch
        {
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('failed to submit the feedback !!!');</script>");
        }
    }
}

