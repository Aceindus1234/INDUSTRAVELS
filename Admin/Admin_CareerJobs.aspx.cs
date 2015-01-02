using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TravelBAL;
using TravelDAL;

public partial class industravels_Admin_Admin_CareerJobs : System.Web.UI.Page
{
    DataSet dsJobs;
    PackageItinerary objItineraryBal = new PackageItinerary();
    PackageDAL careersDal= new PackageDAL();
    int result;
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
                GetCareersJoblist();
                GetCareersApply();
            }
        }
    }

    protected void GetCareersJoblist()
    {
        dsJobs = new DataSet();
        dsJobs = objItineraryBal.Bind_Careers();
        bindRecords(gvCareers, dsJobs);
        dsJobs.Dispose();
        #region commented code
        //if (dsJobs.Tables[0].Rows.Count == 0)
        //{
        //    dsJobs.Tables[0].Rows.Add(dsJobs.Tables[0].NewRow());
        //    gvCareers.DataSource = dsJobs;
        //    gvCareers.DataBind();
        //    int columncount = Convert.ToInt32(gvCareers.Rows[0].Cells.Count);
        //    gvCareers.Rows[0].Cells.Clear();
        //    gvCareers.Rows[0].Cells.Add(new TableCell());
        //    gvCareers.Rows[0].Cells[0].ColumnSpan = columncount;
        //    gvCareers.Rows[0].Cells[0].Text = "No records found for careers jobs";
        //    gvCareers.Rows[0].Cells[0].CssClass = "grid_width";
        //}
        //else
        //{
        //    gvCareers.DataSource = dsJobs;
        //    gvCareers.DataBind();
        //    dsJobs.Dispose();
        //}
        #endregion
    }
    protected void GetCareersApply()
    {
        dsJobs = new DataSet();
        dsJobs = objItineraryBal.Bind_AppliedCareers();
        bindRecords(grdApJobs, dsJobs);
        dsJobs.Dispose();
    }

    private void bindRecords(GridView rgd, DataSet dset)
    {

        if (dset.Tables[0].Rows.Count == 0)
        {
            dset.Tables[0].Rows.Add(dset.Tables[0].NewRow());
            rgd.DataSource = dset;
            rgd.DataBind();
            int columncount = Convert.ToInt32(rgd.Rows[0].Cells.Count);
            rgd.Rows[0].Cells.Clear();
            rgd.Rows[0].Cells.Add(new TableCell());
            rgd.Rows[0].Cells[0].ColumnSpan = columncount;
            rgd.Rows[0].Cells[0].Text = "No records found ";
            rgd.Rows[0].Cells[0].CssClass = "grid_width";
        }
        else
        {
            rgd.DataSource = dset;
            rgd.DataBind();
            dset.Dispose();

        }
    }
    protected void gvCareers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCareers.PageIndex = e.NewPageIndex;
        GetCareersJoblist();
        GetCareersApply();
    }
    protected void grdApJobs_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdApJobs.PageIndex = e.NewPageIndex;
        GetCareersJoblist();
        GetCareersApply();
    }
    protected void gvCareers_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting customerid from particular row
            string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "job_code"));
            //identifying the control in gridview
            ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("imgbtnDelete");
            //raising javascript confirmationbox whenver user clicks on ImageButton
            imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");
        }
    }
    protected void grdApJobs_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting customerid from particular row
            string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "ap_jcode"));
            //identifying the control in gridview
            ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("btnApplyDelete");
            //raising javascript confirmationbox whenver user clicks on ImageButton
            imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");
        }
    }

    protected void DeleteRecord(object sender, CommandEventArgs e)
    {
        string CareerId = Convert.ToString(e.CommandArgument.ToString());
        result = careersDal.DeleteCareersRecord(CareerId);       
        if (result > 0)
        {
            GetCareersJoblist();
            GetCareersApply();
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Selected job details deleted successfully');</script>");
        }
        CareerId = null;
    }
    protected void DeleteApplyRecord(object sender, CommandEventArgs e)
    {
        int applId = Convert.ToInt32(e.CommandArgument.ToString());
        result = careersDal.Delete_Applied_Job(applId);     
        if (result > 0)
        {
            GetCareersJoblist();
            GetCareersApply();
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Selected applied job details deleted successfully');</script>");
        }        
    }
    protected void lnkbtnfilename(object sender, CommandEventArgs e)
    {
        string Fname = string.Empty;      
        Fname = e.CommandArgument.ToString();
        if (Fname != "")
        {
            string Base_dir = System.AppDomain.CurrentDomain.BaseDirectory;
            System.IO.FileInfo file = new System.IO.FileInfo(Base_dir + "industravels/Resumes/" + Fname);
            //TemplateUpload.SaveAs(Base_dir + strUploadFileName);
            if (file.Exists)
            {
                Response.Clear();
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Fname);
                Response.AddHeader("content-Length", file.Length.ToString());
                Response.ContentType = "application/octet-stream";// 
                Response.WriteFile(file.FullName);
                Response.End();
            }
            else
            {               
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('File Does not Exist');</script>");
            }

        }
    }
}