using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using TravelBAL;
using TravelDAL;
using TravelEntities;
using System.IO;
public partial class HolidayDetails : System.Web.UI.Page
{
    
    string itineraryId;
    wwUtils packages = new wwUtils();
    CustomerBal customerbal = new CustomerBal();
    Customer customerEntities = new Customer();
    DataSet ds, ds1;
    SqlParameter[] param;
  
    /// <summary>
    /// bind itineray details related to the selected itinerary title
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                itineraryId = Request.QueryString["packid"].ToString();
                if (itineraryId != "")
                {
                    param = new SqlParameter[1];
                    param[0] = new SqlParameter("@itineraryId", itineraryId);
                    ds = packages.ExecuteSQL("sp_searchItenarayPack", param);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        dtlistItineraries.DataSource = ds.Tables[0];
                        dtlistItineraries.DataBind();
                        lbl1.Text = ds.Tables[0].Rows[0]["Package_Title"] + " (" + ds.Tables[0].Rows[0]["Package_SubTitle"] + ") -- " + ds.Tables[0].Rows[0]["Itenerary_Type"];
                        if (ds.Tables[1].Rows.Count > 0)
                        {
                            DataList1.DataSource = ds.Tables[1];
                            DataList1.DataBind();
                        }
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Sorry, Information not available right now');window.history.go(-1);</script>");

                }
            }
            catch
            {
                //htmltd.InnerText = "No Records Found .... ";
                ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Sorry, Information not available right now');window.history.go(-1);</script>");
            }
        }
    }
   /// <summary>
   /// Datalist databound event for bind inner datalist with the itinerary images for related packages
   /// </summary>
   /// <param name="sender"></param>
   /// <param name="e"></param>
    protected void outerRep_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item)
        {
            try
            {
                DataRowView drv = e.Item.DataItem as DataRowView;
                DataList innerDataList = e.Item.FindControl("innerdatalist") as DataList;
                param = new SqlParameter[1];
                param[0] = new SqlParameter("@ItineraryId", itineraryId);
                ds1 = packages.ExecuteSQL("sp_binditiImage", param);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    innerDataList.DataSource = ds1;
                    innerDataList.DataBind();
                }
            }
            catch
            { }
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            string[] s = lbl1.Text.Split('(');           
            customerEntities.Customer_Fname = txtName.Text;
            customerEntities.Customer_Mobile = txtPhone.Text;
            customerEntities.Customer_Emailid = txtMail.Text;
            customerEntities.Pack_Name = s[0];
            customerEntities.Postdate = DateTime.Now;
            int i = customerbal.InsertCustomerBasicDetails(customerEntities);
            if (i == 1)
            {
                customerbal.sendmail(txtName.Text, txtPhone.Text, txtMail.Text, s[0]);
                txtMail.Text = "";
                txtName.Text = "";
                txtPhone.Text = "";
                ClientScript.RegisterStartupScript(typeof(Page), "Success", "<script> alert('Thank You, Our Experts Will Contact You Soon, Happy Day !!!');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "Failed", "<script> alert('Sending Details Failed, Please Try Again !!!');</script>");
            }
        }
        catch
        {
            ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script> alert('Sorry for the inconvenience, Please Try Again !!!');</script>");
        }
    }
    //protected void lnkbtn1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect(Request.UrlReferrer.AbsolutePath.ToString());
    //}
   
}