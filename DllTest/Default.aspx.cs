using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PdfDocument;
using ContentData;
using ExcelReader;
using DocReader.Core;
public partial class _Default : System.Web.UI.Page
{
    GetCreateTables gct = new GetCreateTables();
    string fName = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Grid1.DataSource = gct.GetTables();
            Grid1.DataBind();
        }
    }
    protected void rdlist_selectChange(object sender, EventArgs e)
    {
        
        if (txt1.Text == "")
            fName = "Document";
        else
            fName = txt1.Text;

        switch (rdlist.SelectedValue)
        {
            case "1":
                CreatePdf cp = new CreatePdf(fName);
                 //cp.ExportData(gct.GetTables()); // parameter as DataTable

                 #region DataGridControl
                 //DataGrid dg1 = new DataGrid();
                //dg1.DataSource = gct.GetTables();
                //dg1.DataBind();
                 //cp.ExportData(dg1); // Parameter as DataTable
                 #endregion
                 #region GridViewControl
                 cp.ExportData(Grid1);//parameter as GridView
                 #endregion

                 break;
            case "2":
                 CreateWord cw = new CreateWord(fName);
                 //cw.ExportWord(gct.GetTables());// parameter as DataTable

                 #region DataGridControl
                 //DataGrid dg1 = new DataGrid();
                 //dg1.DataSource = gct.GetTables();
                 //dg1.DataBind();
                 //cw.ExportWord(dg1); // Parameter as DataTable
                 #endregion
                 #region GridViewControl
                 cw.ExportWord(Grid1);//parameter as GridView
                 #endregion

                 break;
            default:
                 CreateExcel ce = new CreateExcel(fName);
                 //ce.ExportExcel(gct.GetTables());// parameter as DataTable

                 #region DataGridControl
                 //DataGrid dg1 = new DataGrid();
                 //dg1.DataSource = gct.GetTables();
                 //dg1.DataBind();
                 //ce.ExportExcel(dg1); // Parameter as DataTable
                 #endregion
                 #region GridViewControl
                  ce.ExportExcel(Grid1);//parameter as GridView
                 #endregion

                 break;
           
        }
        
    }
    protected void RadioButtonList1_Changed(object sender, EventArgs e)
    {        
        
        if (txt2.Text == "")
            fName = "Document";
        else
            fName = txt2.Text;
        switch (RadioButtonList1.SelectedValue)
        {
            case "1":
                CreatePdf cp1 = new CreatePdf(fName);
                cp1.ExportData(ExportText.Text);
                break;

            default:
                CreateWord cw1 = new CreateWord(fName);
                cw1.ExportWord(ExportText.Text);
                break;

        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}