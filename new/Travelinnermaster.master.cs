using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Travelinnermaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Path.GetFileName(HttpContext.Current.Request.Url.AbsoluteUri);
        switch (s)
        {
            case "Company.aspx": li1.Attributes.Add("class", "current");
                break;
            case "Careers.aspx": li2.Attributes.Add("class", "current");
                break;
            case "Product.aspx": li3.Attributes.Add("class", "current");
                break;
            case "Curises.aspx": li4.Attributes.Add("class", "current");
                break;
            case "Maps.aspx": li5.Attributes.Add("class", "current");
                break;
            case "Special.aspx": li6.Attributes.Add("class", "current");
                break;
            case "Airfare.aspx": li7.Attributes.Add("class", "current");
                break;
            case "Forms.aspx": li8.Attributes.Add("class", "current");
                break;
            case "Travel.aspx": li9.Attributes.Add("class", "current");
                break;
            case "Visittoaustralia.aspx": li10.Attributes.Add("class", "current");
                break;
            case "Contact.aspx": li11.Attributes.Add("class", "current");
                break;
            //case "": "";
            //    break;
            //case "": "";
            //    break;

        }
    }
}
