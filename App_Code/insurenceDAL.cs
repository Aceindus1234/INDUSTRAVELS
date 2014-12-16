using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


/// <summary>
/// Summary description for insurenceDAL
/// </summary>
public class insurenceDAL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cnn"].ConnectionString);
    public insurenceDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    internal string insertinsurenceinfo(InsurenceProperties objinsprop)
    {
        con.Open();
        string sqlstr = "insert into TravelInsurence(Country, Suminsured , Departuredate , Returndate , Noofdaystravelling , NoofTravellers ,Traveller1 , Traveller2 , Traveller3 ,Traveller4 ,Traveller5 ,Traveller6 , EmailId , PhoneNo ) values (@Country,@Suminsured , @Departuredate , @Returndate , @Noofdaystravelling , @NoofTravellers ,@Traveller1 , @Traveller2 , @Traveller3 ,@Traveller4 ,@Traveller5 ,@Traveller6 , @EmailId , @PhoneNo)";
        SqlCommand cmd = new SqlCommand(sqlstr, con);
        SqlParameter param = new SqlParameter();
        cmd.Parameters.AddWithValue("@Country", objinsprop.Country1);
        cmd.Parameters.AddWithValue("@Suminsured", objinsprop.Suminsured1);
        cmd.Parameters.AddWithValue("@Departuredate", objinsprop.Departuredate1);
        cmd.Parameters.AddWithValue("@Returndate", objinsprop.Returndate1);
        cmd.Parameters.AddWithValue("@Noofdaystravelling", objinsprop.Noofdaystravelling1);
        cmd.Parameters.AddWithValue("@NoofTravellers", objinsprop.NoofTravellers1);
        cmd.Parameters.AddWithValue("@Traveller1", objinsprop.Traveller11);
        cmd.Parameters.AddWithValue("@Traveller2", objinsprop.Traveller21);
        cmd.Parameters.AddWithValue("@Traveller3", objinsprop.Traveller31);
        cmd.Parameters.AddWithValue("@Traveller4", objinsprop.Traveller41);
        cmd.Parameters.AddWithValue("@Traveller5", objinsprop.Traveller51);
        cmd.Parameters.AddWithValue("@Traveller6", objinsprop.Traveller61);
        cmd.Parameters.AddWithValue("@EmailId", objinsprop.EmailId1);
        cmd.Parameters.AddWithValue("@PhoneNo", objinsprop.PhoneNo1);
        cmd.Parameters.Add("@ERROR", SqlDbType.Char, 500);
        cmd.Parameters["@ERROR"].Direction = ParameterDirection.Output;
        string strMessage = (string)cmd.Parameters["@ERROR"].Value;
        cmd.ExecuteNonQuery();
       
        //int insert = cmd.ExecuteNonQuery();
        con.Close();
        return strMessage;

    }
}