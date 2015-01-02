using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TravelDAL;
using TravelBAL;
public partial class industravels_Admin_Admin_SpecialOffers : System.Web.UI.Page
{
    DataSet dsPkgGroups = new DataSet();
    DataSet dsSpecialPackages = new DataSet();
    PackageItinerary objItineraryBal = new PackageItinerary();
    PackageDAL specialpackagedal = new PackageDAL();
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
                GetSpecialOffers();
            }
        }
    }
    protected void GetSpecialOffers()
    {       
        dsPkgGroups.Clear();
        dsSpecialPackages = objItineraryBal.Bind_SpecialOffers();
        bindDetails(dsSpecialPackages, "Special Offers");        
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
    protected void gvSpecialPackages_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvSpecialPackages.PageIndex = e.NewPageIndex;
        gvSpecialPackages.DataBind();       
        //checkBindingControls();
    }
    protected void gvSpecialPackages_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting customerid from particular row
            string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "pack_Id"));
            //identifying the control in gridview
            ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("imgbtnDelete");
            //raising javascript confirmationbox whenver user clicks on ImageButton
            imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");
        }
    }
    protected void DeleteRecord(object sender, CommandEventArgs e)
    {
        string Itineraryid = Convert.ToString(e.CommandArgument.ToString());
        result = specialpackagedal.DeleteSpecialoffersDetails(Itineraryid);
        // result = 1;
        if (result > 0)
        {
            GetSpecialOffers();
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Special Package details deleted successfully');</script>");
        }  
    }
}