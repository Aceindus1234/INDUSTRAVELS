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

public partial class Admin_Admin_PackageDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    PackageDAL specialpackagedal = new PackageDAL();
    DataSet dsSpecialPackages = new DataSet();
    DataSet dsSearchGroups = new DataSet();
    DataSet dsPkgGroups = new DataSet();
    PackageItinerary objItineraryBal = new PackageItinerary();
    int result;
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
        dsPkgGroups.Clear();
        dsSpecialPackages = objItineraryBal.Bind_PackageDetails();
        bindDetails(dsSpecialPackages, "Specialpackages");
        //conn.Close();
    }
    protected void GetSpecialPackages(string packname)
    {
        dsPkgGroups.Clear();
        dsSpecialPackages = objItineraryBal.Bind_PackageDetails(packname);
        bindDetails(dsSpecialPackages, "Specialpackages");
    }
    
    protected void bindDetails(DataSet dsPack, string type)
    {
        if (dsPack.Tables[0].Rows.Count == 0)
        {
            dsPack.Tables[0].Rows.Add(dsPack.Tables[0].NewRow());
            gvSpecialPackages.DataSource = dsPack;
            gvSpecialPackages.DataBind();
            int columncount = Convert.ToInt32(gvSpecialPackages.Rows[0].Cells.Count);
            gvSpecialPackages.Rows[0].Cells.Clear();
            gvSpecialPackages.Rows[0].Cells.Add(new TableCell());
            gvSpecialPackages.Rows[0].Cells[0].ColumnSpan = columncount;
            gvSpecialPackages.Rows[0].Cells[0].Text = "No records found for " + type + "";
            gvSpecialPackages.Rows[0].Cells[0].CssClass = "grid_width";
        }
        else
        {
            gvSpecialPackages.DataSource = dsPack;
            gvSpecialPackages.DataBind();

        }
    }
   
    
    protected void DeleteRecord(object sender, CommandEventArgs e)
    {
        string Itineraryid = Convert.ToString(e.CommandArgument.ToString());
        result = specialpackagedal.DeleteSpecialPackageDetails(Itineraryid);
       // result = 1;
        if (result == 1 || result == 2 || result == 3)
        {
            //GetSpecialPackages();
            //Displaying alert message after successfully deletion of user
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Special Package details deleted successfully')", true);
            //string strscript = "alert('Special Package details deleted successfully');";
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strscript, true);            
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Special Package details deleted successfully');</script>");
            checkBindingControls();
        }
        ddlPackageGroups.SelectedIndex = -1;
    }
    protected void lnkPostSpecialPackages_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_PostSpecialPackages.aspx");
    }
    protected void gvSpecialPackages_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting customerid from particular row
            string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Package_Id"));
            //identifying the control in gridview
            ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("imgbtnDelete");
            //raising javascript confirmationbox whenver user clicks on ImageButton
            imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");
        }
    }
    protected void gvSpecialPackages_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvSpecialPackages.PageIndex = e.NewPageIndex;
        gvSpecialPackages.DataBind();
       // GetSpecialPackages();
        checkBindingControls();
    }

    void checkBindingControls()
    {
        if (txtpacksearch.Text == "")
        {
            if (ddlPackageGroups.SelectedItem.Text == "Select")
                GetSpecialPackages();
            else
                bindFromDropdown();
        }
        else
        {
            GetSpecialPackages(txtpacksearch.Text.Trim());
        }
    }
    protected void ddlPackageGroups_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtpacksearch.Text = "";
        bindFromDropdown();
    }

    void bindFromDropdown()
    {
        if (ddlPackageGroups.SelectedItem.Text != "Select")
        {
            dsSearchGroups = specialpackagedal.BindPackageGroupDetails(ddlPackageGroups.SelectedItem.Text);
            bindDetails(dsSearchGroups, ddlPackageGroups.SelectedItem.Text);
        }
        else
        {
            GetSpecialPackages();
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        GetSpecialPackages(txtpacksearch.Text.Trim());
    }
}