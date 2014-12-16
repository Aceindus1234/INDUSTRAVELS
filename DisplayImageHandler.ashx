<%@ WebHandler Language="C#" Class="DisplayImageHandler" %>

using System;
using System.Web;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public class DisplayImageHandler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        context.Response.Clear();
        context.Response.ContentType = "image/jpeg";
        if (context.Request.QueryString["ImgId"] != null)
        {
            int imgId = 0;
            imgId = Convert.ToInt16(context.Request.QueryString["imgId"]);
            MemoryStream memoryStream = new MemoryStream(GetImageFromDB(imgId), false);
            System.Drawing.Image imgFromDataBase = System.Drawing.Image.FromStream(memoryStream);
            imgFromDataBase.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        }
    }
    private byte[] GetImageFromDB(int ImgId)
    {
        string strCon = ConfigurationManager.ConnectionStrings["TravelConnectionString"].ConnectionString;
        SqlDataAdapter SqlAda;
        DataSet ds;
        byte[] btImage = null;
        using (SqlConnection Sqlcon = new SqlConnection(strCon))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                Sqlcon.Open();
                cmd.Connection = Sqlcon;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SP_ImageUpload";
                cmd.Parameters.Add(new SqlParameter("@pvchAction", SqlDbType.VarChar, 50));
                cmd.Parameters.Add(new SqlParameter("@pvchImageId", SqlDbType.Int));
                cmd.Parameters["@pvchAction"].Value = "select";
                cmd.Parameters["@pvchImageId"].Value = ImgId;
                cmd.Parameters.Add("@pIntErrDescOut", SqlDbType.Int).Direction = ParameterDirection.Output;
                SqlAda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                SqlAda.Fill(ds);
                btImage = (byte[])ds.Tables[0].Rows[0][3];
            }
        }
        return btImage;
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}