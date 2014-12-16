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

public partial class Admin_Admin_Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] != null)
        {
            
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgplans_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("Plans.aspx");      
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imglists_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("AccountUsers.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgedetails_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("AccountUsers.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgesettings_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("EmailSettings.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgschedule_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("AccountUsers.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgsubscribers_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("EmailSettings.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgmailto_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("AccountUsers.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgreports_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["Admin"] != null)
        {
            Response.Redirect("AccountUsers.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgusers_Click(object sender, ImageClickEventArgs e)
    {
      if (Session["Admin"] != null)
        {
            Response.Redirect("AccountUsers.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgtemplates_Click(object sender, ImageClickEventArgs e)
    {
       if (Session["Admin"] != null)
        {
            Response.Redirect("Template_Details.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgusersmeids_Click(object sender, ImageClickEventArgs e)
    {
         if (Session["Admin"] != null)
        {
            Response.Redirect("AccountDetails.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgnewsletter_Click(object sender, ImageClickEventArgs e)
    {
      if (Session["Admin"] != null)
        {
            Response.Redirect("Admin_Emailnewsletter.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgcontact_Click(object sender, ImageClickEventArgs e)
    {
         if (Session["Admin"] != null)
        {
            Response.Redirect("admin_contactus.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void imgfeedback_Click(object sender, ImageClickEventArgs e)
    {
          if (Session["Admin"] != null)
        {
            Response.Redirect("Admin_Feedback.aspx");
        }
        else if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

}
