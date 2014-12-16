using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelDAL;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using TravelEntities;
using TravelBAL;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Web.Services;

public partial class Admin_PostSpecialPackages : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    PackageDAL specialpackagedal = new PackageDAL();
    DataSet dsSpecialPackages = new DataSet();
    DataSet dsPackageRegions = new DataSet();
    Package objpackageenti = new Package();
    Package objPhotoenti = new Package();
    PackageItinerary objPackageBal = new PackageItinerary();
    TravelPackages objtravelentities = new TravelPackages(); 
    int result;
    string strScript;
    string Photoname = string.Empty;
    string Photopath = string.Empty;
    public static string editindex;
    string Base_dir = System.AppDomain.CurrentDomain.BaseDirectory;
    int edit_Regionid;
    string photoitineraryid;
    protected void Page_Load(object sender, EventArgs e)
    {              
        ltrlEdit.Text = "Post Package";
        UploadPhoto.Visible = true;
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        #region copyinnotpostback
        //else if(Session["Admin"] != null)
        //{
        //    if (Session["Country"] != null)
        //    {
        //        string country = Convert.ToString(Session["Country"]);
        //        ddlCountry.Items.FindByText(country).Selected = true;
        //    }
        //}
        #endregion

        if (!IsPostBack)
        {
            if (Session["Country"] != null)
            {
                string country = Convert.ToString(Session["Country"]);
                ddlCountry.Items.FindByText(country).Selected = true;
            }

            BindPackageGroups();
            bindHolidayTypes();
            try
            {
                string packname = Convert.ToString(Request.QueryString["packname"]);
                if (packname == "")
                    editindex = Convert.ToString(Request.QueryString["index"]);
                else
                {
                    SqlCommand cmd = new SqlCommand("select top 1 Package_Id from Travel_Packages where Package_Name='" + packname + "'", conn);
                    conn.Open();
                    editindex = cmd.ExecuteScalar().ToString();
                    cmd.Dispose();
                    conn.Close();
                }
            }
            catch
            {
                editindex = Convert.ToString(Request.QueryString["index"]);
            }
            if (editindex != null)
            {
                ltrlEdit.Visible = true;
                if (Request.QueryString["view"] == "1")
                {
                    radiobtnstr.Visible = false;
                    BindEditPackage();
                    BindEditPackageItinerary();//based on editindex
                    pageview();
                }
                else
                {
                    radiobtnstr.Visible = true;
                    postnew();
                }
            }
        }        
    }

    void pageview()
    {
        ltrlEdit.Text = "View Package";        
        TxtPkgTitle.Enabled = false;
        pnlItineraryDetails.Visible = true;
        PnlPackageDetails.Visible = true;
        pnlItineraryDetails.Enabled = false;
        PnlPackageDetails.Enabled = false;
        BtnSubmit.Visible = false;
        BtnPackageDetails.Visible = false;
        imgbtnCancel.Visible = false;
        ImageButton4.Visible = false;
        imgEditContinue.Visible = false;
        imgEditSave.Visible = false;
    }

    void postnew()
    {
        try
        {
            trtitles.Visible = true; //bind dropdownlist for itenary package titles and remove attibutes for jquery check names                   
            dsSpecialPackages = specialpackagedal.BindItenararyNames(editindex);
            ddlItenarary.Items.Clear();
            ddlItenarary.DataTextField = "Package_Title";
            ddlItenarary.DataValueField = "PackageItenarary_Id";
            ddlItenarary.DataSource = dsSpecialPackages;
            ddlItenarary.DataBind();
            ddlItenarary.Items.Insert(0, new ListItem("Select Itenarary", "0"));
        }
        catch
        {
            trtitles.Visible = false;
        }
        TxtPkgTitle.Enabled = true;
        ltrlEdit.Text = "Edit Package";
        BindEditPackage();
        //trtitles.Visible = false;
        pnlItineraryDetails.Visible = false;
        PnlPackageDetails.Visible = true;
        BtnSubmit.Visible = false;
        BtnPackageDetails.Visible = false;
        imgbtnCancel.Visible = true;
        ImageButton4.Visible = true;
        imgEditContinue.Visible = true;
        imgEditSave.Visible = true;
    }

    protected void rdlistnew_Click(object sender, EventArgs e)
    {
        if (rdlistnew.SelectedValue == "1")
        {
            Session["TravelPackageid"] = Convert.ToString(Request.QueryString["index"]);
            //objpackageenti.Packmainid = Convert.ToString(Request.QueryString["index"]);
            visiblepanels();
            clearitems();
           // postnew();
        }
        else
        {
           // pageview();
            BtnSubmit.Visible = false;
            imgEditSave.Visible = true;
            TxtPkgTitle.Enabled = false;
            trtitles.Visible = true;
            try { showitenarypanel(); }
            catch { binditenaryindexchange(); }
        }
    }
    void clearitems()
    {
        trtitles.Visible = false;
        TxtPkgTitle.Enabled = true;
        ddlHolidayType.SelectedIndex = -1;
        //TxtPkgTitle.Text = "";
        //txtSubtilte.Text = "";       
        //txtDesc1.Text = "";
        //txtDesc2.Text = "";
        //txtInclusion.Text = "";
        cleartext();
        BtnSubmit.Visible = true;
        imgEditSave.Visible = false;
    }

    [System.Web.Services.WebMethod]
    public static string CheckPackName(string PackName)
    {
        string returnValue = string.Empty;
        returnValue = serviceMethods("spx_CheckPackAvailability", PackName,"");
        return returnValue;
    }
     [System.Web.Services.WebMethod]
    public static string CheckItenaryTitle(string ItenaryTitle,string subtitle)
    {
        string returnValue = string.Empty;
        returnValue = serviceMethods("spx_CheckItenaryAvailability", ItenaryTitle,subtitle);
        return returnValue;
    }

     public static string serviceMethods(string proce, string param1, string param2)
     {
         string returnValue = string.Empty;
         try
         {
             string consString = ConfigurationManager.AppSettings["TravelConnectionString"];
             SqlConnection conn = new SqlConnection(consString);
             SqlCommand cmd = new SqlCommand(proce, conn);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@PackName", param1.Trim());
             if (param2 != "")
                 cmd.Parameters.AddWithValue("@subtitle", param2.Trim());
             conn.Open();
             returnValue = cmd.ExecuteScalar().ToString();
             if (returnValue == "")
                 returnValue = "error";
             conn.Close();
         }
         catch
         {
             returnValue = "error";
         }
         return returnValue;
     }

    protected void ddlItenarary_Changed(object sender, EventArgs e)
    {
        try { editindex = Convert.ToString(Request.QueryString["index"]); }
        catch { }
        binditenaryindexchange();
    }
    void binditenaryindexchange()
    {
        if (ddlItenarary.SelectedIndex > 0)
        {
            TxtPkgTitle.Enabled = false;
            DataSet dsEditView = specialpackagedal.View_ByItineraryId(ddlItenarary.SelectedValue.ToString());
            bindItenaryTables(dsEditView);
        }
    }
    protected void BindEditPackageItinerary()
    {
        dsSpecialPackages.Clear();
        lblPackagePhoto.Visible = true;
       // editindex = Convert.ToString(Request.QueryString["index"]);
        DataSet dsEditView = specialpackagedal.View_ItineraryDetails(editindex);
        bindItenaryTables(dsEditView);
    }
    private void bindItenaryTables(DataSet dsEditViewPackage)
    {
        if (dsEditViewPackage.Tables[0].Rows.Count > 0)
        {

            #region commentedcode
            //txtPkgName.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Name"]);
            //txtPkgCost.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["cost"]);
            //txtPkgDescription.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description1"]);
            //txtPkgDescription1.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description2"]);
            //lblPackagePhoto.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Photoname"]);
            #endregion

            TxtPkgTitle.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Title"]);
            txtSubtilte.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_SubTitle"]);
            txtDesc1.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description1"]);
            txtDesc2.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description2"]);
            txtInclusion.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description3"]);
            txtPkgCost.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["ItineraryCost"]);

            try 
            {                
                ddlHolidayType.SelectedValue = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Itenerary_Type"]);
                ddlItenarary.SelectedIndex = -1; //for avoiding multi selecct value
                ddlItenarary.Items.FindByText(Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Title"])).Selected = true;
            }
            catch { }
        }

        //ddlPackageCate.SelectedItem.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Type"]);
        //ddlregion.SelectedValue = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Region_Id"]);   
    }
    protected void BindEditPackage()
    {
        dsSpecialPackages.Clear();
        lblPackagePhoto.Visible=true;
       //editindex = Convert.ToString(Request.QueryString["index"]);
       DataSet dsEditViewPackage = specialpackagedal.EditndView_PackageDetails(editindex);
       if (dsEditViewPackage.Tables[0].Rows.Count > 0)
       {
           txtPkgName.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Name"]);
           //txtPkgCost.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["cost"]);
           txtPkgDescription.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description1"]);
           txtPkgDescription1.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description2"]);
           lblPackagePhoto.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Photoname"]);
           ddlCountry.SelectedIndex = -1; //  this extra line for we have got error for multiple selected names files while page load
           try
           {
               ddlCountry.Items.FindByText(Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["country"])).Selected = true;
           }
           catch { }

           #region commentcode
           //TxtPkgTitle.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Title"]);
           //txtSubtilte.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_SubTitle"]);
           //txtDesc1.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description1"]);
           //txtDesc2.Text = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Description2"]);
           #endregion

           if (ddlPackageCate.Items.FindByText(Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Type"])) != null)
           {
               ddlPackageCate.SelectedIndex = -1; 
               ddlPackageCate.Items.FindByText(Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Package_Type"])).Selected = true;
           }           
           if (Convert.ToInt32(ddlPackageCate.SelectedValue) == 0 || Convert.ToInt32(ddlPackageCate.SelectedValue) == 4 || Convert.ToInt32(ddlPackageCate.SelectedValue) == 5)
           {
               tdRegion.Visible = false;
           }
           else
           {
               ddlregion.Items.Clear();
               tdRegion.Visible = true;
               int Groupid = Convert.ToInt32(ddlPackageCate.SelectedValue);
               dsPackageRegions = specialpackagedal.BindPackageRegions(Groupid);
               ddlregion.DataSource = dsPackageRegions;
               ddlregion.DataTextField = "Region_Name";
               ddlregion.DataValueField = "Region_Id";
               ddlregion.DataBind();
               ddlregion.Items.Insert(0, new ListItem("Select", "0"));

               #region commentedcode
               //edit_Regionid = Convert.ToInt32(dsEditViewPackage.Tables[0].Rows[0]["Region_Id"]);
               //SqlDataAdapter sda = new SqlDataAdapter("select Region_Id,Region_Name from Package_regions where Region_Id=" + edit_Regionid, conn);
               //DataSet sdads = new DataSet();
               //sda.Fill(sdads);
               #endregion

               ddlregion.SelectedValue = Convert.ToString(dsEditViewPackage.Tables[0].Rows[0]["Region_Id"]);
           }
       }
    }
    protected void BindPackageGroups()
    {
        dsSpecialPackages = specialpackagedal.BindPackageGroups();
        ddlPackageCate.Items.Clear();
        ddlPackageCate.DataSource = dsSpecialPackages;
        ddlPackageCate.DataTextField = "PackageGroups";
        ddlPackageCate.DataValueField = "Group_Id";
        ddlPackageCate.DataBind();
        ddlPackageCate.Items.Insert(0, new ListItem("Select", "0"));
    }
    protected void bindHolidayTypes()
    {
        string xmlpath = Server.MapPath("xmlfiles/HolidayTypes.xml");
        DataSet dsxml = new DataSet();
        dsxml.ReadXml(xmlpath);
        ddlHolidayType.Items.Clear();
        ddlHolidayType.DataSource = dsxml;
        ddlHolidayType.DataTextField = "holiday";
        ddlHolidayType.DataValueField = "holiday";
        ddlHolidayType.DataBind();       
    }
    protected void BtnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        BtnSubmit.Visible = true;
        imgEditSave.Visible = false;
         //var Itineraryid = Guid.NewGuid();
         var Itineraryid = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
        //var PackageItineraryid = Guid.NewGuid();     
         
        objpackageenti.PackageItenarary_Id = Convert.ToString(Itineraryid);
        objpackageenti.Package_Type = ddlHolidayType.SelectedItem.Text;
        objpackageenti.Package_Title = TxtPkgTitle.Text;
        objpackageenti.Package_SubTitle = txtSubtilte.Text;
        objpackageenti.Description1 = txtDesc1.Text;
        objpackageenti.Description2 = txtDesc2.Text;
        objpackageenti.Description3 = txtInclusion.Text;
        if (txtPkgCost.Text != "")
            objpackageenti.ItineraryCost = Convert.ToDouble(txtPkgCost.Text); //package cost
        else
            objpackageenti.ItineraryCost = 0;
        string pdate = inpHide.Value;
        objpackageenti.Postdate = System.DateTime.Now;
        objpackageenti.Package_Id = Convert.ToString(Session["TravelPackageid"]);
        //objpackageenti.Package_Id = objpackageenti.Packmainid;
        string ItineraryResult = objPackageBal.InsertPackageItineraryDetails(objpackageenti);

        Photoname = UploadPhoto.FileName.ToString();
        using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(UploadPhoto.PostedFile.InputStream))
        {
            if (myImage.Height <= 400 && myImage.Width <= 600)
            {
                Photopath = Base_dir + "industravels/Photos/" + Photoname;
                UploadPhoto.SaveAs(Photopath);
                objPhotoenti.Itinerary_id = Convert.ToString(Itineraryid);
                objPhotoenti.Itinerary_Photoname = Photoname;
                objPhotoenti.Itinerary_PhotoPath = Photopath;
                string uploadPhotos = objPackageBal.Insert_ItineraryPhotos(objPhotoenti);
            }
            else
            {
                strScript = "alert('Please upload photo with dimensions in between 600(w) * 400 (h)')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
            }
        }

        #region removedcode
        //HttpFileCollection hfc = Request.Files;
        //for (int i = 0; i < hfc.Count; i++)
        //{
        //    HttpPostedFile hpf = hfc[i];
        //    if (hpf.ContentLength > 0)
        //    {
        //        Photopath = Base_dir + "Photos/" + hpf.FileName;               
        //        hpf.SaveAs(Photopath);
        //        Response.Write(hpf.FileName);
        //        objPhotoenti.Itinerary_id = Convert.ToString(Itineraryid);
        //        objPhotoenti.Itinerary_Photoname = hpf.FileName;
        //        objPhotoenti.Itinerary_PhotoPath = Photopath;
        //        string uploadPhotos = objPackageBal.Insert_ItineraryPhotos(objPhotoenti);
        //    }
        //}  
        #endregion

        if (ItineraryResult != "")
        {
            //strScript = "alert('Special Packages are posted successfully');location.replace('Admin_SpecialPackageDetails.aspx');";            
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>if(confirm('Special Packages are posted successfully !!! Do You Want Continue ... ')){  } else{window.location('Admin_SpecialPackageDetails.aspx');}</script>");
            cleartext();
        }
    }
    protected void cleartext()
    {
        TxtPkgTitle.Text = "";
        txtSubtilte.Text = "";
        txtDesc1.Text = "";
        txtDesc2.Text = "";
        txtInclusion.Text = "";
        txtPkgCost.Text = "";
    }
    protected void BtnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Admin_SpecialPackageDetails.aspx");
    }
    protected void ddlPackageCate_SelectedIndexChanged(object sender, EventArgs e)
    {
        int Groupid = Convert.ToInt32(ddlPackageCate.SelectedValue);
        dsPackageRegions = specialpackagedal.BindPackageRegions(Groupid);
        if (Groupid == 0 || Groupid == 4 || Groupid == 5)
        {
            tdRegion.Visible = false;          
        }
        else
        {
            tdRegion.Visible = true;
            ddlregion.Items.Clear();
            ddlregion.DataSource = dsPackageRegions;
            ddlregion.DataTextField = "Region_Name";
            ddlregion.DataValueField = "Region_Id";
            ddlregion.DataBind();
            ddlregion.Items.Insert(0, new ListItem("Select", "0"));
        }       
    }
    protected void BtnPackageDetails_Click(object sender, ImageClickEventArgs e)
    {
        if (ddlPackageCate.SelectedItem.Text == "Select")
        {
            strScript = "alert('Please select package type')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
        }
        else
        {
            trtitles.Visible = false;
            BtnPackageDetails.Visible = true;
            imgEditContinue.Visible = false;
            var TravelPackageid = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
            //objpackageenti.Packmainid = TravelPackageid;
            Session["TravelPackageid"] = TravelPackageid;
            objtravelentities.Package_Id = Convert.ToString(TravelPackageid);
            objtravelentities.Package_Name = txtPkgName.Text; //package name
            objtravelentities.Package_Type = ddlPackageCate.SelectedItem.Text; //domestic/international
            objtravelentities.Region_Id = Convert.ToInt32(ddlregion.SelectedValue); //east/west/north/south
            //if (txtPkgCost.Text != "")
              // objtravelentities.Cost = Convert.ToInt32(txtPkgCost.Text); //package cost
            //else
                objtravelentities.Cost = 0;
            objtravelentities.Desc1 = txtPkgDescription.Text; //basic information
            objtravelentities.Desc2 = txtPkgDescription1.Text; //genaral information
            objtravelentities.pdate = DateTime.Now;
            objtravelentities.country = ddlCountry.SelectedItem.Text; // country

            if (PackagePhoto.HasFile)
            {
                Photoname = PackagePhoto.FileName.ToString();
                using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(PackagePhoto.PostedFile.InputStream))
                {
                    if (myImage.Height <= 400 && myImage.Width <= 600)
                    {
                        Photopath = Base_dir + "industravels/Photos/" + Photoname;
                        PackagePhoto.SaveAs(Photopath);
                        objtravelentities.Photoname = Photoname;
                        objtravelentities.Photopath = Photopath;
                        string travelpackage = objPackageBal.InsertPackage_TravelDetails(objtravelentities);
                        PnlPackageDetails.Visible = false;
                        pnlItineraryDetails.Visible = true;
                    }
                    else
                    {
                        strScript = "alert('Please upload photo less than 600(w) * 400(h) dimensions')";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
                    }
                }
            }
            else
            {
                Photoname = "";
                Photopath = "";

                objtravelentities.Photoname = Photoname;
                objtravelentities.Photopath = Photopath;
                string travelpackage = objPackageBal.InsertPackage_TravelDetails(objtravelentities);
                visiblepanels();
            }
        }
    }

    void visiblepanels()
    {
        PnlPackageDetails.Visible = false;
        pnlItineraryDetails.Visible = true;
    }
    protected void BtnSave_Click(object sender, ImageClickEventArgs e)
    {
        BtnSubmit.Visible = false;
        imgEditSave.Visible = true;
       // editindex = Convert.ToString(Request.QueryString["index"]);
        if (ddlItenarary.SelectedIndex == 0)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select PackageItenarary_Id from Package_Itinerary where Package_Id='" + editindex + "'", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds); 
            if (ds.Tables[0].Rows.Count > 0)
            {
                photoitineraryid = Convert.ToString(ds.Tables[0].Rows[0]["PackageItenarary_Id"]);
            }
        }
        else
        {
            editindex = editindex + "";
            photoitineraryid = ddlItenarary.SelectedValue;
        }

        objpackageenti.Package_Id = photoitineraryid;
        objpackageenti.Package_Type = ddlHolidayType.SelectedItem.Text;
        objpackageenti.Package_Title = TxtPkgTitle.Text;
        objpackageenti.Package_SubTitle = txtSubtilte.Text;
        objpackageenti.Description1 = txtDesc1.Text;
        objpackageenti.Description2 = txtDesc2.Text;
        objpackageenti.Description3 = txtInclusion.Text;
        if (txtPkgCost.Text != "")
            objpackageenti.ItineraryCost = Convert.ToDouble(txtPkgCost.Text); //package cost
        else
            objpackageenti.ItineraryCost = 0;
        objpackageenti.Postdate = System.DateTime.Now;
        string ItineraryResult = objPackageBal.PackageItineraryDetails_Update(objpackageenti);

        if (UploadPhoto.HasFile)
        {
            Photoname = UploadPhoto.FileName.ToString();
            using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(UploadPhoto.PostedFile.InputStream))
            {
                if (myImage.Height <= 400 && myImage.Width <= 600)
                {
                    Photopath = Base_dir + "industravels/Photos/" + Photoname;
                    UploadPhoto.SaveAs(Photopath);
                    objPhotoenti.Itinerary_id = Convert.ToString(photoitineraryid);
                    objPhotoenti.Itinerary_Photoname = Photoname;
                    objPhotoenti.Itinerary_PhotoPath = Photopath;
                    string uploadPhotos = objPackageBal.Update_ItineraryPhotos(objPhotoenti);
                    if (uploadPhotos == "0")
                    {
                       // Photopath = Base_dir + "Photos/" + Photoname;
                       // UploadPhoto.SaveAs(Photopath);
                        //objPhotoenti.Itinerary_id = Convert.ToString(photoitineraryid);
                        //objPhotoenti.Itinerary_Photoname = Photoname;
                        //objPhotoenti.Itinerary_PhotoPath = Photopath;
                        string uploadNewPhotos = objPackageBal.Insert_ItineraryPhotos(objPhotoenti);
                    }
                }
                else
                {
                    strScript = "alert('Please upload photo less than 600(w) * 400(h) dimensions')";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
                }
            }
        }

        #region removedcode
        //HttpFileCollection hfc = Request.Files;
        //if (hfc.Count > 0)
        //{
        //    for (int i = 0; i < hfc.Count; i++)
        //    {
        //        HttpPostedFile hpf = hfc[i];
        //        if (hpf.ContentLength > 0)
        //        {
        //            Photopath = Base_dir + "Photos/" + hpf.FileName;
        //            hpf.SaveAs(Photopath);
        //            Response.Write(hpf.FileName);
        //            objPhotoenti.Itinerary_id = Convert.ToString(photoitineraryid);
        //            objPhotoenti.Itinerary_Photoname = hpf.FileName;
        //            objPhotoenti.Itinerary_PhotoPath = Photopath;
        //            string uploadPhotos = objPackageBal.Update_ItineraryPhotos(objPhotoenti);
        //        }
        //    }
        //}
        #endregion

        if (ItineraryResult != "")
        {
            strScript = "alert('Special Packages are updated successfully');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);

        }
    }
    protected void UpdateContinue_Click(object sender, ImageClickEventArgs e)
    {
        //editindex = Convert.ToString(Request.QueryString["index"]);
        showitenarypanel();
        objtravelentities.Package_Id = editindex;
        Session["TravelPackageid"] = editindex;
        objtravelentities.Region_Id = Convert.ToInt32(ddlregion.SelectedValue);
        objtravelentities.Package_Name = txtPkgName.Text;
        objtravelentities.Package_Type = ddlPackageCate.SelectedItem.Text;

        //if (txtPkgCost.Text != "")
        //    objtravelentities.Cost = Convert.ToDouble(txtPkgCost.Text);
        //else
            objtravelentities.Cost = 0;

        objtravelentities.Desc1 = txtPkgDescription.Text;
        objtravelentities.Desc2 = txtPkgDescription1.Text;
        objtravelentities.pdate = System.DateTime.Now;
        objtravelentities.country = ddlCountry.SelectedItem.Text;

        if (PackagePhoto.HasFile)
        {
            Photoname = PackagePhoto.FileName.ToString();
            using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(PackagePhoto.PostedFile.InputStream))
            {
                if (myImage.Height <= 400 && myImage.Width <= 600)
                {
                    Photopath = Base_dir + "industravels/Photos/" + Photoname;
                    PackagePhoto.SaveAs(Photopath);
                    objtravelentities.Photoname = Photoname;
                    objtravelentities.Photopath = Photopath;
                    string travelpackage = objPackageBal.PackageDetails_Update(objtravelentities);
                    PnlPackageDetails.Visible = false;
                    pnlItineraryDetails.Visible = true;
                }
                else
                {
                    strScript = "alert('Please upload photo less than 600(w) * 400(h) dimensions')";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", strScript, true);
                }
            }
        }
        else
        {
            objtravelentities.Photoname = Photoname;
            objtravelentities.Photopath = Photopath;
            string travelpackage = objPackageBal.PackageDetails_Update(objtravelentities);
            PnlPackageDetails.Visible = false;
            pnlItineraryDetails.Visible = true;
        }
        
    }
    void showitenarypanel()
    {
        radiobtnstr.Visible = true;
        pnlItineraryDetails.Visible = true;
        BindEditPackageItinerary();
        BtnPackageDetails.Visible = false;
        imgEditContinue.Visible = true;
    }
}