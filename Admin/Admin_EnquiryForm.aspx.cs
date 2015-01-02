using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelEntities;
using TravelBAL;
public partial class industravels_Admin_Admin_EnquiryFormaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Admin"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            TravelPackages tproperties = new TravelPackages();
            var enq_Id = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 5);
            tproperties.ColId = enq_Id;
            tproperties.FirstName = txtFName.Text;
            tproperties.LastName = txtLName.Text;
            tproperties.PhoneNum = txtMblNum.Text;
            tproperties.EmailId = txtEmail.Text;
            tproperties.Address = txtAddress.Text;
            tproperties.PassPortNum = txtpass.Text;
            tproperties.EnqiryType = ddlPtype.SelectedItem.Text;
            tproperties.TripType = ddlRgnType.SelectedItem.Text;
            PackageItinerary insertEnquiry = new PackageItinerary();
            int res = insertEnquiry.insertEnq(tproperties);
            if (res > 0)
            {
                // alert('Enquiry details inserted successfully.');
                clearcontrols();
                ClientScript.RegisterStartupScript(typeof(Page), "Success", "<script>if(confirm('Enquiry details saved successfully. Do you want continue ?')) window.location('Admin_SalesForms.aspx');</script>");
            }
            else
                ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script>alert('Enquiry details inserted failed. Please try again.');</script>");
        }
        catch { }
    }
    private void clearcontrols()
    {
        txtFName.Text = "";
        txtLName.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtMblNum.Text = "";
        txtpass.Text = "";
        ddlPtype.SelectedIndex = -1;
        ddlRgnType.SelectedIndex = -1;
    }
}