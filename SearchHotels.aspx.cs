using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.IO;
public partial class SearchHotels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string pagename = "";
                try
                { pagename = Path.GetFileName(Request.UrlReferrer.AbsolutePath.ToString()); }
                catch { pagename = "SearchHotels.aspx"; }
                string hotel = Request.QueryString["hotel.keyword.key"].ToString();
                string dtin = Request.QueryString["hotel.chkin"].ToString();
                string dtout = Request.QueryString["hotel.chkout"].ToString();
                string adults = Request.QueryString["hotel.rooms[0].adlts"].ToString();
                string childs = Request.QueryString["hotel.rooms[0].chlds"].ToString();
                string pageNumber = "1";
                string LocationId = "";
                HtmlDocument doc;
                HtmlWeb web = new HtmlWeb();
                if (pagename != "SearchHotels.aspx")
                {
                    string[] hotel1;
                    if (hotel.Contains('['))
                    {
                        hotel1 = hotel.Split('[');
                        hotel = hotel1[1].Replace("]", "").Trim();
                    }
                    else
                    {
                        hotel1 = hotel.Split('-');
                        hotel = hotel1[1].Trim() + "-" + hotel1[2].Trim();
                    }
                    //lbl1.Text = hotel;
                    doc = web.Load("http://www.hotelclub.com/shop/home?type=hotel&hotel.type=keyword&hotel.keyword.key=" + hotel + "&hotel.chkin=" + dtin + "&hotel.chkout=" + dtout+ "&hotel.rooms[0].adlts=" + adults + "&hotel.rooms[0].chlds=" + childs + "&search=Search");
                }
                else
                {
                   // lbl1.Text = hotel;
                    try
                    {
                        pageNumber = Request.QueryString["hsv.page"].ToString();
                        LocationId = Convert.ToString(Request.QueryString["hotel.locId"]);
                    }
                    catch
                    {
                        pageNumber = "1";
                        LocationId = "";
                    }
                    doc = web.Load("http://www.hotelclub.com/shop/home?type=hotel&hotel.type=keyword&hotel.coord=&hotel.keyword.key=" + hotel + "&hotel.locId=" + LocationId + "&hotel.chkin=" + dtin +
                        "&hotel.chkout=" + dtout + "&hotel.rooms[0].adlts=" + adults + "&hotel.rooms[0].chlds=" + childs +
                        "&hotel.rooms[0].chldAge[0]=&hotel.rooms[0].chldAge[1]=&hotel.rooms[0].chldAge[2]=&hotel.rooms[0].chldAge[3]=&hotel.rooms[0].chldAge[4]=&hotel.rating=&hotel.hname=&hotel.couponCode=&search=Search&hsv.page=" + pageNumber);
                }                
                HtmlNode rateNode = doc.DocumentNode.SelectSingleNode("//div[@class='resultSetBody']");
                HtmlNode rateNode1;
                string rate = "";
                try
                {
                    rateNode1 = doc.DocumentNode.SelectSingleNode("//div[@class='linksArea']");
                    rate += rateNode1.InnerHtml;
                }
                catch { }
                rate += rateNode.InnerHtml;
                HtmlAgilityPack.HtmlDocument docs = new HtmlAgilityPack.HtmlDocument();
                doc.LoadHtml(rate.Replace("No rooms available", "No rooms available on selected dates"));
                foreach (var a in doc.DocumentNode.Descendants("a"))
                {
                    try
                    {
                        if (a.InnerText.Contains("Next"))
                            a.Attributes["href"].Value = a.Attributes["href"].Value.Replace("http://www.hotelclub.com/shop/home", "SearchHotels.aspx");
                        if (a.InnerText.Contains("Previous"))
                            a.Attributes["href"].Value = a.Attributes["href"].Value.Replace("http://www.hotelclub.com/shop/home", "SearchHotels.aspx");
                        if (a.InnerText.Contains("Change dates"))
                            a.Attributes["href"].Value = "javascript:void(0);";
                        if (a.InnerText.Contains("Book"))
                            a.Attributes["href"].Value = "javascript:getting();";
                        else
                            a.Attributes["href"].Value = a.Attributes["href"].Value.Replace("http://www.hotelclub.com/shop/home", "HotelDetails.aspx");
                    }
                    catch { }
                }
                var newContent = doc.DocumentNode.OuterHtml;
                htmltd.InnerHtml = newContent;
            }
            catch
            {
                ClientScript.RegisterClientScriptBlock(typeof(Page), "Message", "<script>alert('Hotel Information Not Available.!!! Please check number of dates with in 20 days');window.location('Default.aspx');</script>");
            }
        }
    }
}