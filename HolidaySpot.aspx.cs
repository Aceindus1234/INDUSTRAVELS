using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using HtmlAgilityPack;
using System.Data;
using System.Data.SqlClient;
using TravelBAL;
using TravelDAL;
using TravelEntities;

public partial class HolidaySpot : System.Web.UI.Page
{
    wwUtils packages = new wwUtils();
    PackageDAL packgroup = new PackageDAL();
    CustomerBal customerbal = new CustomerBal();
    Customer customerEntities = new Customer();
    DataSet dspack, ds;
    SqlParameter[] param;
    PagedDataSource pds = new PagedDataSource();
    public static string pageitem;
    private static string _sText1;
    private static string _sText2;
    public string packtype = "";
    public string regions = "";
    public static string DestinationTheme;
    protected void Page_Load(object sender, EventArgs e)
    {
        #region freeapiservices
        //try
        //{
        //    HtmlWeb web = new HtmlWeb();
        //    HtmlDocument doc = web.Load("http://www.goibibo.com/holidays/holiday-packages-india/honeymoon-packages/");
        //    HtmlNode rateNode = doc.DocumentNode.SelectSingleNode("//div[@id='holiday_wrap']");
        //    string rate = rateNode.InnerHtml;
        //    HtmlAgilityPack.HtmlDocument docs = new HtmlAgilityPack.HtmlDocument();
        //    doc.LoadHtml(rate);
        //    foreach (var a in doc.DocumentNode.Descendants("a"))
        //    {
        //        try
        //        {
        //            if (a.Attributes["href"].Value.Contains("holiday-details"))
        //            {
        //                a.Attributes["href"].Value = a.Attributes["href"].Value.Replace("/holidays/holiday-details/", "HolidayDetails.aspx?loc=").TrimEnd('/').Replace("/", "_");                       
        //            }
        //        }
        //        catch { }
        //    }
        //    foreach (var a in doc.DocumentNode.Descendants("a"))
        //    {
        //        try
        //        {
        //            if (a.Attributes["onclick"].Value.Contains("gi.holidays.search.sendQuerydialog(this);"))
        //                a.Attributes["onclick"].Value = "javascript:getting();";

        //        }
        //        catch { }
        //    }
        //    var newContent = doc.DocumentNode.OuterHtml;
        //    htmltd.InnerHtml = newContent;
        //}
        //catch { }
        #endregion
        if (!IsPostBack)
        {
            bindpackgroups();
            bindThemes();
            try
            {
                packtype = Request.QueryString["type"].ToString();
                regions = Request.QueryString["regions"].ToString();
                ddlTheme.SelectedValue = packtype;
            }
            catch {
                //ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('No packages are found on selected item !!! All packages types are binding.');</script>");
                packtype = "";
                regions = "";
            }
            if (packtype == "")
            {

                try
                {
                    DestinationTheme = Request.QueryString["DestTheme"].ToString();
                }
                catch
                {
                    DestinationTheme = "";
                }              

                if (DestinationTheme == "")
                {
                    try
                    {
                        pageitem = "default";
                        bindgrouppackages();
                    }
                    catch
                    { htmltd.InnerText = "Error Was Detected.... Refresh the list...."; }
                }
                else
                {
                    destinationTheme();
                }
            }
                //check condition for continet types group packages
            else if ((packtype != "FSSIGT") && (packtype != "TMSI"))
            {
                try
                {
                    if (regions != "Domes")
                        typeschange(); //bind datalist using url parameter type string
                    else
                    {                       
                        binddatalistviaLocation(packtype, regions);
                    }
                }
                catch
                { htmltd.InnerText = "Error Was Detected.... Refresh the list...."; }

            }
            else
            {
                if (packtype == "TMSI")
                {
                    pageitem = "TMSI";
                    TMSI();
                }
                if (packtype == "FSSIGT")
                {
                    pageitem = "FSSIGT";
                    FSSIGT();
                }
               
            }
        }
    }
    /// <summary>
    /// south east asia countries packages list
    /// </summary>
    void TMSI()
    {
        binddatalistParam("sp_TMSI");       
    }
    /// <summary>
    /// Europe Tour packages list
    /// </summary>
    void FSSIGT()
    {
        binddatalistParam("sp_FSSIGT");        
    }

    void binddatalistviaLocation(string SearchPack,string loca)
    {
        ddltype.SelectedIndex = -1;
        CurrentPage = 0;
        pageitem = "theme";
        param = new SqlParameter[3];
        param[0] = new SqlParameter("@pack_type", SearchPack);
        param[1] = new SqlParameter("@country", "india"); //later divided by some other countries passed by parameter selected for different country domestic type packages
        param[2] = new SqlParameter("@loctype", loca);
        binddatalist("packageByTypeViaLoca", param); 
    }
    /// <summary>
    /// select packages list by destination or theme search
    /// </summary>
    void destinationTheme()
    {
        if (DestinationTheme != "") // condition already checked but this condition check used while page index changed for the datalist
        {
            pageitem = "destTheme";
            param = new SqlParameter[1];
            param[0] = new SqlParameter("@DestOrTheme", DestinationTheme);
            binddatalist("sp_TripPackage", param); //search by destination or theme for holiday trip from home page
        }
        else
        {
            pageitem = "default";
            bindgrouppackages(); //default list
        }
    }
    /// <summary>
    /// this method used from pageload and when datalist binding empty dataset for bind all package items
    /// </summary>
    void bindgrouppackages()
    {       
        binddatalistParam("packageInfo");
    }
    void binddatalistParam(string procname)
    {
        param = new SqlParameter[0];
        binddatalist(procname, param);
    }
    /// <summary>
    ///   bind details to datalist
    /// </summary>
    /// <param name="ds1"></param>
    void binddatalist(string procedure, SqlParameter[] paramcollection)
    {
        try
        {
            ds = packages.ExecuteSQL(procedure, paramcollection);
            if (ds.Tables[0].Rows.Count > 0)
            {
                pds.DataSource = ds.Tables[0].DefaultView;
                pds.AllowPaging = true;
                pds.PageSize = 4;
                pds.CurrentPageIndex = CurrentPage;
                Next.Enabled = !pds.IsLastPage;
                Prev.Enabled = !pds.IsFirstPage;
                dtHolidayList.DataSource = pds;
                dtHolidayList.DataBind();
            }
            else
            {
                //htmltd.InnerText = "No Records Found";
                pageitem = "default";
                bindgrouppackages();
                ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('No packages are found on selected item !!! Look here for Similar packages.');</script>");
            }
        }
        catch
        { htmltd.InnerText = "Error Was Detected...."; }
    }
    public int CurrentPage
    {
        get
        {
            if (this.ViewState["CurrentPage"] == null)
                return 0;
            else
                return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
        }
        set
        {
            this.ViewState["CurrentPage"] = value;
        }
    }
    /// <summary>
    /// prevous page navigation change for datalist
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Prev_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        checkpagebind();
    }
    /// <summary>
    /// next page navigation change for datalist
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Next_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        checkpagebind();
    }
    /// <summary>
    /// bind datalist when page index change by option selection
    /// </summary>
    void checkpagebind()
    {
        switch (pageitem)
        {
            case "default": bindgrouppackages();
                break;
            case "theme": ddlthemechange();
                break;
            case "cate": ddltypechange();
                break;
            case "TMSI": TMSI();
                break;
            case "FSSIGT": FSSIGT();
                break;
            case "destTheme": destinationTheme();
                break;
        }
    }
    /// <summary>
    /// Refresh the Package List by this event, bind all package types to the datalist
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnrefresh_Click(object sender, EventArgs e)
    {
        pageitem = "default";
        bindgrouppackages();
    }
    /// <summary>
    /// bind categorie type from the database
    /// </summary>
    void bindpackgroups()
    {
        dspack = packgroup.BindPackageGroups();
        ddltype.Items.Clear();
        ddltype.DataSource = dspack;
        ddltype.DataTextField = "PackageGroups";
        ddltype.DataValueField = "Group_Id";
        ddltype.DataBind();
        ddltype.Items.Insert(0, new ListItem("Select", "0"));
    }
    /// <summary>
    /// bind package types from the xml sheet
    /// </summary>
    void bindThemes()
    {
        string xmlpath = Server.MapPath("admin/xmlfiles/HolidayTypes.xml");
        DataSet dsxml = new DataSet();
        dsxml.ReadXml(xmlpath);
        ddlTheme.Items.Clear();
        ddlTheme.DataSource = dsxml;
        ddlTheme.DataTextField = "holiday";
        ddlTheme.DataValueField = "holiday";
        ddlTheme.DataBind();
    }
    /// <summary>
    /// Search by Category from  dropdownlist
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void ddltype_changed(object sender, EventArgs e)
    {
        ddlTheme.SelectedIndex = -1;
        CurrentPage = 0;
        pageitem = "cate";
        ddltypechange();
    }

    void ddltypechange()
    {
        if (ddltype.SelectedIndex > 0)
        {
            param = new SqlParameter[1];
            param[0] = new SqlParameter("@pack_type", ddltype.SelectedItem.Text);
            binddatalist("packageByCate", param); // using stored procedure 'packageByCate'           
        }
    }
    /// <summary>
    /// Search by package type from the dropdownlist
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void ddlTheme_changed(object sender, EventArgs e)
    {
        typeschange();
    }
    /// <summary>
    /// typeschange method used for bind datalist by filterby type change and when query string type parameter occured while navigation from other page
    /// </summary>
    void typeschange()
    {
        ddltype.SelectedIndex = -1;
        CurrentPage = 0;
        pageitem = "theme";
        ddlthemechange();
    }
    void ddlthemechange()
    {
        param = new SqlParameter[1];
        param[0] = new SqlParameter("@pack_type", ddlTheme.SelectedItem.Text);
        binddatalist("packageByType", param);// using stored procedure 'packageByType' 
    }

    #region commentcode
    //protected string ValidateString(object str)
    //{
    //   string strs = Server.HtmlDecode(str.ToString());
    //    if ((str.ToString().Length > 300))
    //    {
    //        return strs.Substring(0, 300) + " ...";
    //    }
    //    else
    //    { 
    //        return strs;
    //    }
    //}
    #endregion

    /// <summary>
    /// assignstring service method for insert textboxs text to static string from jquery popup
    /// </summary>
    /// <param name="prefixText"></param>
    /// <returns></returns>
    [System.Web.Services.WebMethod]
    public static string assignstring(string prefixText)
    {       
        if (SText1 == null)
            SText1 = SText2 + "," + prefixText + ",";
        else
            SText1 += prefixText + ",";
        return prefixText;
    }
    /// <summary>
    /// assinglbl servie method for insert selected package title to static sting from jquery click here functionality
    /// </summary>
    /// static members
    /// <param name="prefixText"></param>
    /// <returns></returns>
    [System.Web.Services.WebMethod]
    public static string assinglbl(string prefixText)
    {      
        SText2 = prefixText;
        return prefixText;
    }    
    /// <summary>
    /// static member variable
    /// </summary>
    public static string SText1
    {
        get { return _sText1; }
        set { _sText1 = value; }
    }
    /// <summary>
    /// static member variable
    /// </summary>
    public static string SText2
    {
        get { return _sText2; }
        set { _sText2 = value; }
    }
    /// <summary>
    /// insert customer basic detials into database and send mail to travel marketing persons and admin 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {           
            string[] s = SText1.TrimEnd(',').Split(',');            
            customerEntities.Customer_Fname = s[1];
            customerEntities.Customer_Mobile = s[2];
            customerEntities.Customer_Emailid = s[3];
            customerEntities.Pack_Name = s[0];
            customerEntities.Postdate = DateTime.Now;
            int i = customerbal.InsertCustomerBasicDetails(customerEntities);           
            if (i == 1)
            {
                customerbal.sendmail(txtName.Text, txtPhone.Text, txtMail.Text, s[0]);
                Label1.Text = "";
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
}