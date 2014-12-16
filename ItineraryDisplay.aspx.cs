using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TravelEntities;
using TravelBAL;
public partial class ItineraryDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TravelPackages tp = new TravelPackages();
        wwUtils tb = new wwUtils();
        if (!IsPostBack)
        {
            try
            {
                tp.Package_Name = Request.QueryString["itineraryId"].ToString();
                DataSet ds = tb.ExecuteSelectDataSet("exec Itenarary_binding", tp.Package_Name);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    dtlist.DataSource = ds.Tables[0];
                    dtlist.DataBind();
                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        DataList1.DataSource = ds.Tables[1];
                        DataList1.DataBind();
                    }                   
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Sorry, No Itinerary are found for this Package');window.history.go(-1);</script>");
                }
            }
            catch {
                ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Sorry, No Itinerary are found for this Package');window.history.go(-1);</script>");
            }
        }
    }
}