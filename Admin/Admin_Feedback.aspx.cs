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
using System.Data.SqlClient;
using TravelBAL;

public partial class industravels_Admin_Admin_Feedback : System.Web.UI.Page
{
    PagedDataSource pds = new PagedDataSource();
    wwUtils ws = new wwUtils();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
        }
    }
     void BindData()
    {
        #region OldCode
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
        //string connstr = "select * from feedbacks";
        //con.Open();
        //SqlCommand cmd = new SqlCommand(connstr, con);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //   da.Fill(ds);
        // datalist1.DataSource = ds;
        //datalist1.DataBind();
        //con.Close();
        #endregion
        try
        {
            DataSet ds = ws.ExecuteSQL("select * from feedbacks order by id desc");
            if (ds.Tables[0].Rows.Count > 0)
            {
                trPaging.Visible = true;
                trNodata.Visible = false;
                pds.DataSource = ds.Tables[0].DefaultView;
                pds.AllowPaging = true;
                pds.PageSize = 5;
                pds.CurrentPageIndex = CurrentPage;
                imgNext.Visible = !pds.IsLastPage;
                imgPrevious.Visible = !pds.IsFirstPage;
                datalist1.DataSource = pds;
                datalist1.DataBind();
            }
            else
            {
                trPaging.Visible = false;
                trNodata.Visible = true;
            }
        }
        catch {
            trPaging.Visible = false;
            trNodata.Visible = true;
        }
      
    }
     protected void datalist1_DeleteCommand(object source, DataListCommandEventArgs e)
     {
         int ProductID = Convert.ToInt32(datalist1.DataKeys[e.Item.ItemIndex]);
         SqlParameter[] sp = new SqlParameter[1];
         sp[0] = new SqlParameter("@fid", ProductID);
         try
         {
             int success = ws.ExecuteNonQuery("DeleteFeedback", sp);
             if (success != 0)
             {
                 #region OldCodeNoNeed
                 //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
                 //string strdel = "delete from feedbacks where id=" + ProductID;
                 //con.Open();
                 //SqlCommand cmd = new SqlCommand(strdel, con);
                 //cmd.Parameters.AddWithValue("@id", ProductID);        
                 //DeleteFeedback
                 //cmd.ExecuteNonQuery();         
                 //con.Close();
                 #endregion                
                 BindData();
                 ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Feedback Record Deleted Successfully !!!');</script>");
             }
             else
             {
                 ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script>alert('Sorry! Record Delete Unsuccessfull !!!');</script>");
             }
         }
         catch
         {
             ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script>alert('Process Not Done At This Time !!!');</script>");

         }
     }
     protected void imgPrevious_Click(object sender, EventArgs e)
     {
         try
         {
             CurrentPage -= 1;
             BindData();
         }
         catch
         { }
     }
     protected void imgNext_Click(object sender, EventArgs e)
     {
         try
         {
             CurrentPage += 1;
             BindData();
         }
         catch
         { }
     }
     public int CurrentPage
     {
         get
         {
             if (this.ViewState["CurrentPage"] == null)
                 return 0;
             else
                 return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
         }
         set
         {
             this.ViewState["CurrentPage"] = value;
         }
     }   
}
