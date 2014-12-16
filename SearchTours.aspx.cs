using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
public partial class SearchTours : System.Web.UI.Page
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
                HtmlNode rateNode = doc.DocumentNode.SelectSingleNode("//div[@id='block-hp_common-package_listing']");
                //rateNode.RemoveChild(rateNode.SelectSingleNode("//div[@class='modify_tabs_data']"));
                string rate = rateNode.InnerHtml;
                HtmlAgilityPack.HtmlDocument docs = new HtmlAgilityPack.HtmlDocument();
                doc.LoadHtml(rate.Replace("Chat Now", " ").Replace("button case_1 fontclear colorbox-load", " "));
                foreach (var a in doc.DocumentNode.Descendants("a"))
                {
                    a.Attributes["href"].Value ="SearchToursDetails.aspx?location="+ a.Attributes["href"].Value.Replace("http://www.makemytrip.com/holidays-", "").Replace("/","&name=").Replace(".html","");
                }
                foreach (var img in doc.DocumentNode.Descendants("img"))
                {
                    if (img.Attributes["data-src"].Value != "")
                    {
                        img.Attributes["width"].Value = "262";
                        img.Attributes["src"].Value = img.Attributes["data-src"].Value;
                    }
                }
                var newContent = doc.DocumentNode.OuterHtml;
                htmltd.InnerHtml = newContent;
            }
            catch { htmltd.InnerHtml = "<span style='font-size:12pt; color:Red'>No Data Found.</span>"; }
        }
    }
}