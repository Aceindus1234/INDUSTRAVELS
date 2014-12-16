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

public partial class AdminMainMasterPage : System.Web.UI.MasterPage
{
    string username = string.Empty;
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            tdUsers.Visible = false;
            //tdTemplates.Visible = false;
           // td1.Visible = false;
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
    protected void lnkhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Homepage.aspx");
    }
    protected void lnkusers_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_CustomerDetails.aspx");
    }
    protected void myaccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Myaccount.aspx");    
    }
    //protected void lnkplans_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Plans.aspx");
    //}
    //protected void lnksettings_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("UserActDeactivate.aspx");
    //}
    //protected void lnkTemplates_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Template_Details.aspx");
    //}
    //protected void lnkcontact_Click(object sender, EventArgs e)
    //{
    //    //Response.Redirect("admin_contactus.aspx");
    //}
    protected void lnklfeedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Feedback.aspx");
    }
    protected void lnkSpecialPackages_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_SpecialPackageDetails.aspx");
    }
}
