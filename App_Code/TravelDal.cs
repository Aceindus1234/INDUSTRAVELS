using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using TravelEntities;
using System.Xml.Linq;

/// <summary>
/// Summary description for TravelDal
/// </summary>
namespace TravelDAL
{
    public class TravelInfo
    {
        public TravelInfo()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);
        DataSet ds = new DataSet();
        #region Insert Travel Details
        /// <summary>
        /// Insert Travel Enquiry Details
        /// </summary>
        /// <param name="objBELJobs"></param>
        /// <returns></returns>
        public string InsertTravelInformation(CustomerTravels objBELTravelDetails)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert_TravelDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                if (objBELTravelDetails.Travel_Type == "One Way")
                {
                    cmd.Parameters.AddWithValue("@Travel_Id", objBELTravelDetails.Travel_Id);
                    cmd.Parameters.AddWithValue("@Travel_Type", objBELTravelDetails.Travel_Type);
                    cmd.Parameters.AddWithValue("@Travel_Class", objBELTravelDetails.Travel_Class);
                    cmd.Parameters.AddWithValue("@Travel_From", objBELTravelDetails.Travel_From);
                    cmd.Parameters.AddWithValue("@Travel_To", objBELTravelDetails.Travel_To);
                    cmd.Parameters.AddWithValue("@Departure_Date", objBELTravelDetails.Departure_Date);
                    cmd.Parameters.AddWithValue("@Return_Date", DBNull.Value);
                    cmd.Parameters.AddWithValue("@Num_Passengers", objBELTravelDetails.Num_Passengers);
                    cmd.Parameters.AddWithValue("@Remarks", objBELTravelDetails.Remarks);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Travel_Id", objBELTravelDetails.Travel_Id);
                    cmd.Parameters.AddWithValue("@Travel_Type", objBELTravelDetails.Travel_Type);
                    cmd.Parameters.AddWithValue("@Travel_Class", objBELTravelDetails.Travel_Class);
                    cmd.Parameters.AddWithValue("@Travel_From", objBELTravelDetails.Travel_From);
                    cmd.Parameters.AddWithValue("@Travel_To", objBELTravelDetails.Travel_To);
                    cmd.Parameters.AddWithValue("@Departure_Date", objBELTravelDetails.Departure_Date);
                    cmd.Parameters.AddWithValue("@Return_Date", objBELTravelDetails.Return_Date);
                    cmd.Parameters.AddWithValue("@Num_Passengers", objBELTravelDetails.Num_Passengers);
                    cmd.Parameters.AddWithValue("@Remarks", objBELTravelDetails.Remarks);
                }
                object value = cmd.ExecuteNonQuery();
                con.Close();
                return Convert.ToString(value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();

            }
        }
        /// <summary>
        ///Delete Customer TravelDetails 
        /// </summary>
        /// <param name="travel_id"></param>
        /// <returns></returns>
        public int DeleteCustomerTravelDetails(string travel_id)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DeleteTravelDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Travel_Id", travel_id);
                object value = cmd.ExecuteNonQuery();
                return Convert.ToInt32(value.ToString());

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();

            }
        }
        /// <summary>
        /// Bind Customer TravelDetails
        /// </summary>
        /// <param name="objenquiry"></param>
        /// <returns></returns>
        public DataSet BindCustomerTravelDetails(string objenquiry)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("BindTravelDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Travel_Id", objenquiry);
                SqlDataAdapter sdaTravels = new SqlDataAdapter();
                sdaTravels.SelectCommand = cmd;
                sdaTravels.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();

            }
        }




        #endregion
    }
}
