using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
public partial class SearchToursDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string name = Convert.ToString(Request.QueryString["name"]);//location
                string location = Convert.ToString(Request.QueryString["location"]);
                HtmlWeb web = new HtmlWeb();
                HtmlDocument doc = web.Load("http://www.makemytrip.com/holidays-" + location + "/" + name + ".html");
               // HtmlNode rateNode = doc.DocumentNode.SelectSingleNode("//div[@id='block-hp_common-package_listing']");
                // rateNode.RemoveChild(rateNode.SelectSingleNode("//div[@class='clearFix append_bottom']"));
                HtmlNode rateNode = doc.DocumentNode.SelectSingleNode("//div[@class='left_part flL  append_bottom']");
                //HtmlNode ratNode = rateNode;
                rateNode.RemoveChild(rateNode.SelectSingleNode("//div[@id='rateDate_section']"));
                //rateNode.RemoveChild(rateNode.SelectSingleNode("//div[@id='downloads_section']"));
                rateNode.RemoveChild(rateNode.SelectSingleNode("//div[@id='additionalInfo_section']"));
                rateNode.RemoveChild(rateNode.SelectSingleNode("//div[@class='listing_contents topTabNav tabNav_fix append_bottom']"));
                string rate = rateNode.InnerHtml;
                HtmlAgilityPack.HtmlDocument docs = new HtmlAgilityPack.HtmlDocument();
                doc.LoadHtml(rate);
                doc.LoadHtml(rate.Replace("Find out more here", " ").Replace("More", " "));
                foreach (var a in doc.DocumentNode.Descendants("a"))
                {
                    try
                    {
                        if (a.Attributes["onclick"].Value != "")
                        {                            
                            a.Attributes["onclick"].Value = "javascript:getting();";
                        }
                        try
                        {
                            if (a.Attributes["href"].Value.Contains("www.makemytrip.com"))
                                a.Attributes["href"].Value = "javascript:void(0);";
                        }
                        catch { }
                    }
                    catch { }
                }

                //foreach (var img in doc.DocumentNode.Descendants("img"))
                //{
                //    if (img.Attributes["data-src"].Value != "")
                //    {
                //        img.Attributes["width"].Value = "262";
                //        //img.Attributes.Add("width", "250");
                //        img.Attributes["src"].Value = img.Attributes["data-src"].Value;
                //    }
                //}

                var newContent = doc.DocumentNode.OuterHtml;
                htmltd.InnerHtml = newContent;
            }
            catch { }
        }
    }
    
}