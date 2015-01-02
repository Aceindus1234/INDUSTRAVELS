using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using iTextSharp.text;
//using System.IO;
//using iTextSharp.text.html.simpleparser;
//using iTextSharp.text.pdf;
//using PdfDocument;
//using System.Data;
public partial class industravels_Admin_Admin_GenerateReport1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
           
        }
    }

    //protected void btnExport_Click(object sender, EventArgs e)
    //{

    //    //CreatePdf cp = new CreatePdf("sdfhkj");      
    //    //cp.ExportData(prtab.InnerHtml); 

    //    Response.ContentType = "application/pdf";
    //    Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
    //    Response.Cache.SetCacheability(HttpCacheability.NoCache);

    //    // MemoryStream msOutput = new MemoryStream();
    //    // TextReader reader = new StringReader(prtab.InnerText);

    //    // // step 1: creation of a document-object
    //    // Document document = new Document(PageSize.A4, 30, 30, 30, 30);

    //    // // step 2:
    //    // // we create a writer that listens to the document
    //    // // and directs a XML-stream to a file
    //    // PdfWriter writer = PdfWriter.GetInstance(document, msOutput);

    //    // // step 3: we create a worker parse the document
    //    // HTMLWorker worker = new HTMLWorker(document);

    //    // // step 4: we open document and start the worker on the document
    //    // document.Open();
    //    //// worker.StartDocument();        
    //    // // step 5: parse the html into the document
    //    // worker.Parse(reader);

    //    // // step 6: close the document and the worker
    //    // //worker.EndDocument();
    //    // //worker.Close();
    //    // document.Close();


    //    //StringWriter sw = new StringWriter();
    //    //HtmlTextWriter hw = new HtmlTextWriter(sw);        
    //    //prtab.RenderControl(hw);
    //    //StringReader sr = new StringReader(sw.ToString());
    //    string s = div1.InnerHtml;
    //    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);

    //    List<IElement> htmlarraylist = HTMLWorker.ParseToList(new StringReader(s), null);

    //    //add the collection to the document
    //    for (int k = 0; k < htmlarraylist.Count; k++)
    //    {
    //        pdfDoc.Add((IElement)htmlarraylist[k]);
    //    }

     

    //    // or add the collection to an paragraph
    //    // if you add it to an existing non emtpy paragraph it will insert it from
    //    //the point youwrite -
    //    Paragraph mypara = new Paragraph();//make an emtphy paragraph as "holder"
    //    mypara.IndentationLeft = 36;
    //    mypara.InsertRange(0, htmlarraylist);
    //    pdfDoc.Open();
    //    pdfDoc.Add(mypara);
    //    pdfDoc.Close();

 

    //    //HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
    //    //PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
    //    //pdfDoc.Open();
    //    //htmlparser.Parse(sr);
    //    //pdfDoc.Close();
    //    Response.Write(pdfDoc);
    //    Response.End();

    //}

}