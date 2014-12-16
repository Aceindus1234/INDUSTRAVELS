using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System;
using System.Web;
using System.Xml;

/// <summary>
/// Summary description for Area
/// </summary>
public class Areas
{
    public int id { get; set; }
    public string areaname { get; set; }
    public string searchn { get; set; }
    //InsertData obj = new InsertData();
    static string excep_page = "Cities appcode";
    public int cityid { get; set; }
    public string Cityname { get; set; }
    #region oldmethodsNoneed
    //public List<Areas> GetAreasList(string City)
    //{
    //    List<Areas> Areanames = new List<Areas>();

    //    try
    //    {
            
    //       SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connectionstring"]);
    //        con1.Open();
    //        DataTable dt1 = new DataTable();
    //        SqlDataAdapter da1;
    //        da1 = new SqlDataAdapter("select Distinct(Area),City from modulesdata where City='" + City + "' order by Area Asc", con1);
    //        //da1 = new SqlDataAdapter("select Distinct(Area),City from modulesdata where City='" + City + "'", con1);
    //        da1.Fill(dt1);

    //        for (int i = 0; i < dt1.Rows.Count; i++)
    //        {
    //            Areanames.Add(new Areas() { areaname = Convert.ToString(dt1.Rows[i]["Area"]) });
    //        }

    //        return Areanames;
    //    }
    //    catch (Exception e)
    //    {
    //        e.ToString();
    //        return null;
    //    }

    //}
    //public List<Areas> GetAreasList1(string City)
    //{
    //    List<Areas> searchname = new List<Areas>();

    //    try
    //    {

    //        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["connectionstring"]);
    //        con1.Open();
    //        DataTable dt1 = new DataTable();
    //        SqlDataAdapter da1;
    //        da1 = new SqlDataAdapter("select distinct(Category) from modulesdata where City='" + City + "' order by Category asc", con1);
    //        //da1 = new SqlDataAdapter("select Distinct(Area),City from modulesdata where City='" + City + "'", con1);
    //        da1.Fill(dt1);

    //        for (int i = 0; i < dt1.Rows.Count; i++)
    //        {
    //            searchname.Add(new Areas() { searchn = Convert.ToString(dt1.Rows[i]["Category"]) });
    //        }

    //        return searchname;
    //    }
    //    catch (Exception e)
    //    {
    //        e.ToString();
    //        return null;
    //    }

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
    //        citynames.Add(new Areas() { Cityname = Convert.ToString(dflight.Attributes[fname].Value) });
    //        //string flight = dflight.Attributes[fname].Value;
    //        //if (flight.ToLower().Contains(prefixText.ToLower()))
    //        //    list.Add(flight);
    //    }
    //    return list;

    //}
    #endregion
    public List<Areas> GetCitiesList(string fname)
    {

        List<Areas> citynames = new List<Areas>();
        try
        {
            XmlDocument doc = new XmlDocument();
            string path = HttpContext.Current.Server.MapPath("xmlsheets/" + fname + ".xml");
            doc.Load(path);
            XmlNodeList domesticflight = doc.GetElementsByTagName("section");
          
            foreach (XmlNode dflight in domesticflight)
            {
                //citynames.Add(new Areas() { cityid = Convert.ToInt32(dt.Rows[i]["city_Id"]), Cityname = Convert.ToString(dt.Rows[i]["city_name"]) });
                citynames.Add(new Areas() { Cityname = Convert.ToString(dflight.Attributes[fname].Value) });
            }
            #region noneed
            //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connectionstring"]);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select city_Id,city_name from cities", con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //for (int i = 0; i < dt.Rows.Count; i++)
            #endregion

            return citynames;
        }
        catch (Exception e)
        {
            e.ToString();
            return null;
        }
    }
   
}


