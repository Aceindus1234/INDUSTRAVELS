using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TravelEntities;
using TravelBAL;
using TravelDAL;
public partial class industravels_Admin_Admin_PostSpecial_Offers : System.Web.UI.Page
{
   
    Package objpackageenti = new Package();
    Package objPhotoenti = new Package();
    PackageItinerary objPackageBal = new PackageItinerary();
    PackageDAL specialofferdal = new PackageDAL();
    string strScript = "";
    string Photoname = string.Empty;
    string Photopath = string.Empty;
    string Base_dir = System.AppDomain.CurrentDomain.BaseDirectory;
    public static string editindex;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            bindHolidayTypes();
            try
            {
                string packname = Convert.ToString(Request.QueryString["packname"]);
                if (packname == "" || packname == null)
                    editindex = Convert.ToString(Request.QueryString["index"]);
                else
                    editindex = specialofferdal.getSpecialOfferId(packname);
            }
            catch
            {
                editindex = Convert.ToString(Request.QueryString["index"]);
            }
            if (editindex != null)
            {
                BindEditSpecailOffers();   
                if (Request.QueryString["view"] == "1")
                    pageview(); //view posted offers data
                else            
                    EditPostData();//edit
            }
        }
    }
    protected void pageview()
    {
        txtPackName.Enabled = false;
        ddlPackType.Enabled = false;
        txtValid.Enabled = false;
        txtDays.Enabled = false;
        txtNights.Enabled = false;
        txtStartLoc.Enabled = false;
        txtEndLoc.Enabled = false;
        txtItInform.Enabled = false;
        txtTerms.Enabled = false;
        BtnSubmit.Visible = false;
        imgEditSave.Visible = false;
        imgbtnReset.Visible = false;
        uploadtr.Visible = false;
    }
    protected void EditPostData()
    {
        txtPackName.Enabled = false;
        BtnSubmit.Visible = false;
        imgEditSave.Visible = true;
        imgbtnReset.Visible = false;       
    }
    protected void BindEditSpecailOffers()
    {
        DataSet dsoffers = new DataSet();
        dsoffers = specialofferdal.BindSpecialOffers(editindex);
        if (dsoffers.Tables[0].Rows.Count > 0)
        {
            txtPackName.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["Package_Title"]);
            try
            {
                ddlPackType.Items.FindByText(Convert.ToString(dsoffers.Tables[0].Rows[0]["Package_Type"])).Selected = true;
            }
            catch { }
            txtValid.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["Expired_On"]);
            txtDays.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["NoOfDays"]);
            txtNights.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["NoOfNights"]);
            txtStartLoc.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["StartFrom"]);
            txtEndLoc.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["FinishAt"]);
            txtItInform.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["Itinerary_Infor"]);
            txtTerms.Text = Convert.ToString(dsoffers.Tables[0].Rows[0]["Terms_Condi"]);

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
        if (upload1.HasFile)
        {
            using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(upload1.PostedFile.InputStream))
            {
                if (myImage.Height == 250 && myImage.Width == 850)
                {
                    BtnSubmit.Visible = true;
                    imgEditSave.Visible = false;
                    //var Itineraryid = Guid.NewGuid();
                    var Offer_Id = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
                    //var PackageItineraryid = Guid.NewGuid();     
                    #region commented redundent code
                    //objpackageenti.PackageItenarary_Id = Convert.ToString(Offer_Id);
                    //if (ddlPackType.SelectedItem.Text == "None")
                    //    objpackageenti.Package_Type = "Package";
                    //else
                    //    objpackageenti.Package_Type = ddlPackType.SelectedItem.Text;
                    //objpackageenti.Package_Title = txtPackName.Text;        
                    //objpackageenti.Description1 = txtItInform.Text;
                    //objpackageenti.Description2 = txtTerms.Text;
                    //objpackageenti.Days = txtDays.Text;
                    //objpackageenti.Nights = txtNights.Text;
                    //objpackageenti.Source = txtStartLoc.Text;
                    //objpackageenti.Destination = txtEndLoc.Text;      
                    ////string pdate = DateTime.Now.ToString();
                    //objpackageenti.Expiredate = Convert.ToDateTime(txtValid.Text);
                    //objpackageenti.Postdate = System.DateTime.Now;
                    #endregion
                    Create_ObjectSpecialOffers(Convert.ToString(Offer_Id));
                    string ItineraryResult = objPackageBal.InsertSpecialOffers(objpackageenti);

                    Photoname = upload1.FileName.ToString();

                    Photopath = Base_dir + "industravels/Photos/" + Photoname;
                    upload1.SaveAs(Photopath);
                    //objPhotoenti.Itinerary_id = Convert.ToString(Offer_Id);
                    //objPhotoenti.Itinerary_Photoname = Photoname;
                    //objPhotoenti.Itinerary_PhotoPath = Photopath;
                    create_specialOfferPhotos(Convert.ToString(Offer_Id), Photoname, Photopath);
                    string uploadPhotos = objPackageBal.Insert_SpecialOfferImages(objPhotoenti);


                    if (ItineraryResult != "")
                    {
                        //strScript = "alert('Special Packages are posted successfully');location.replace('Admin_SpecialPackageDetails.aspx');";            
                        //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
                        ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Special offer package post successfully !!!');</script>");
                        clearText();
                    }
                }
                else
                {
                    strScript = "alert('upload photo dimensions should be  850(w) * 250 (h)')";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
                }
            }
        }
        else
        {
            strScript = "alert('Please upload photo with dimensions in between 850(w) * 250 (h)')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
        }
    }
    void Create_ObjectSpecialOffers(string offid)
    {
        objpackageenti.PackageItenarary_Id = offid;
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
    }
    void create_specialOfferPhotos(string ofIds,string pname,string pPath)
    {
        objPhotoenti.Itinerary_id = ofIds;
        objPhotoenti.Itinerary_Photoname = pname;
        objPhotoenti.Itinerary_PhotoPath = pPath;
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
    protected void BtnSave_Click(object sender, ImageClickEventArgs e)
    {
        #region commented redendent code
        //objpackageenti.PackageItenarary_Id = Convert.ToString(editindex);
        //if (ddlPackType.SelectedItem.Text == "None")
        //    objpackageenti.Package_Type = "Package";
        //else
        //    objpackageenti.Package_Type = ddlPackType.SelectedItem.Text;
        //objpackageenti.Package_Title = txtPackName.Text;
        //objpackageenti.Description1 = txtItInform.Text;
        //objpackageenti.Description2 = txtTerms.Text;
        //objpackageenti.Days = txtDays.Text;
        //objpackageenti.Nights = txtNights.Text;
        //objpackageenti.Source = txtStartLoc.Text;
        //objpackageenti.Destination = txtEndLoc.Text;        
        //objpackageenti.Expiredate = Convert.ToDateTime(txtValid.Text);
        #endregion

        Create_ObjectSpecialOffers(editindex);
        string offerResult = objPackageBal.UpdateSpecialOffers(objpackageenti);//update the special offers package
        if (upload1.HasFile)
        {
            Photoname = upload1.FileName.ToString();
            using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(upload1.PostedFile.InputStream))
            {
                if (myImage.Height < 250 && myImage.Width < 850)
                {
                    Photopath = Base_dir + "industravels/Photos/" + Photoname;
                    upload1.SaveAs(Photopath);
                    create_specialOfferPhotos(editindex, Photoname, Photopath);
                    //objPhotoenti.Itinerary_id = Convert.ToString(editindex);
                    //objPhotoenti.Itinerary_Photoname = Photoname;
                    //objPhotoenti.Itinerary_PhotoPath = Photopath;
                    objPackageBal.update_SpecialOfferImages(objPhotoenti);//update the special offers image
                }
                else
                {
                    strScript = "alert('Please upload photo with dimensions in between 850(w) * 250 (h)')";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
                }
            }
        }
        if (offerResult != "")
        {
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Special offer package updated successfully !!!');window.location('Admin_SpecialOffers.aspx');</script>");           
        }
    }
    
}