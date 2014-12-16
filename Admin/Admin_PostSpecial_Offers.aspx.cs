using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TravelEntities;
using TravelBAL;
public partial class industravels_Admin_Admin_PostSpecial_Offers : System.Web.UI.Page
{
   
    Package objpackageenti = new Package();
    Package objPhotoenti = new Package();
    PackageItinerary objPackageBal = new PackageItinerary();
    string strScript = "";
    string Photoname = string.Empty;
    string Photopath = string.Empty;
    string Base_dir = System.AppDomain.CurrentDomain.BaseDirectory;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            bindHolidayTypes();
        }
    }
    protected void bindHolidayTypes()
    {
        string xmlpath = Server.MapPath("xmlfiles/HolidayTypes.xml");
        DataSet dsxml = new DataSet();
        dsxml.ReadXml(xmlpath);
        ddlPackType.Items.Clear();
        ddlPackType.DataSource = dsxml;
        ddlPackType.DataTextField = "holiday";
        ddlPackType.DataValueField = "holiday";
        ddlPackType.DataBind();
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        BtnSubmit.Visible = true;
        imgEditSave.Visible = false;
        //var Itineraryid = Guid.NewGuid();
        var Offer_Id = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
        //var PackageItineraryid = Guid.NewGuid();     

        objpackageenti.PackageItenarary_Id = Convert.ToString(Offer_Id);
        if (ddlPackType.SelectedItem.Text == "None")
            objpackageenti.Package_Type = "Package";
        else
            objpackageenti.Package_Type = ddlPackType.SelectedItem.Text;
        objpackageenti.Package_Title = txtPackName.Text;        
        objpackageenti.Description1 = txtItInform.Text;
        objpackageenti.Description2 = txtTerms.Text;
        objpackageenti.Days = txtDays.Text;
        objpackageenti.Nights = txtNights.Text;
        objpackageenti.Source = txtStartLoc.Text;
        objpackageenti.Destination = txtEndLoc.Text;      
        //string pdate = DateTime.Now.ToString();
        objpackageenti.Expiredate = Convert.ToDateTime(txtValid.Text);
        objpackageenti.Postdate = System.DateTime.Now;
        
        string ItineraryResult = objPackageBal.InsertSpecialOffers(objpackageenti);

        if (upload1.HasFile)
        {
            Photoname = upload1.FileName.ToString();
            using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(upload1.PostedFile.InputStream))
            {
                //if (myImage.Height <= 400 && myImage.Width <= 600)
                //{
                Photopath = Base_dir + "industravels/Photos/" + Photoname;
                upload1.SaveAs(Photopath);
                objPhotoenti.Itinerary_id = Convert.ToString(Offer_Id);
                objPhotoenti.Itinerary_Photoname = Photoname;
                objPhotoenti.Itinerary_PhotoPath = Photopath;
                string uploadPhotos = objPackageBal.Insert_SpecialOfferImages(objPhotoenti);
                //}
                //else
                //{
                //    strScript = "alert('Please upload photo with dimensions in between 600(w) * 400 (h)')";
                //    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
                //}
            }
        }

        if (ItineraryResult != "")
        {
            //strScript = "alert('Special Packages are posted successfully');location.replace('Admin_SpecialPackageDetails.aspx');";            
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Special offer package post successfully !!!');</script>");
            clearText();
        }
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {

    }
    protected void imgbtnReset_Click(object sender, EventArgs e)
    {
        clearText();
    }
    void clearText()
    {
        txtPackName.Text = "";
        txtDays.Text = "";
        txtNights.Text = "";
        txtItInform.Text = "";
        txtEndLoc.Text = "";
        txtStartLoc.Text = "";
        txtTerms.Text = "";
        txtValid.Text = "";
        ddlPackType.SelectedIndex = -1;        
    }
}