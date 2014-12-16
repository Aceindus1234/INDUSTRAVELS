using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using TravelDAL;
using TravelBAL;
using System.Configuration;

public partial class Admin_PackageItinerary : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    PackageDAL specialpackagedal = new PackageDAL();
    PackageItinerary packagebal = new PackageItinerary();
    DataSet dsSpecialPackages = new DataSet();
    DataSet dsSearchGroups = new DataSet();
    DataSet dsPkgGroups = new DataSet();
    int result;
    string PkgId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            BindPackageGroups();
            GetSpecialPackages();

        }
    }
    protected void BindPackageGroups()
    {
        dsPkgGroups = specialpackagedal.BindPackageGroups();
        ddlPackageGroups.DataSource = dsPkgGroups;
        ddlPackageGroups.DataTextField = "PackageGroups";
        ddlPackageGroups.DataValueField = "Group_Id";
        ddlPackageGroups.DataBind();
        ddlPackageGroups.Items.Insert(0, new ListItem("Select", "0"));
    }
    protected void GetSpecialPackages()
    {
       // conn.Open();
        PkgId = Convert.ToString(Request.QueryString["Packageid"]);
        dsPkgGroups.Clear();
        dsSpecialPackages = specialpackagedal.BindSpecialPackages(PkgId);

        if (dsSpecialPackages.Tables[0].Rows.Count == 0)
        {
            dsSpecialPackages.Tables[0].Rows.Add(dsSpecialPackages.Tables[0].NewRow());
            gvSpecialPackages.DataSource = dsSpecialPackages;
            gvSpecialPackages.DataBind();
            int columncount = Convert.ToInt32(gvSpecialPackages.Rows[0].Cells.Count);
            gvSpecialPackages.Rows[0].Cells.Clear();
            gvSpecialPackages.Rows[0].Cells.Add(new TableCell());
            gvSpecialPackages.Rows[0].Cells[0].ColumnSpan = columncount;
            gvSpecialPackages.Rows[0].Cells[0].Text = "No records found for Specialpackages";
            gvSpecialPackages.Rows[0].Cells[0].CssClass = "grid_width";
        }
        else
        {
            gvSpecialPackages.DataSource = dsSpecialPackages;
            gvSpecialPackages.DataBind();
            
        }
        //conn.Close();
        
    }
    protected void GetSpecialPackages(DataSet dsPackageType)
    {

        if (dsPackageType.Tables[0].Rows.Count == 0)
        {
            dsPackageType.Tables[0].Rows.Add(dsPackageType.Tables[0].NewRow());
            gvSpecialPackages.DataSource = dsPackageType;
            gvSpecialPackages.DataBind();
            int columncount = Convert.ToInt32(gvSpecialPackages.Rows[0].Cells.Count);
            gvSpecialPackages.Rows[0].Cells.Clear();
            gvSpecialPackages.Rows[0].Cells.Add(new TableCell());
            gvSpecialPackages.Rows[0].Cells[0].ColumnSpan = columncount;
            gvSpecialPackages.Rows[0].Cells[0].Text = "No records found for " + ddlPackageGroups.SelectedItem.Text + "";
            gvSpecialPackages.Rows[0].Cells[0].CssClass = "grid_width";

        }
        else
        {
            gvSpecialPackages.DataSource = dsPackageType;
            gvSpecialPackages.DataBind();
        }

    }
    //protected void DeleteRecord(object sender, CommandEventArgs e)
    //{
    //    string Itineraryid = Convert.ToString(e.CommandArgument.ToString());
    //    result = specialpackagedal.DeleteSpecialPackageDetails(Itineraryid);
    //    if (result == 1)
    //    {
    //        GetSpecialPackages();
    //        //Displaying alert message after successfully deletion of user
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Special Package details deleted successfully')", true);
    //    }
    //}
    //protected void gvSpecialPackages_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        //getting customerid from particular row
    //        string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "PackageItenarary_Id"));
    //        //identifying the control in gridview
    //        ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("imgbtnDelete");
    //        //raising javascript confirmationbox whenver user clicks on ImageButton
    //        imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");
    //    }
    //}
    protected void gvSpecialPackages_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvSpecialPackages.PageIndex = e.NewPageIndex;
        gvSpecialPackages.DataBind();
        GetSpecialPackages();
      
    }
    protected void ddlPackageGroups_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPackageGroups.SelectedItem.Text == "Select")
        {
            GetSpecialPackages();
        }
        else
        {
            //SqlDataAdapter da = new SqlDataAdapter("select * from Package_Itinerary where Itenerary_Type='" + ddlPackageGroups.SelectedItem.Text + "'", conn);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    gvSpecialPackages.DataSource = ds;
            //    gvSpecialPackages.DataBind();
            //}
           
           
          // dsSearchGroups = specialpackagedal.BindIteneraryPackageGroupDetails(ddlPackageGroups.SelectedItem.Text);
            dsSearchGroups = packagebal.binditernarydetails(ddlPackageGroups.SelectedItem.Text);
            GetSpecialPackages(dsSearchGroups);
        }
    }
}