using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
public partial class HotelDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string hotel = Request.QueryString["hotel.keyword.key"].ToString();
                string dtin = Request.QueryString["hotel.chkin"].ToString();
                string dtout = Request.QueryString["hotel.chkout"].ToString();
                string adults = Request.QueryString["hotel.rooms[0].adlts"].ToString();
                string childs = Request.QueryString["hotel.rooms[0].chlds"].ToString();
                //string LocationId = Request.QueryString["hotel.locId"].ToString();
                string hid = Request.QueryString["hotel.hid"].ToString();
                string hkey = Request.QueryString["hotel.hkey"].ToString();
                HtmlWeb web = new HtmlWeb();
                HtmlDocument doc = web.Load("http://www.hotelclub.com/shop/home?type=hotel&hotel.type=keyword&hotel.coord=&hotel.keyword.key=" + hotel
                    + "&hotel.chkin=" + dtin + "&hotel.chkout=" + dtout + "&hotel.rooms[0].adlts=" + adults + "&hotel.rooms[0].chlds=" + childs
                    + "&hotel.rooms[0].chldAge[0]=&hotel.rooms[0].chldAge[1]=&hotel.rooms[0].chldAge[2]=&hotel.rooms[0].chldAge[3]=&hotel.rooms[0].chldAge[4]=&hotel.rating=&hotel.hname=&hotel.couponCode=&search=Search&hsv.showDetails=true&hotel.hid="
                    + hid + "&hotel.hkey=" + hkey);
                HtmlNode rateNode = doc.DocumentNode.SelectSingleNode("//div[@id='main']");
                string rate = rateNode.InnerHtml;
                HtmlAgilityPack.HtmlDocument docs = new HtmlAgilityPack.HtmlDocument();
                doc.LoadHtml(rate.Replace("See full review ", ""));
                foreach (var a in doc.DocumentNode.Descendants("a"))
                {
                    try
                    {
                        if (a.Attributes["href"].Value.Contains("www.hotelclub.com"))
                            a.Attributes["href"].Value = "javascript:getting();";
                    }
                    catch { }
                }
                var newContent = doc.DocumentNode.OuterHtml;
                htmltd.InnerHtml = newContent;
            }
            catch
            {
                ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Information not available. Please try again. !!!'); window.history.go(-1);</script>");
            }
        }
    }
}