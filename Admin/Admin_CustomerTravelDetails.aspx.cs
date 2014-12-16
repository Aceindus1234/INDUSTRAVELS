using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using TravelDAL;

public partial class Admin_CustomerTravelDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    string Travelid;
    int result;
    SqlCommand cmdTravelndPackage;
    TravelInfo traveldal = new TravelInfo();
    DataSet dstravels = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            BindCustomer_TravelDetails();
        }
    }
    private void BindCustomer_TravelDetails()
    {
        conn.Open();
        Travelid = Convert.ToString(Request.QueryString["Travelid"]);
        dstravels = traveldal.BindCustomerTravelDetails(Travelid);
        if (dstravels.Tables[0].Rows.Count == 0)
        {
            dstravels.Tables[0].Rows.Add(dstravels.Tables[0].NewRow());
            gvTravels.DataSource = dstravels;
            gvTravels.DataBind();
            int columncount = Convert.ToInt32(gvTravels.Rows[0].Cells.Count);
            gvTravels.Rows[0].Cells.Clear();
            gvTravels.Rows[0].Cells.Add(new TableCell());
            gvTravels.Rows[0].Cells[0].ColumnSpan = columncount;
            gvTravels.Rows[0].Cells[0].Text = "No records found for travels";
            gvTravels.Rows[0].Cells[0].CssClass = "grid_width";

        }
        else
        {
            gvTravels.DataSource = dstravels;
            gvTravels.DataBind();
        }
        conn.Close();
    }
    protected void gvTravels_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTravels.PageIndex = e.NewPageIndex;
        gvTravels.DataBind();
        BindCustomer_TravelDetails();
    }
    protected void gvTravels_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting customerid from particular row
            string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Travel_Id"));
            //identifying the control in gridview
            ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("imgbtnDelete");
            //raising javascript confirmationbox whenver user clicks on ImageButton
            imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");
        }
    }
    protected void DeleteRecord(object sender, CommandEventArgs e)
    {
        string enquiryid = Convert.ToString(e.CommandArgument.ToString());
        result = traveldal.DeleteCustomerTravelDetails(enquiryid);
        if (result > 0)
        {
            BindCustomer_TravelDetails();
            //Displaying alert message after successfully deletion of user
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('Customer travel details deleted successfully')", true);
        }
    }
}
