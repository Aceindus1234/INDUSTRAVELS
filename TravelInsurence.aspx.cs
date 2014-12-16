using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class industravels_TravelInsurence : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void insurencebtn_Click(object sender, EventArgs e)
    {
        #region oldcode
        //SqlParameter[] param = new SqlParameter[14];
        //param[0] = new SqlParameter("@Country", rdbl1.SelectedItem.Text);
        //param[1] = new SqlParameter("@Suminsured", ddlsuminsured.Text);
        //param[2] = new SqlParameter("@Departuredate", txtdepadate.Text);
        //param[3] = new SqlParameter("@Returndate", txtreturndate.Text);
        //param[4] = new SqlParameter("@Noofdaystravelling", txtnotraveldays.Text);
        //param[5] = new SqlParameter("@NoofTravellers", ddltravelersno.Text);
        //param[6] = new SqlParameter("@Traveller1", ddltrveler1.SelectedValue);
        //param[7] = new SqlParameter("@Traveller2", ddltraveler2.SelectedValue);
        //param[8] = new SqlParameter("@Traveller3", ddltraveler3.SelectedValue);
        //param[9] = new SqlParameter("@Traveller4", ddltraveler4.SelectedValue);
        //param[10] = new SqlParameter("@Traveller5", ddltraveler5.SelectedValue);
        //param[11] = new SqlParameter("@Traveller6", ddltraveler6.SelectedValue);
        //param[12] = new SqlParameter("@EmailId", txtemailid.Text);
        //param[13] = new SqlParameter("@PhoneNo", txtcontact.Text);
        //int insert = tb.insurenceinsert();
        #endregion


        if (ckbaccepet.Checked)
        {
            string output;

            InsurenceProperties objinsprop = new InsurenceProperties();
            objinsprop.Country1 = rdbl1.SelectedItem.Text;
            objinsprop.Suminsured1 = ddlsuminsured.Text;
            objinsprop.Departuredate1 = txtdepadate.Text;
            objinsprop.Returndate1 = txtreturndate.Text;
            objinsprop.Noofdaystravelling1 = txtnotraveldays.Text;
            objinsprop.NoofTravellers1 = ddltravelersno.Text;
            objinsprop.Traveller11 = ddltrveler1.SelectedValue;
            objinsprop.Traveller21 = ddltraveler2.SelectedValue;
            objinsprop.Traveller31 = ddltraveler3.SelectedValue;
            objinsprop.Traveller41 = ddltraveler4.SelectedValue;
            objinsprop.Traveller51 = ddltraveler5.SelectedValue;
            objinsprop.Traveller61 = ddltraveler6.SelectedValue;
            objinsprop.EmailId1 = txtemailid.Text;
            objinsprop.PhoneNo1 = txtcontact.Text;
            insurenceBAL objbal = new insurenceBAL();
            output = objbal.insertinsurencedetails(objinsprop);
           
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('ThanQ For Giving Ur Details !!!');</script>");
            
            rdbl1.SelectedItem.Text = string.Empty;
            ddlsuminsured.SelectedIndex = -1;
            txtdepadate.Text = string.Empty;
            txtreturndate.Text = string.Empty;
            txtnotraveldays.Text = string.Empty;
            ddltravelersno.Text = string.Empty;
            ddltrveler1.SelectedIndex = -1;
            ddltraveler2.SelectedIndex = -1;
            ddltraveler3.SelectedIndex = -1;
            ddltraveler4.SelectedIndex = -1;
            ddltraveler5.SelectedIndex = -1;
            ddltraveler6.SelectedIndex = -1;
            txtemailid.Text = string.Empty;
            txtcontact.Text = string.Empty;
            ckbaccepet.Checked = false;
            #region old
            //        con.Open();
            //        string sqlstr = "insert into TravelInsurence(Country, Suminsured , Departuredate , Returndate , Noofdaystravelling , NoofTravellers ,Traveller1 , Traveller2 , Traveller3 ,Traveller4 ,Traveller5 ,Traveller6 , EmailId , PhoneNo ) values (@Country,@Suminsured , @Departuredate , @Returndate , @Noofdaystravelling , @NoofTravellers ,@Traveller1 , @Traveller2 , @Traveller3 ,@Traveller4 ,@Traveller5 ,@Traveller6 , @EmailId , @PhoneNo)";
            //        SqlCommand cmd = new SqlCommand(sqlstr, con);
            //        SqlParameter param = new SqlParameter();
            //        cmd.Parameters.AddWithValue("@Country", rdbl1.SelectedItem.Text);
            //        cmd.Parameters.AddWithValue("@Suminsured", ddlsuminsured.Text);
            //        cmd.Parameters.AddWithValue("@Departuredate", txtdepadate.Text);
            //        cmd.Parameters.AddWithValue("@Returndate", txtreturndate.Text);
            //        cmd.Parameters.AddWithValue("@Noofdaystravelling", txtnotraveldays.Text);
            //        cmd.Parameters.AddWithValue("@NoofTravellers", ddltravelersno.Text);
            //        cmd.Parameters.AddWithValue("@Traveller1", ddltrveler1.SelectedValue);
            //        cmd.Parameters.AddWithValue("@Traveller2", ddltraveler2.SelectedValue);
            //        cmd.Parameters.AddWithValue("@Traveller3", ddltraveler3.SelectedValue);
            //        cmd.Parameters.AddWithValue("@Traveller4", ddltraveler4.SelectedValue);
            //        cmd.Parameters.AddWithValue("@Traveller5", ddltraveler5.SelectedValue);
            //        cmd.Parameters.AddWithValue("@Traveller6", ddltraveler6.SelectedValue);
            //        cmd.Parameters.AddWithValue("@EmailId", txtemailid.Text);
            //        cmd.Parameters.AddWithValue("@PhoneNo", txtcontact.Text);
            //       int insert= cmd.ExecuteNonQuery();
            //        con.Close();
            //       // ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Thank You For Giving Details !!!');</script>");
            //        if (insert == 1)
            //        {
            //            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('Thank You For Giving Details !!!');</script>");

            //            rdbl1.SelectedItem.Text=string.Empty;
            //            ddlsuminsured.SelectedIndex=-1;
            //            txtdepadate.Text=string.Empty;
            //             txtreturndate.Text=string.Empty;
            //             txtnotraveldays.Text=string.Empty;
            //            ddltravelersno.Text=string.Empty;
            //            ddltrveler1.SelectedIndex = -1;
            //            ddltraveler2.SelectedIndex = -1;
            //            ddltraveler3.SelectedIndex = -1;
            //            ddltraveler4.SelectedIndex = -1;
            //            ddltraveler5.SelectedIndex = -1;
            //            ddltraveler6.SelectedIndex = -1;
            //             txtemailid.Text=string.Empty;
            //             txtcontact.Text = string.Empty;
            //             ckbaccepet.Checked = false;
            //    }
            //    else
            //    {

            //        ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('please check the terms and conditions !!!');</script>");



            //        }
            #endregion
        }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "Message", "<script>alert('please check the terms and conditions !!!');</script>");
        }


    }
}
