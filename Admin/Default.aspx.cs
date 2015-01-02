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

public partial class industravels_Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        divid.Visible = false;
        if (Session["Admin"] == null)
        {
            //lnkLogout.Visible = false;
            //lnkplans.Visible = false;
            //lnksettings.Visible = false;
            td1.Visible = false;
            td2.Visible = false;
            td3.Visible = false;
            td4.Visible = false;
            lnkhome.Visible = true;

            tdplans.Visible = false;
            tdlogout.Visible = false;
        }
        else
        {
        }
        if (!IsPostBack)
        {

        }
    }
    protected void logo_click(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("Admin_CustomerDetails.aspx");
            //Response.Redirect("Admin_Homepage.aspx");
        }
    }
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void lnkhome_Click(object sender, EventArgs e)
    {
        if (Session["Admin"] != null)
        {
            //Response.Redirect("Admin_Homepage.aspx");
            Response.Redirect("Admin_CustomerDetails.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void lnkusers_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_CustomerDetails.aspx");
    }
    protected void Signin_Click(object sender, EventArgs e)
    {
        if (Login(txtUserID.Text, Password.Text))
        {
            Session["Admin"] = txtUserID.Text;
            Session.Timeout = 30;
            //Response.Redirect("Admin_Homepage.aspx");
            Response.Redirect("Admin_CustomerDetails.aspx");
        }
        else
        {
            divid.Visible = true;
            divid.InnerHtml = "Please enter valid user id and password";
        }
    }
    private bool Login(string User, string Passwd)
    {
        if (ddlCountry.SelectedItem.Text == "India")
        {
            if (User == "admin" && Passwd == "Mnhbs@1299")
            {
                Session["Country"] = "India";
                return true;
            }
            else
            {
                ddlUsertype.ClearSelection();
                ddlCountry.ClearSelection();
                clear();
                divid.Visible = true;
                return false;
            }
        }
        else
        {
            if (User == "admin" && Passwd == "Mnhbs@1299")
            {
                Session["Country"] = "USA";
                return true;
            }
            else
            {
                ddlUsertype.ClearSelection();
                ddlCountry.ClearSelection();
                clear();
                divid.Visible = true;
                return false;
            }
        }
    }
    public void clear()
    {
        ddlCountry.SelectedItem.Text = "Select";
        ddlUsertype.SelectedItem.Text = "Select";
        txtUserID.Text = "";
        Password.Text = "";
        rfvcountry.Enabled = false;
        rfvusertype.Enabled = false;
    }
}