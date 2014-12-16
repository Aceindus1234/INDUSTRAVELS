using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using TravelBAL;
using TravelDAL;

public partial class Admin_Admin_CustomerPackageDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    string Packageid;
    int result;
    SqlCommand cmdTravelndPackage;
    PackageDAL packageobj = new PackageDAL();
    DataSet dsPackages = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            BindCustomer_PackageDetails();
        }
    }
    private void BindCustomer_PackageDetails()
    {
        dsPackages.Clear();
        conn.Open();
        Packageid = Convert.ToString(Request.QueryString["Packageid"]);
        dsPackages = packageobj.BindCustomerPackageDetails(Server.UrlDecode(Packageid));
        
        if (dsPackages.Tables[0].Rows.Count == 0)
        {
            dsPackages.Tables[0].Rows.Add(dsPackages.Tables[0].NewRow());
            gvPackages.DataSource = dsPackages;
            gvPackages.DataBind();
            int columncount = Convert.ToInt32(gvPackages.Rows[0].Cells.Count);
            gvPackages.Rows[0].Cells.Clear();
            gvPackages.Rows[0].Cells.Add(new TableCell());
            gvPackages.Rows[0].Cells[0].ColumnSpan = columncount;
            gvPackages.Rows[0].Cells[0].Text = "No records found for Packages";
            gvPackages.Rows[0].Cells[0].CssClass = "grid_width";

        }
        else
        {
            gvPackages.DataSource = dsPackages;
            gvPackages.DataBind();
        }
        conn.Close();
    }
    protected void gvPackages_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvPackages.PageIndex = e.NewPageIndex;
        gvPackages.DataBind();
        BindCustomer_PackageDetails();
    }
    protected void gvPackages_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting customerid from particular row
            string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Package_ItineraryId"));
            //identifying the control in gridview
            ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("imgbtnDelete");
            //raising javascript confirmationbox whenver user clicks on ImageButton
            imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");
        }
    }
    protected void DeleteRecord(object sender, CommandEventArgs e)
    {
        string enquiryid = Convert.ToString(e.CommandArgument.ToString());
        result = packageobj.DeleteCustomerTPackageDetails(enquiryid);
        if (result == 1)
        {
            BindCustomer_PackageDetails();
            //Displaying alert message after successfully deletion of user
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Customer Package details deleted successfully')", true);
        }
    }
}
