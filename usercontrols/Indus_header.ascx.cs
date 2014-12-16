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
using System.IO;
public partial class usercontrols_Indus_header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // string Path = HttpContext.Current.Request.Url.AbsolutePath;
        //FileInfo Info = new FileInfo(Path);
        //string pageName = Info.Name;

        string s = Path.GetFileName(HttpContext.Current.Request.Url.AbsolutePath.ToString());
        switch (s)
        {
            case "Default.aspx": lin1.Attributes.Add("class", "current");
                break;
            case "Company.aspx": lin2.Attributes.Add("class", "current");
                break;
            case "Careers.aspx": lin3.Attributes.Add("class", "current");
                break;
            case "Product.aspx": lin4.Attributes.Add("class", "current");
                break;
            case "Cruises.aspx": lin5.Attributes.Add("class", "current");
                break;
            case "HolidaySpot.aspx":
            case "PackageLocation.aspx":
            case "HolidayDetails.aspx": lin6.Attributes.Add("class", "current");
                break;
            case "Special.aspx": lin7.Attributes.Add("class", "current");
                break;
            case "TravelFeedback.aspx": lin8.Attributes.Add("class", "current");
                break;           
            case "Travel.aspx": lin10.Attributes.Add("class", "current");
                break;
            case "Visittoaustralia.aspx":
            case "VisitIndia.aspx":
            case "VisitUSA.aspx":
            case "VisitUK.aspx":
            case "VisitUAE.aspx":
            case "VisitSingapore.aspx":
                lin11.Attributes.Add("class", "current");
                break;

            #region commentedon22/9/2014
            //case "Visittoaustralia.aspx": lin11.Attributes.Add("class", "current");
            //    break;
            //case "VisitIndia.aspx": lin11.Attributes.Add("class", "current");
            //    break;
            //case "VisitUSA.aspx": lin11.Attributes.Add("class", "current");
            //    break;
            //case "VisitUK.aspx": lin11.Attributes.Add("class", "current");
            //    break;
            //case "VisitUAE.aspx": lin11.Attributes.Add("class", "current");
            //    break;
            //case "VisitSingapore.aspx": lin11.Attributes.Add("class", "current");
            //    break;   
            //case "Forms.aspx": lin9.Attributes.Add("class", "current");
            //    break;
            #endregion

            case "Contact.aspx": lin12.Attributes.Add("class", "current");
                break;
            
        }
    }
}
