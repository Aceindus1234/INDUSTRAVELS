using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelDAL;
using System.Data;
using System.IO;

public partial class industravels_ApplyCareerJob : System.Web.UI.Page
{
    PackageDAL pdlist = new PackageDAL();
    public static string jcode;
    string Base_dir = System.AppDomain.CurrentDomain.BaseDirectory;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            BindData();
        //BindCareersListData
    }
    protected void BindData()
    {
        DataSet dslist = new DataSet();
        jcode = Convert.ToString(Request.QueryString["jcode"]);
        if (jcode != null)
        {
            if (jcode != "")
            {
                dslist = pdlist.BindCareersListData(jcode);
                if (dslist.Tables[0].Rows.Count > 0)
                {
                    dtCareers1.DataSource = dslist.Tables[0];
                    dtCareers1.DataBind();
                    dtCareers2.DataSource = dslist.Tables[0];
                    dtCareers2.DataBind();
                    dslist.Dispose();
                }
                else
                {
                    dtCareers2.DataSource = "";
                    dtCareers2.DataBind();
                }
            }
        }
        else
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Selected job code is incorrect, please try another.'); window.location('Careers.aspx');</script>");
    }
  
    protected void imgsubmit_click(object sender, ImageClickEventArgs e)
    {
        //insetApplicants
        if (jcode != null)
        {
            if (jcode != "")
            {
                if (upload1.HasFile)
                {
                    string resumeName = upload1.FileName.ToString();
                    string exte = Path.GetExtension(resumeName);
                    if (exte == ".doc" || exte == ".docx")
                    {
                        string resumepath = Base_dir + "industravels/Resumes/" + resumeName;
                        upload1.SaveAs(resumepath);
                        resumepath = null;
                        int res = pdlist.insetApplicants(jcode, txtFullname.Text, txtmail.Text, "0" + txtPhone.Text, resumeName);
                        if (res > 0)
                        {
                            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Thank you, Application sent successfully. Recruiters will contact you soon.'); </script>");
                            clearall();
                        }
                        else
                            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Unknown exception find, please try again.'); </script>");
                    }
                    else
                        ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Upload .doc or .docx file format only.'); </script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Upload your latest resume (.doc or .docx file format only)'); </script>");
                }
            }
        }
        else
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Selected job code is incorrect, please try another.'); window.location('Careers.aspx');</script>");
    
    }
    private void clearall()
    {
        txtFullname.Text = "";
        txtmail.Text = "";
        txtPhone.Text = "";
    }
}