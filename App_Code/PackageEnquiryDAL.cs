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
using System.Text;
using TravelEntities;

/// <summary>
/// Summary description for PackageEnquiryDAL
/// </summary>
namespace TravelDAL
{
    public class PackageDAL
    {
        public PackageDAL()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);
        DataSet ds = new DataSet();

        #region Insert Package Details
        /// <summary>
        /// Insert Package enquiry Details
        /// </summary>
        /// <param name="objBELJobs"></param>
        /// <returns></returns>
        public string InsertPackageEnquiryInformation(Package objPackage)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert_PackageEnquiryDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@Package_ItineraryId", objPackage.Package_ItineraryId1);
                cmd.Parameters.AddWithValue("@Package_Type", objPackage.Package_Type);
                cmd.Parameters.AddWithValue("@Hotel_Type", objPackage.Hoeltype);
                cmd.Parameters.AddWithValue("@NumOfNights", objPackage.Nightscount);
                cmd.Parameters.AddWithValue("@NumOfPassengers", objPackage.PassengersCount);
                cmd.Parameters.AddWithValue("@Meal_Plan", objPackage.Mealplan);
                //cmd.Parameters.AddWithValue("@Meal_Place", objPackage.MealDest);
                cmd.Parameters.AddWithValue("@Remarks", objPackage.Remarks);
                cmd.Parameters.AddWithValue("@Travel_Destination", objPackage.Travel_Dest);

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
        /// Delete Package details
        /// </summary>
        /// <param name="Package_id"></param>
        /// <returns></returns>
        public int DeleteCustomerTPackageDetails(string Package_id)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DeletePackageDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Package_ItineraryId", Package_id);
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
        /// Bind Customer Package Details 
        /// </summary>
        /// <param name="objenquiry"></param>
        /// <returns></returns>
        public DataSet BindCustomerPackageDetails(string objenquiry)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("BindPackageDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Package_ItineraryId", objenquiry);
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
        /// Bind Special Packages 
        /// </summary>
        /// <returns></returns>
        public DataSet BindSpecialPackages(string Package_Id)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("BindSpecialPackages", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Package_Id", Package_Id);
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
        public DataSet BindPackageDetails()
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_BindSPackagesDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //ds = commandexcute(cmd);
            try
            {
                ds = commandexcute(cmd);
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
        public DataSet BindPackageDetails(string param)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_BindSPackagesByName", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@packname", param);            
            try
            {
                ds = commandexcute(cmd);
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
        public DataSet BindItenararyNames(string param)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_BindItenararyPackNames", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PackId", param);
            try
            {
                ds = commandexcute(cmd);
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

        public DataSet commandexcute(SqlCommand cmmd)
        {
            SqlDataAdapter sdaTravels = new SqlDataAdapter();
            sdaTravels.SelectCommand = cmmd;
            sdaTravels.Fill(ds);
            return ds;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="Package_Itineraryid"></param>
        /// <returns></returns>
        public int DeleteSpecialPackageDetails(string Package_Id)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DeleteSpecialPackages", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Package_Id", Package_Id);
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
        /// Bind PackageGroups
        /// </summary>
        /// <returns></returns>
        public DataSet BindPackageGroups()
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_BindPackageGroups", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
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

        //public DataSet holidaytypesxml()
        //{
        //    ds.Clear();

        //    return ds;
        //}
        /// <summary>
        /// Bind PackageRegions for PackageGroups
        /// </summary>
        /// <param name="Package_groupid"></param>
        /// <returns></returns>
        public DataSet BindPackageRegions(int Package_groupid)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_BindPackageRegions", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Group_Id", Package_groupid);
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
        /// Bind PackageGroup Details
        /// </summary>
        /// <param name="Package_Type"></param>
        /// <returns></returns>
        public DataSet BindPackageGroupDetails(string Package_Type)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("BindPackageTypes", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Package_Type", Package_Type);
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
        /// Post PackageItinerary Information
        /// </summary>
        /// <param name="objItinerary"></param>
        /// <returns></returns>
        public string PostPackageItineraryInformation(Package objItinerary)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_PostPackageItineraryDetailsNew", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@PackageItenarary_Id", objItinerary.PackageItenarary_Id);
                cmd.Parameters.AddWithValue("@Itenerary_Type", objItinerary.Package_Type);
                cmd.Parameters.AddWithValue("@Package_Title", objItinerary.Package_Title);
                cmd.Parameters.AddWithValue("@Package_SubTitle", objItinerary.Package_SubTitle);
                cmd.Parameters.AddWithValue("@Description1", objItinerary.Description1);
                cmd.Parameters.AddWithValue("@Description2", objItinerary.Description2);
                cmd.Parameters.AddWithValue("@Description3", objItinerary.Description3);
                //cmd.Parameters.AddWithValue("@Photoname", objItinerary.Photoname);
                //cmd.Parameters.AddWithValue("@PhotoPath", objItinerary.PhotoPath);
                cmd.Parameters.AddWithValue("@Package_Id", objItinerary.Package_Id);
                cmd.Parameters.AddWithValue("@Postdate", objItinerary.Postdate);
                //cmd.Parameters.AddWithValue("@Package_Region", objItinerary.Package_Region);

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
        /// Insert travel package information
        /// </summary>
        /// <param name="objItinerary"></param>
        /// <returns></returns>
        public string InsertTravel_PackageInformation(TravelPackages objItinerary)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_Inserttravel_Packages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@Package_Id", objItinerary.Package_Id);
                cmd.Parameters.AddWithValue("@Region_Id", objItinerary.Region_Id);
                cmd.Parameters.AddWithValue("@Package_Name", objItinerary.Package_Name);
                cmd.Parameters.AddWithValue("@Package_Type", objItinerary.Package_Type);
                cmd.Parameters.AddWithValue("@Cost", objItinerary.Cost);
                cmd.Parameters.AddWithValue("@Description1", objItinerary.Desc1);
                cmd.Parameters.AddWithValue("@Description2", objItinerary.Desc2);
                cmd.Parameters.AddWithValue("@Photoname", objItinerary.Photoname);
                cmd.Parameters.AddWithValue("@PhotoPath", objItinerary.Photopath);
                cmd.Parameters.AddWithValue("@pdate", objItinerary.pdate);
                cmd.Parameters.AddWithValue("@country", objItinerary.country);

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
        /// Insert Itinerary Photos
        /// </summary>
        /// <param name="objItinerary"></param>
        /// <returns></returns>
        public string InsertItinerary_Photos(Package objItinerary)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_InsertItineraryPhotos", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@Itenarary_Id", objItinerary.Itinerary_id);
                cmd.Parameters.AddWithValue("@Itinerary_Photoname", objItinerary.Itinerary_Photoname);
                cmd.Parameters.AddWithValue("@Itinerary_PhotoPath", objItinerary.Itinerary_PhotoPath);

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
        /// Edit or View package details
        /// </summary>
        /// <param name="objItinerary"></param>
        /// <returns></returns>
        public DataSet EditndView_PackageDetails(string Package_Id)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_EditViewSpecialPackages", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@Package_Id", Package_Id);
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
        public DataSet View_ItineraryDetails(string Package_Id)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_EditViewPackageItinerary", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Package_Id", Package_Id);
            try
            {
                ds = commandexcute(cmd);
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
        public DataSet View_ByItineraryId(string PItenarary_Id)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_ByPackageItineraryId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PItenarary_Id", PItenarary_Id);
            try
            {
                ds = commandexcute(cmd);
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
        /// 
        /// </summary>
        /// <param name="objupdate"></param>
        /// <returns></returns>
        public string Update_Packagedetails(TravelPackages objupdate)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_UpdatePackageDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
               
                    cmd.Parameters.AddWithValue("@Package_Id", objupdate.Package_Id);
                    cmd.Parameters.AddWithValue("@cost", objupdate.Cost);
                    cmd.Parameters.AddWithValue("@Description1", objupdate.Desc1);
                    cmd.Parameters.AddWithValue("@Description2", objupdate.Desc2);
                    cmd.Parameters.AddWithValue("@PhotoPath", objupdate.Photopath);
                    cmd.Parameters.AddWithValue("@Photoname", objupdate.Photoname);
                    cmd.Parameters.AddWithValue("@postdate", objupdate.pdate);
                    cmd.Parameters.AddWithValue("@country", objupdate.country);
                    cmd.Parameters.AddWithValue("@Region_Id", objupdate.Region_Id);  

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
        public string Update_Itinerarydetails(Package objupdate)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_UpdateItineraryDetailsNew", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@Package_Id", objupdate.Package_Id);
                cmd.Parameters.AddWithValue("@Package_Type", objupdate.Package_Type);
                cmd.Parameters.AddWithValue("@Package_Title", objupdate.Package_Title);
                cmd.Parameters.AddWithValue("@Package_SubTitle", objupdate.Package_SubTitle);
                cmd.Parameters.AddWithValue("@Description1", objupdate.Description1);
                cmd.Parameters.AddWithValue("@Description2", objupdate.Description2);
                cmd.Parameters.AddWithValue("@Description3", objupdate.Description3);
                cmd.Parameters.AddWithValue("@Postdate", objupdate.Postdate);
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
        public string UpdateItinerary_Photos(Package objItinerary)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Sp_UpdateItineraryPhotos", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@Itenarary_Id", objItinerary.Itinerary_id);
                cmd.Parameters.AddWithValue("@Itinerary_Photoname", objItinerary.Itinerary_Photoname);
                cmd.Parameters.AddWithValue("@Itinerary_PhotoPath", objItinerary.Itinerary_PhotoPath);

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


        #endregion

        public DataSet BindIteneraryPackageGroupDetails(string Itenerary_Type)
        {
            ds.Clear();
            con.Open();
            SqlCommand cmd = new SqlCommand("BindIteneraryPackageTypes", con);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                cmd.Parameters.AddWithValue("@Itenerary_Type", Itenerary_Type);
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

    
    }
}
