using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TravelEntities;
using TravelBAL;

public partial class industravels_Admin_Admin_SalesForms : System.Web.UI.Page
{
    public static string refeneceId;
    PackageItinerary insertSalesForm;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Admin"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}
    }
    private void diablecntrl()
    {
        txtFName.Enabled = false;
        txtLName.Enabled = false;
        txtMblNum.Enabled = false;
        txtEmail.Enabled = false;
        txtAddress.Enabled = false;
        txtpass.Enabled = false;
        ddlPtype.Enabled = false;
        ddlRgnType.Enabled = false;
    }
    protected void btnsave_click(object sender, EventArgs e)
    {
        try
        {
            if (refeneceId != "" || refeneceId != null)
            {
                TravelPackages tpSalesProp = new TravelPackages();
                tpSalesProp.ColId = refeneceId;
                tpSalesProp.AirName = txtAName.Text;
                tpSalesProp.AirNum = txtANumber.Text;
                tpSalesProp.Origin = txtorg.Text;
                tpSalesProp.Destination = txtdest.Text;
                tpSalesProp.TripType = rdlJourney.SelectedItem.Text;
                tpSalesProp.IssuDate = Convert.ToDateTime(txtIssued.Text);
                tpSalesProp.TravelDate = Convert.ToDateTime(txtDTra.Text);
                tpSalesProp.TicketNum = txtTiNumber.Text;
                tpSalesProp.Amount = txtAmount.Text;
                insertSalesForm = new PackageItinerary();
                int res = insertSalesForm.insertSales(tpSalesProp);
                if (res > 0)
                {
                    clearcntrls();
                    ClientScript.RegisterStartupScript(typeof(Page), "Success", "<script>if(confirm('Details saved successfully. Do you want generate invoice ?')) window.location('Admin_GenerateReport.aspx?refid=" + refeneceId + "');</script>");
                }
                else
                    ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script>alert('Enquiry details inserted failed. Please try again.');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "Not Available", "<script>alert('Please search by name / passport number / mobile number ');</script>");
            }
        }
        catch { }

    }
    protected void txtText_changed(object sender, EventArgs e)
    {
        if (txtTextSearch.Text != "")
        {
            insertSalesForm = new PackageItinerary();
            DataSet dslist = new DataSet();
            dslist = insertSalesForm.BindInvoiceData(txtTextSearch.Text);
            if (dslist.Tables[0].Rows.Count > 0)
            {
                refeneceId = Convert.ToString(dslist.Tables[0].Rows[0][0]);
                txtFName.Text = Convert.ToString(dslist.Tables[0].Rows[0][1]);
                txtLName.Text = Convert.ToString(dslist.Tables[0].Rows[0][2]);
                txtMblNum.Text = Convert.ToString(dslist.Tables[0].Rows[0][3]);
                txtEmail.Text = Convert.ToString(dslist.Tables[0].Rows[0][4]);
                txtAddress.Text = Convert.ToString(dslist.Tables[0].Rows[0][5]);
                txtpass.Text = Convert.ToString(dslist.Tables[0].Rows[0][6]);
                ddlPtype.SelectedValue = Convert.ToString(dslist.Tables[0].Rows[0][7]);
                ddlRgnType.SelectedValue = Convert.ToString(dslist.Tables[0].Rows[0][8]);

                txtAName.Text = Convert.ToString(dslist.Tables[0].Rows[0][9]);
                if (txtAName.Text != "")
                {
                    btnSave.Visible = false;
                    btnUpdate.Visible = true;
                }
                else
                {
                    diablecntrl();
                    btnSave.Visible = true;
                    btnUpdate.Visible = false;
                }

                txtANumber.Text = Convert.ToString(dslist.Tables[0].Rows[0][10]);
                txtorg.Text = Convert.ToString(dslist.Tables[0].Rows[0][11]);
                txtdest.Text = Convert.ToString(dslist.Tables[0].Rows[0][12]);
                try
                {
                    txtIssued.Text = Convert.ToDateTime(Convert.ToString(dslist.Tables[0].Rows[0][14])).ToShortDateString();
                    txtDTra.Text = Convert.ToDateTime(Convert.ToString(dslist.Tables[0].Rows[0][15])).ToShortDateString();
                }
                catch
                {
                    txtIssued.Text = Convert.ToString(dslist.Tables[0].Rows[0][14]);
                    txtDTra.Text = Convert.ToString(dslist.Tables[0].Rows[0][15]);
                }
                txtTiNumber.Text = Convert.ToString(dslist.Tables[0].Rows[0][16]);
                txtAmount.Text = Convert.ToString(dslist.Tables[0].Rows[0][17]);
                try
                {
                    rdlJourney.SelectedValue = Convert.ToString(dslist.Tables[0].Rows[0][13]);
                }
                catch { }
            }
            else
            {
                clearcntrls();
                ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('No records found on given value.');</script>");
            }
        }
    }
    private void clearcntrls()
    {
        txtFName.Text = "";
        txtLName.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtMblNum.Text = "";
        txtpass.Text = "";
        ddlPtype.SelectedIndex = -1;
        ddlRgnType.SelectedIndex = -1;

        txtAName.Text = "";
        txtANumber.Text = "";
        txtorg.Text = "";
        txtdest.Text = "";
        rdlJourney.SelectedIndex = -1;
        txtIssued.Text = "";
        txtDTra.Text = "";
        txtTiNumber.Text = "";
        txtAmount.Text = "";
    }

    protected void btnupdate_click(object sender, EventArgs e)
    {
        if (refeneceId != null)
            if (refeneceId != "")
            {
                TravelPackages tproperties = new TravelPackages();

                // enquiry form details updation
                tproperties.ColId = refeneceId;

                tproperties.FirstName = txtFName.Text;
                tproperties.LastName = txtLName.Text;
                tproperties.PhoneNum = txtMblNum.Text;
                tproperties.EmailId = txtEmail.Text;
                tproperties.Address = txtAddress.Text;
                tproperties.PassPortNum = txtpass.Text;
                tproperties.EnqiryType = ddlPtype.SelectedItem.Text;
                tproperties.TripType = ddlRgnType.SelectedItem.Text;

                //sales form details updation
                tproperties.AirName = txtAName.Text;
                tproperties.AirNum = txtANumber.Text;
                tproperties.Origin = txtorg.Text;
                tproperties.Destination = txtdest.Text;
                tproperties.TripType = rdlJourney.SelectedItem.Text;
                tproperties.IssuDate = Convert.ToDateTime(txtIssued.Text);
                tproperties.TravelDate = Convert.ToDateTime(txtDTra.Text);
                tproperties.TicketNum = txtTiNumber.Text;
                tproperties.Amount = txtAmount.Text;

                PackageItinerary updateEnquiry = new PackageItinerary();
                try
                {
                    //alert('Enquiry details updated successfully.');
                    int upresu = updateEnquiry.Update_Enq(tproperties);
                    if (upresu > 0)
                        ClientScript.RegisterStartupScript(typeof(Page), "Success", "<script>if(confirm('Details updated successfully. do want generate new report ?')) window.location('Admin_GenerateReport.aspx?refid=" + refeneceId + "');</script>");
                    else
                        ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script>alert('Enquiry details update failed. Please try again.');</script>");
                }
                catch { ClientScript.RegisterStartupScript(typeof(Page), "exception", "<script>alert('unknown exception raised. Please try again.');</script>"); }

            }
    }
}