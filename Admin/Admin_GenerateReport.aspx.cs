using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.Reporting.WebForms;
using TravelDAL;
public partial class industravels_Admin_Admin_GenerateReport : System.Web.UI.Page
{
    static string rid;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Admin"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}
        //else
        //{
            if (!IsPostBack)
            {
                if (Request.QueryString["refid"] != null)
                    rid = Request.QueryString["refid"];
              
                if (rid != null)
                    if (rid != "")
                    {
                        PackageDAL reportlist = new PackageDAL();
                        ReportViewer1.ProcessingMode = ProcessingMode.Local;
                        ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report2.rdlc");
                        DataSet1 dsCustomers = reportlist.BindReportList(rid);
                        ReportDataSource datasource = new ReportDataSource("DataSet1", dsCustomers.Tables[1]);
                        ReportViewer1.LocalReport.DataSources.Clear();
                        ReportViewer1.LocalReport.DataSources.Add(datasource);
                    }
            }
        //}
    }

    //private DataSet1 GetData(string query)
    //{
    //    string conString = ConfigurationManager.ConnectionStrings["Itravels9ConnectionString"].ConnectionString;
    //    SqlCommand cmd = new SqlCommand(query);
    //    using (SqlConnection con = new SqlConnection(conString))
    //    {
    //        using (SqlDataAdapter sda = new SqlDataAdapter())
    //        {
    //            cmd.Connection = con;
    //            sda.SelectCommand = cmd;
    //            using (DataSet1 dsCustomers = new DataSet1())
    //            {
    //                sda.Fill(dsCustomers, "DataTable1");
    //                return dsCustomers;
    //            }
    //        }
    //    }
    //}
}