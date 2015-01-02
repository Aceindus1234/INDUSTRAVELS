using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;
using System.Xml;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (!IsPostBack)
        {      
            for (int i = 0; i < 12; i++)
            {
                DateTime dt = DateTime.Now.Date;
               dt = dt.AddMonths(i+1);
               string s = dt.ToString("MMMMM") + " " + dt.ToString("yyyy");
               if (dt.ToString("MMMMM") == "December")
               {
                   ddlMtravel.Items.Insert(i, s);
                   break;
               }
               ddlMtravel.Items.Insert(i, s);                
            }
            ddlMtravel.Items.Insert(0, "Any Time");
        }
    }
    // no need to write webmethods because this functionality developed using jquery
    #region webmethods
    //[WebMethod]
    //[ScriptMethod]
    //public static List<string> DomesticFlight(string prefixText)
    //{      
    //    List<string> list = new List<string>();
    //    list = searchall(prefixText, "domestic");
    //    return list;
    //}    

    //[WebMethod]
    //[ScriptMethod]
    //public static List<string> InterFlight(string prefixText)
    //{
    //    List<string> list = new List<string>();
    //    list = searchall(prefixText, "international");
    //    return list;       
    //}

    ////DomesticHotel
    //[WebMethod]
    //[ScriptMethod]
    //public static List<string> DomesticHotel(string prefixText)
    //{
    //    List<string> list = new List<string>();
    //    list = searchall(prefixText, "dhotel");
    //    return list;         
    //}
    ////InterHotel
    //[WebMethod]
    //[ScriptMethod]
    //public static List<string> InterHotel(string prefixText)
    //{
    //    List<string> list = new List<string>();
    //    list = searchall(prefixText, "ihotel");
    //    return list;       
    //}
    ////SearchHoliday
    //[WebMethod]
    //[ScriptMethod]
    //public static List<string> SearchHoliday(string prefixText)
    //{
    //    List<string> list = new List<string>();
    //    list = searchall(prefixText, "dholiday");
    //    return list;
    //}
    ////SearchBus
    //[WebMethod]
    //[ScriptMethod]
    //public static List<string> SearchBus(string prefixText)
    //{
    //    List<string> list = new List<string>();
    //    list = searchall(prefixText, "buses");
    //    return list;       
    //}
    ////SearchTrain
    //[WebMethod]
    //[ScriptMethod]
    //public static List<string> SearchTrain(string prefixText)
    //{
    //    List<string> list = new List<string>();
    //    list = searchall(prefixText, "trains");
    //    return list;        
    //}
    //public static List<string> searchall(string prefixText, string fname)
    //{
    //    XmlDocument doc = new XmlDocument();
    //    string path = HttpContext.Current.Server.MapPath("xmlsheets/" + fname + ".xml");        
    //    doc.Load(path);
    //    XmlNodeList domesticflight = doc.GetElementsByTagName("section");
    //    List<string> list = new List<string>();
    //    foreach (XmlNode dflight in domesticflight)
    //    {
    //        string flight = dflight.Attributes[fname].Value;
    //        if (flight.ToLower().Contains(prefixText.ToLower()))
    //            list.Add(flight);
    //    }
    //    return list;
    //}
    #endregion

    protected void btnHSearch_Click(object sender, EventArgs e)
    {
        string hotelName = "";
        if ((txtHdoSer.Text != "") || (txtInterhSer.Text != ""))
        {
            if (txtHdoSer.Text != "")
                hotelName = txtHdoSer.Text;
            else
                hotelName = txtInterhSer.Text;
            //http://www.hotelclub.com/shop/home?type=hotel&hotel.type=keyword&hotel.keyword.key=Hyderabad%2C+India&hotel.chkin=02%2F09%2F14&hotel.chkout=03%2F09%2F14&hotel.rooms[0].adlts=2&hotel.rooms[0].chlds=0&search=Search
            Response.Redirect("SearchHotels.aspx?hotel.keyword.key=" + hotelName + "&hotel.chkin=" + Convert.ToDateTime(txtHcin.Text).ToString("dd/MM/yy") +
                "&hotel.chkout=" + Convert.ToDateTime(txtHcout.Text).ToString("dd/MM/yy") + "&hotel.rooms[0].adlts=" + ddlHAdults.SelectedItem.Text + "&hotel.rooms[0].chlds=" + ddlHChild.SelectedItem.Text);
        
        } 
    }
    protected void btnHoliday_Click(object sender, EventArgs e)
    {
        Response.Redirect("HolidaySpot.aspx?DestTheme=" + txtHoliday.Text);
    }
}
