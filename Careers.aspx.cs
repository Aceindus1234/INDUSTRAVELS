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
using TravelDAL;

public partial class industravels_new_Careers : System.Web.UI.Page
{
    PackageDAL pdlist = new PackageDAL();
    PagedDataSource pds = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_Datalist();
        }
    }
    private void bind_Datalist()
    {
        DataSet dslist = new DataSet();
        dslist = pdlist.BindCareers_Jobs();
        if (dslist.Tables[0].Rows.Count > 0)
        {
            divfoot.Visible = true;
            pds.DataSource = dslist.Tables[0].DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 6;
            pds.CurrentPageIndex = CurrentPage;           
            btnext.Enabled = !pds.IsLastPage;
            btnprev.Enabled = !pds.IsFirstPage;
            lblpage.Text = "Page: " + (CurrentPage + 1).ToString() + " of " + pds.PageCount.ToString();
            dtCareers.DataSource = pds;
            dtCareers.DataBind();
            dslist.Dispose();
        }
        else
        {
            dtCareers.DataSource = "";
            dtCareers.DataBind();
            divfoot.Visible = false;
        }
    }
    public int CurrentPage
    {
        get
        {
            if (this.ViewState["CPage"] == null)
                return 0;
            else
                return Convert.ToInt16(this.ViewState["CPage"].ToString());
        }
        set
        {
            this.ViewState["CPage"] = value;
        }
    }
    protected void btnprev_click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        bind_Datalist();
    }
    protected void btnext_click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        bind_Datalist();
    }
}
