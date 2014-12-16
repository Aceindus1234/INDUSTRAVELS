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
using System.Xml.Linq;
using System.Configuration;
using System.Data.SqlClient;
using TravelEntities;
using System.Text;

/// <summary>
/// Summary description for CustomerDal
/// </summary>
namespace TravelDAL
{
    public class CustomerDal
    {
        public CustomerDal()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        //SQL Connection string
        SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);
        DataSet ds = new DataSet();
        #region Insert Customer Details
        /// <summary>
        /// Insert Customer Details
        /// </summary>
        /// <param name="objBELJobs"></param>
        /// <returns></returns>
        public string InsertUserInformation(Customer objBELUserDetails)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("InsertCustomer_Details", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@Customer_Id", objBELUserDetails.Customer_Id);
                cmd.Parameters.AddWithValue("@Customer_Fname", objBELUserDetails.Customer_Fname);
                cmd.Parameters.AddWithValue("@Customer_Lname", objBELUserDetails.Customer_Lname);
                cmd.Parameters.AddWithValue("@Customer_Mobile", objBELUserDetails.Customer_Mobile);
                cmd.Parameters.AddWithValue("@Customer_Emailid", objBELUserDetails.Customer_Emailid);
                cmd.Parameters.AddWithValue("@Customer_Country", objBELUserDetails.Customer_Country);
                cmd.Parameters.AddWithValue("@Customer_City", objBELUserDetails.Customer_City);
                cmd.Parameters.AddWithValue("@Travel_TypeId", objBELUserDetails.TravelType_Id);
                cmd.Parameters.AddWithValue("@Enquiry_Id", objBELUserDetails.Enquiry_Id);
                cmd.Parameters.AddWithValue("@Postdate", objBELUserDetails.Postdate);

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
        /// Bind Customer Details
        /// </summary>
        /// <param name="objBELJobs"></param>
        /// <returns></returns>
        public DataSet BindCustomerDetails()
        {
            ds.Clear();
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);

            con.Open();
            SqlCommand cmd = new SqlCommand("Admin_BindCustomerDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                ds = CustomerDal.ExcuteQry("Admin_BindCustomerDetails");
                con.Close();
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
        /// <summary>
        /// Bind Customer Details based on travel type
        /// </summary>
        /// <param name="objenquiry"></param>
        /// <returns></returns>
        public DataSet BindCustomerTravelndToursDetails(Customer objBELUserDetails)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("BindCustomerTravelndToursDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Enquiry_Id", objBELUserDetails.Enquiry_Id);
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
        /// <summary>
        /// delete Customer Details based on travel type
        /// </summary>
        /// <param name="objBELJobs"></param>
        /// <returns></returns>
        public int DeleteCustomerTravelORPackageDetails(Customer objcustomerEnti)
        {
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);

            con.Open();
            SqlCommand cmd = new SqlCommand("DeleteTravelORPackages", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Enquiry_Id", objcustomerEnti.Enquiry_Id);
                cmd.Parameters.AddWithValue("@traveltype", objcustomerEnti.TravelType_Id);
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
        public DataSet SearchCustomerTravelORPackageDetails(Customer objcustomer)
        {
            ds.Clear();
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("BindCustomerTravelORPackagesInfo", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Travel_Typeid", objcustomer.TravelType_Id);
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
        public static DataSet ExcuteQry(String CommandText)
        {
            SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);

            con.Open();
            SqlCommand cmdObj = new SqlCommand();
            cmdObj.CommandText = CommandText;
            cmdObj.Connection = con;
            SqlDataAdapter daRes = new SqlDataAdapter(cmdObj);
            DataSet dsRes = new DataSet();
            daRes.Fill(dsRes);
            daRes.Dispose();
            cmdObj.Dispose();
            con.Close();
            return (dsRes);
        }
        #endregion
    }
}
