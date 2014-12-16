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
using System.Xml;
public partial class industravels_airlinenumbers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            bindxml();
    }
    private void bindxml()
    {
        XmlTextReader xtreader = new XmlTextReader(Server.MapPath("xmlsheets/airlinenubers.xml"));
        DataSet ds = new DataSet();
        ds.ReadXml(xtreader);
        xtreader.Close();
        if (ds.Tables.Count != 0)
        {
            dtBasic.DataSource = ds;
            dtBasic.DataBind();
        }
        else
        {
            dtBasic.DataSource = null;
            dtBasic.DataBind();
        }
    }
    protected void dtBasicPage_Change(object sender, GridViewPageEventArgs e)
    {
        dtBasic.PageIndex = e.NewPageIndex;        
        bindxml();
    }
}
