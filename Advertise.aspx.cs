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
using System.Configuration;
using TravelEntities;
using TravelBAL;
public partial class industravels_Advertise : System.Web.UI.Page
{
    TravelPackages tp = new TravelPackages();
    wwUtils tb = new wwUtils();
   // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string strScript = "";
        try
        {
            recaptcha.Validate();
            if (recaptcha.IsValid)
            {
                #region changecode
                //con.Open();
                //SqlCommand cmd = new SqlCommand("AdRequire", con);
                //cmd.CommandType = CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("@Name", txtName.Text);
                //cmd.Parameters.AddWithValue("@Business", ddlBusiness.SelectedItem.Text);
                //cmd.Parameters.AddWithValue("@phone", txtContact.Text);
                //cmd.Parameters.AddWithValue("@Email", txtmail.Text);
                //cmd.Parameters.AddWithValue("@AdPage", ddlAdpage.Text);
                //cmd.Parameters.AddWithValue("@AdType", dllAdtype.Text);
                //cmd.Parameters.AddWithValue("@AdSize", ddlSize.Text);
                //cmd.Parameters.AddWithValue("@AdPeriod", ddlPeriod.Text);
                //cmd.ExecuteNonQuery();
                //con.Close();
                #endregion
                SqlParameter[] parm = new SqlParameter[8];
                parm[0] = new SqlParameter("@Name", txtName.Text);
                parm[1] = new SqlParameter("@Business", ddlBusiness.SelectedItem.Text);
                parm[2] = new SqlParameter("@phone", txtContact.Text);
                parm[3] = new SqlParameter("@Email", txtmail.Text);
                parm[4] = new SqlParameter("@AdPage", ddlAdpage.Text);
                parm[5] = new SqlParameter("@AdType", dllAdtype.Text);
                parm[6] = new SqlParameter("@AdSize", ddlSize.Text);
                parm[7] = new SqlParameter("@AdPeriod", ddlPeriod.Text);
                int insert = tb.ExecuteNonQuery("AdRequire", parm);
                if (insert == 1)
                {
                    txtmail.Text = "";
                    txtName.Text = "";
                    ddlBusiness.SelectedIndex = -1;
                    txtContact.Text = "";
                    ddlAdpage.SelectedIndex = -1;
                    ddlPeriod.SelectedIndex = -1;
                    dllAdtype.SelectedIndex = -1;
                    ddlSize.SelectedIndex = -1;
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Ad Requirement submit succussfully, We will contact you soon')</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('failed to submit the Ad Requirement !!!');</script>");
                }

                #region oldcode
                //    string insert = "insert into Advertisement(Name,Business,ContactNumber,Email,AdPage,AdType,AdSize,AdPeriod) values(@Name,@Business,@ContactNumber,@Email,@AdPage,@AdType,@AdSize,@AdPeriod)";
                //    SqlCommand cmd = new SqlCommand(insert,con);
                //    //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //    cmd.CommandType = CommandType.Text;
                //    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                //    cmd.Parameters.AddWithValue("@Business",ddlBusiness.SelectedValue.ToString());
                //    cmd.Parameters.AddWithValue("@ContactNumber",txtContact.Text);
                //    cmd.Parameters.AddWithValue("@Email",txtmail.Text);
                //    cmd.Parameters.AddWithValue("@AdPage",ddlAdpage.SelectedValue.ToString());
                //    cmd.Parameters.AddWithValue("@AdType",dllAdtype.SelectedValue.ToString());
                //    cmd.Parameters.AddWithValue("@AdSize",ddlSize.SelectedValue.ToString());
                //    cmd.Parameters.AddWithValue("@AdPeriod",ddlPeriod.SelectedValue.ToString());
                //    cmd.ExecuteNonQuery();
                //    Response.Write(" Ad Requirement submit succussfully, We will contact you soon");
                #endregion
            }
            else
            {
                strScript = "alert('entered characters are invalid on image');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
            }
        }
        catch
        {
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('failed to submit the feedback !!!');</script>");
        }

    }
}
