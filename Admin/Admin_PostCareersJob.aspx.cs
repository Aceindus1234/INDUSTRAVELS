using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TravelDAL;
using TravelEntities;
using TravelBAL;

public partial class industravels_Admin_Admin_PostCareersJob : System.Web.UI.Page
{
    public static string editindex;
    PackageDAL careersdal = new PackageDAL();
    Package objpackageenti = new Package();
    PackageItinerary objCareersBal = new PackageItinerary();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                filldropdwons();
                try
                {
                    editindex = Convert.ToString(Request.QueryString["index"]);
                }
                finally
                {
                   
                }
                if (editindex != null)
                {                   
                    BindCareersJobs();
                    if (Request.QueryString["view"] == "1")
                        pageview(); //view posted offers data
                    else
                        EditPostData();//edit
                }
            }
        }
    }
    private void filldropdwons()
    {
        for (int i = 0; i <= 50; i++)
        { 
            string s=Convert.ToString(i);
            ddlExp1.Items.Add(s);
            ddlExp2.Items.Add(s);
        }
    }
    protected void BindCareersJobs()
    {
        DataSet dsoffers = new DataSet();
        dsoffers = careersdal.BindCareersListData(editindex);
        if (dsoffers.Tables[0].Rows.Count > 0)
        {
            txtjtitle.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["job_title"]);
            txtjLoc.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["job_loc"]);
            string exp = Convert.ToString(dsoffers.Tables[0].Rows[0]["job_exp"]);
            exp = exp.Replace("Years", "");
            string[] expe = exp.Split('-');
            if (expe.Length > 0)
            {                
                ddlExp1.SelectedValue = expe[0].Trim();
                ddlExp2.SelectedValue = expe[1].Trim();
            }            
            txtdescr.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["job_descr"]);
            expe = null;
            exp = null;
            dsoffers.Dispose();
        }
      
    }
    protected void pageview()
    {
        txtjtitle.Enabled = false;
        txtjLoc.Enabled = false;
        ddlExp1.Enabled = false;
        ddlExp2.Enabled = false;
        txtdescr.Enabled = false;
        BtnSubmit.Visible = false;
        imgEditSave.Visible = false;
        imgbtnReset.Visible = false;
        
    }
    protected void EditPostData()
    {       
        BtnSubmit.Visible = false;
        imgEditSave.Visible = true;
        imgbtnReset.Visible = false;
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        BtnSubmit.Visible = true;
        imgEditSave.Visible = false;
        //var Itineraryid = Guid.NewGuid();
        var Job_Id = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);      

        Create_ObjectCareers(Convert.ToString(Job_Id));
        string ItineraryResult = objCareersBal.InsertCareers_job(objpackageenti);

        if (ItineraryResult != "")
        {           
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Careers job post successfully !!!');</script>");
            clearText();
        }

    }
    void Create_ObjectCareers(string offid)
    {
        objpackageenti.PackageItenarary_Id = offid;       
        objpackageenti.Package_Title = txtjtitle.Text;
        objpackageenti.Destination = txtjLoc.Text;
        objpackageenti.Description1 = ddlExp1.SelectedItem.Text + " - " + ddlExp2.SelectedItem.Text + " Years";
        objpackageenti.Description2 = txtdescr.Text;        
    }
    protected void BtnSave_Click(object sender, ImageClickEventArgs e)
    {
        if (editindex != null)
        {
            Create_ObjectCareers(editindex);
            string offerResult = objCareersBal.Update_careers_job(objpackageenti);
            if (offerResult != "")
            {
                ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Selected Job updated successfully !!!');window.location('Admin_CareerJobs.aspx');</script>");
            }
        }
        
    }
    protected void imgbtnReset_Click(object sender, EventArgs e)
    {
        clearText();
    }
    void clearText()
    {
        txtjtitle.Text = "";
        txtjLoc.Text = "";
        ddlExp1.SelectedIndex = -1;
        ddlExp2.SelectedIndex = -1;
        txtdescr.Text = "";     
    }
}