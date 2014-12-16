using System.Collections.Generic;
using System.Linq;
using System.Web.Services;
using System.Web.Script.Services;
using System;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]

public class AreasList : System.Web.Services.WebService
{
    //[WebMethod]
    //public List<Areas> FetchAreasList(string area, string City)
    //{
    //    //Areas m = new Areas();
    //    //string City = Convert.ToString(System.Web.HttpContext.Current.Session["City"]);
    //    var emp = new Areas();
    //    var fetchArea = emp.GetAreasList(City).Where(m => m.areaname.ToLower().StartsWith(area.ToLower()));
    //    return fetchArea.ToList();
    //}

    //[WebMethod]
    //public List<Areas> FetchAreasList1(string sear, string City)
    //{
       
    //    var emp = new Areas();
    //    var fetchArea = emp.GetAreasList1(City).Where(m => m.searchn.ToLower().StartsWith(sear.ToLower()));
    //    return fetchArea.ToList();
    //}

    [WebMethod]
    public List<Areas> FetchCitiesList(string city,string fname)
    {
        var emp = new Areas();
        var fetchCity = emp.GetCitiesList(fname).Where(m => m.Cityname.ToLower().Contains(city.ToLower()));
        return fetchCity.ToList();
    }
   
}

