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

public partial class industravels_new_Special : System.Web.UI.Page
{
    PackageDAL Offerlist = new PackageDAL();
    DataSet offerlist;
    PagedDataSource pds = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindDatalist();
        }
    }
    private void bindDatalist()
    {
        offerlist = new DataSet();
        offerlist = Offerlist.Bind_spOffers();
        if (offerlist.Tables[0].Rows.Count > 0)
        {
            pds.DataSource = offerlist.Tables[0].DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 1;
            pds.CurrentPageIndex = CurrentPage;           
            dtSpecialOffers.DataSource = pds;
            dtSpecialOffers.DataBind();
            ImageButton imgbtn1 = (ImageButton)dtSpecialOffers.Items[0].FindControl("imgprev");
            ImageButton imgbtn2 = (ImageButton)dtSpecialOffers.Items[0].FindControl("imgnxt");
            imgbtn2.Enabled = !pds.IsLastPage;
            imgbtn1.Enabled = !pds.IsFirstPage;
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
    protected void imgprev_click(object sender, ImageClickEventArgs e)
    {
        CurrentPage -= 1;
        bindDatalist();
    }
    protected void imgnxt_click(object sender, ImageClickEventArgs e)
    {
        CurrentPage += 1;
        bindDatalist();
    }
}
