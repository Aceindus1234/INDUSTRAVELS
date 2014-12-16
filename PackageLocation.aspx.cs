using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using TravelEntities;
using TravelBAL;
public partial class industravels_PackageLocation : System.Web.UI.Page
{
    TravelPackages tp = new TravelPackages();
    wwUtils tb = new wwUtils();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                 lblPlace.Text = Request.QueryString["loc"].ToString();
                 SqlParameter[] sparam = new SqlParameter[1];
                 //tp.Package_Name = lblPlace.Text;    
                 sparam[0] = new SqlParameter("@Packagename", lblPlace.Text);
                 DataSet ds = tb.ExecuteSelectDataSet("sp_binding", sparam);                  
                if (ds.Tables[0].Rows.Count > 0)
                {
                    dtlist.DataSource = ds.Tables[0];
                    dtlist.DataBind();
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        DataList1.DataSource = ds.Tables[1];
                        DataList1.DataBind();
                    }
                    //if (ds.Tables[2].Rows.Count > 0)
                    //{
                    //    DataList2.DataSource = ds.Tables[2];
                    //    DataList2.DataBind();
                    //}
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Sorry, No Packages are found for this location');window.history.go(-1);</script>");
                }
            }
            catch { }

            #region commentCode
            //    try
        //    {
        //        string urname = Request.QueryString["loc"].ToString();
        //        string type = Request.QueryString["type"].ToString();
        //        lblPlace.Text = urname;
        //        HtmlWeb web = new HtmlWeb();
        //        HtmlDocument doc;
        //        if (type == "inter")
        //            doc = web.Load("http://riya.travel/International_travelguide?" + urname);
        //        else
        //            doc = web.Load("http://riya.travel/Domestic_travelguide?" + urname);
        //        HtmlNode rateNode = doc.DocumentNode.SelectSingleNode("//div[@class='tab_container-travelguide']");
        //        string rate = rateNode.InnerHtml;
        //        HtmlAgilityPack.HtmlDocument docs = new HtmlAgilityPack.HtmlDocument();
        //        doc.LoadHtml(rate); 
        //        foreach (var imag in doc.DocumentNode.Descendants("img"))
        //        {
        //            imag.Attributes["src"].Value = imag.Attributes["src"].Value.Replace("CMS/", "http://riya.travel/CMS/");
        //            // imag.Attributes.Add("src", "http://riya.travel/CMS/MyFiles/Canada_1.png");
        //        }
        //        var newContent = doc.DocumentNode.OuterHtml;
        //        contentId.InnerHtml = newContent;
        //    }
        //    catch
        //    {
        //        ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Process Not Done');window.history.go(-1);</script>");
            //    }

            #endregion
        }
    }
}