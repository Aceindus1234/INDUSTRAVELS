using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; 
using PdfDocument;
using ExcelReader;
using DocReader.Core;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("Documents/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            GridView1.DataSource = files;
            GridView1.DataBind();
        }
    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
    protected void ViewFile(object sender, EventArgs e)
    {        
        string filePath = (sender as LinkButton).CommandArgument;
        string fileext = Path.GetExtension(filePath);
        if (fileext == ".pdf")
        {
            OpenPdf opdf = new OpenPdf();
            // filePath = Server.MapPath("Documents/test.pdf");
            filePath = "Documents/" + Path.GetFileName(filePath);
            opdf.OpenPdfDocument(filePath);
        }
        else if ((fileext == ".xls") || (fileext == ".xlsx"))
        {
            div1.InnerHtml = "";
            //FileStream stream = File.Open(FilePath, FileMode.Open, FileAccess.Read);
            FileStream stream = new FileStream(filePath, FileMode.Open, FileAccess.Read);
            IExcelDataContainer excelReader;//import the excel class library(dll) class and methods
            if (fileext == ".xls")
                // Reading from a binary Excel file ('97-2003 format; *.xls)
                excelReader = ExcelReaderContainer.CreateBinaryReader(stream);
            else
                //Reading from a OpenXml Excel file (2007 format; *.xlsx)
                excelReader = ExcelReaderContainer.CreateOpenXmlReader(stream);
            // DataSet - The result of each spreadsheet will be created in the result.Tables
            DataSet result = excelReader.AsDataSet();
            excelReader.Close();//close the excel reader
            excelReader.Dispose();
            stream.Close();
            Grid1.DataSource = result;//here we can call multiple sheets from the excel using results.Tabels[index]
            Grid1.DataBind();
        }
        else if ((fileext == ".doc") || (fileext == ".docx"))
        {
            Grid1.DataSource = null;
            Grid1.DataBind();
            string text1;
            if (fileext == ".doc")
            {
                LoadDocText loader = new LoadDocText(filePath);
                if (loader.LoadText(out text1))
                    div1.InnerHtml = text1;
            }
            else
            {
                LoadDocxText ldxt = new LoadDocxText(filePath);
                text1 = ldxt.ExtractText();
                div1.InnerHtml = text1;
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Load Failure')</script>");
        }
    }
}