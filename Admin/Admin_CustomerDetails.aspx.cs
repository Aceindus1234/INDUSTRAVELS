using System;
using System.Collections;
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
using System.Collections.Generic;
using System.Data.SqlClient;
using TravelBAL;
using TravelEntities;



public partial class Admin_CustomerDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    string whereCond;
    string qry;
    string url;
    int tid;
    SqlCommand cmdCustomer;
    SqlCommand cmdTravelndPackage;
    int result;
    DataSet dssearch = new DataSet();
    string ScriptMessage;
 
    //CustomerDal objcustomer = new CustomerDal();
    CustomerBal objcustomer = new CustomerBal();
    Customer objcustomerEnti = new Customer();
    Customer objDeletecustomerEnti = new Customer();
    Customer objDeletecustomerEnquiry = new Customer();
    Customer objSearchcustomerEnti = new Customer();
    public int count = 0;
    protected void Page_Init(object sender, System.EventArgs e)
    {
        ViewState["Filter"] = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            BindCustomerDetails1();                   
        }
    }
    private void BindCustomerDetails1()    
    {
        DataSet ds = new DataSet();
        string Filter = ViewState["Filter"].ToString();
        conn.Open();
        if (Filter != "")
        {
           // whereCond = " WHERE ((Customer_Emailid Like '%" + Filter + "%') OR " + "(Customer_FName Like '%" + Filter + "%') OR " + "(Customer_LName Like '%" + Filter + "%')) order by pdate desc";
            whereCond = " WHERE ((Customer_Emailid Like '%" + Filter  + "%') OR " + "(Customer_Fname+' '+Customer_LName) Like '%" + Filter + "%') order by pdate desc";
            qry = "select *,convert(varchar(12),Postdate,103) as pdate from CustomerDetails" + whereCond;
            SqlDataAdapter sdasearch = new SqlDataAdapter(qry, conn);
            sdasearch.Fill(ds);
        }
        else
        {
            ds = objcustomer.Bind_CustomerDetails();          
        }      
        if (ds.Tables[0].Rows.Count == 0)
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            gvCustomer.DataSource = ds;
            gvCustomer.DataBind();
            int columncount = Convert.ToInt32(gvCustomer.Rows[0].Cells.Count);
            gvCustomer.Rows[0].Cells.Clear();
            gvCustomer.Rows[0].Cells.Add(new TableCell());
            gvCustomer.Rows[0].Cells[0].ColumnSpan = columncount;
            gvCustomer.Rows[0].Cells[0].Text = "No records found";
            gvCustomer.Rows[0].Cells[0].CssClass = "grid_width";
        }
        else
        {
            count = ds.Tables[0].Rows.Count + 1;
            gvCustomer.DataSource = ds;
            gvCustomer.DataBind();
        }
        conn.Close();
    }
    private void BindddlCustomerDetails(DataSet dstraveltype)
    {
        if (dstraveltype.Tables[0].Rows.Count == 0)
        {
            dstraveltype.Tables[0].Rows.Add(dstraveltype.Tables[0].NewRow());
            gvCustomer.DataSource = dstraveltype;
            gvCustomer.DataBind();
            int columncount = Convert.ToInt32(gvCustomer.Rows[0].Cells.Count);
            gvCustomer.Rows[0].Cells.Clear();
            gvCustomer.Rows[0].Cells.Add(new TableCell());
            gvCustomer.Rows[0].Cells[0].ColumnSpan = columncount;
            gvCustomer.Rows[0].Cells[0].Text = "No records found for " + ddltraveltypes.SelectedItem.Text + "";
            gvCustomer.Rows[0].Cells[0].CssClass = "grid_width";
        }
        else
        {
                 
            gvCustomer.DataSource = dstraveltype;
            gvCustomer.DataBind();
        }        
    }
    protected void gvCustomer_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCustomer.PageIndex = e.NewPageIndex;
        gvCustomer.DataBind();
        BindCustomerDetails1();       
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        gvCustomer.PageIndex = 0;
        ViewState["Filter"] = SearchBox.Text;
        BindCustomerDetails1();        
    }
    protected void imgbtnReset_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Admin_CustomerDetails.aspx");
    }
    protected void gvCustomer_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
        
           HyperLink hl = (HyperLink)e.Row.FindControl("lnkEnquiryInfo");
           Label lblSerial = (Label)e.Row.FindControl("lblsr");
           lblSerial.Text = count.ToString();
           //lblSerial.Text = ((gvCustomer.PageIndex * gvCustomer.PageSize) + e.Row.RowIndex + 1).ToString();
     

           if (hl != null && hl.Text != "")
            {

                DataRowView drv = (DataRowView)e.Row.DataItem;

                tid = Convert.ToInt32(drv["Travel_Typeid"]);

                string Eid = Convert.ToString(drv["Enquiry_Id"]);
                if (Convert.ToInt32(tid) == 1)
                {
                    hl.NavigateUrl = "Admin_CustomerTravelDetails.aspx?Travelid=" + Server.UrlEncode(Eid.ToString()) + "";
                }
                else if (Convert.ToInt32(tid) == 2)
                {
                    hl.NavigateUrl = "Admin_CustomerPackageDetails.aspx?Packageid=" + Server.UrlEncode(Eid.ToString()) + "";
                }

            }
        }
       count--;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {            
                //getting customerid from particular row
                 string Uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Customer_Id"));
                //identifying the control in gridview
                 ImageButton imgbtnDelete = (ImageButton)e.Row.FindControl("imgbtnDelete");
                 //raising javascript confirmationbox whenver user clicks on ImageButton
                 imgbtnDelete.Attributes.Add("onclick", "javascript:return ConfirmationBox()");          
        } 
    }
    protected void DeleteRecord(object sender, CommandEventArgs e)
    {
        string enquiryid=Convert.ToString(e.CommandArgument.ToString());
        objcustomerEnti.Enquiry_Id = enquiryid;
        DataSet dtenquity = new DataSet();
        dtenquity.Clear();
        dtenquity = objcustomer.Bind_CustomerTravelndToursDetails(objcustomerEnti);
        if (dtenquity.Tables[0].Rows.Count > 0)
        {
            objDeletecustomerEnti.Enquiry_Id = Convert.ToString(dtenquity.Tables[0].Rows[0]["Enquiry_Id"].ToString());
            objDeletecustomerEnti.TravelType_Id = Convert.ToInt32(dtenquity.Tables[0].Rows[0]["Travel_Typeid"].ToString());
            if (Convert.ToInt32(dtenquity.Tables[0].Rows[0]["Travel_Typeid"].ToString()) == 1)
            {
                result = Convert.ToInt32(objcustomer.Delete_CustomerTravelORPackageDetails(objDeletecustomerEnti));
            }
            else if (Convert.ToInt32(dtenquity.Tables[0].Rows[0]["Travel_Typeid"].ToString()) == 2)
            {
                result = Convert.ToInt32(objcustomer.Delete_CustomerTravelORPackageDetails(objDeletecustomerEnti));
            }
            else if (Convert.ToInt32(dtenquity.Tables[0].Rows[0]["Travel_Typeid"].ToString()) == 0)
            {
                result = Convert.ToInt32(objcustomer.Delete_CustomerTravelORPackageDetails(objDeletecustomerEnti));
            }
            if (result == 1 || result == 2)
            {
                BindCustomerDetails1();
                //Displaying alert message after successfully deletion of user
                ScriptMessage = "alert('Customer details deleted successfully');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertmessage", ScriptMessage, true);
            }
        }
        else
        {
            objDeletecustomerEnti.TravelType_Id = 0;
            result = Convert.ToInt32(objcustomer.Delete_CustomerTravelORPackageDetails(objDeletecustomerEnti));
        }
    }
    protected void ddltraveltypes_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddltraveltypes.SelectedItem.Text == "-Select-")
        {
            BindCustomerDetails1();
        } 
        else if (ddltraveltypes.SelectedItem.Text == "Travels")
        {
            objSearchcustomerEnti.TravelType_Id = 1;
            dssearch = objcustomer.Search_CustomerTravelORPackageDetails(objSearchcustomerEnti);
           BindddlCustomerDetails(dssearch);  
                     
        }
        else if (ddltraveltypes.SelectedItem.Text == "Packages")
        {
            objSearchcustomerEnti.TravelType_Id = 2;
            dssearch = objcustomer.Search_CustomerTravelORPackageDetails(objSearchcustomerEnti);
            BindddlCustomerDetails(dssearch);  
        }             

    }
}