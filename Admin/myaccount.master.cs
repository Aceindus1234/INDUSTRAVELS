using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_myaccount : System.Web.UI.MasterPage
{
    string username = string.Empty;
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            tdUsers.Visible = false;
            //tdTemplates.Visible = false;
           
            tdPostPackages.Visible = false;
            //tdplans.Visible = false;
            tdlogout.Visible = false;

            lnkLogout.Visible = false;
            // lnkplans.Visible = false;
            //lnksettings.Visible = false;
            lnkhome.Visible = true;
            //lnkTemplates.Visible = false;
            lnkUsers.Visible = false;
            lnkSpecialPackages.Visible = false;
        }
        else
        {
            username = Convert.ToString(Session["Admin"]);

            divwelcome.Visible = true;
            divwelcome.InnerHtml = "<b><font color='#e31e25'>Welcome</font> " + username + "</b>";
        }
        if (!IsPostBack)
        {
            getcount();
        }
    }
    protected void getcount()
    {
        //conn.Open();
        //SqlDataAdapter da = new SqlDataAdapter("select count(*) as count from siteview", conn);
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //lblcount.Text = ds.Tables[0].Rows[0]["count"].ToString();
    }
    protected void logo_click(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("Admin_Homepage.aspx");
        }
    }
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void lnktrans_Click(object sender, EventArgs e)
    {

        Response.Redirect("Admin_Transaction.aspx");
    }
    protected void lnkaccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Account.aspx");
    }
    protected void lnkrcharge_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Recharge.aspx");

    }
    protected void myprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_myprofile.aspx");
    }
    protected void lnksales_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Sales.aspx");
    }
   
}
