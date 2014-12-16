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
using TravelEntities;
using TravelDAL;

/// <summary>
/// Summary description for PackageItinerary
/// </summary>
namespace TravelBAL
{
    public class PackageItinerary
    {
        public PackageItinerary()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        PackageDAL objUserDAL = new PackageDAL();
        DataSet dsBal = new DataSet();
        #region Insert PackageItineraryDetails
        /// <summary>
        /// Insert UserDetails
        /// </summary>
        /// <param name="objUserBEL"></param>
        /// <returns></returns>
        public string InsertPackageEnquiryDetails(Package objPackageEnti)
        {
            PackageDAL objPackageDAL = new PackageDAL();
            try
            {

                return objPackageDAL.InsertPackageEnquiryInformation(objPackageEnti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               
            }
        }
        /// <summary>
        /// Insert PackageItineraryDetails
        /// </summary>
        /// <param name="objPackageEnti"></param>
        /// <returns></returns>
        public string InsertPackageItineraryDetails(Package objPackageEnti)
        {
            PackageDAL objPackageDAL = new PackageDAL();
            try
            {

                return objPackageDAL.PostPackageItineraryInformation(objPackageEnti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               
            }
        }
        /// <summary>
        /// Insert Package TravelDetails
        /// </summary>
        /// <param name="objPackageEnti"></param>
        /// <returns></returns>
        public string InsertPackage_TravelDetails(TravelPackages objPackageEnti)
        {
            PackageDAL objPackageDAL = new PackageDAL();
            try
            {
                return objPackageDAL.InsertTravel_PackageInformation(objPackageEnti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               
            }
        }
        /// <summary>
        /// Insert Itinerary Photos
        /// </summary>
        /// <param name="objPackageEnti"></param>
        /// <returns></returns>
        public string Insert_ItineraryPhotos(Package objPackageEnti)
        {
            PackageDAL objPackageDAL = new PackageDAL();
            try
            {

                return objPackageDAL.InsertItinerary_Photos(objPackageEnti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               
            }
        }
        public DataSet Bind_PackageDetails()
        {
            dsBal.Clear();
            try
            {
                dsBal = objUserDAL.BindPackageDetails();
                return dsBal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                
            }
        }
        public DataSet Bind_PackageDetails(string packname)
        {
            dsBal.Clear();
            try
            {
                dsBal = objUserDAL.BindPackageDetails(packname);
                return dsBal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }
        public string PackageDetails_Update(TravelPackages objPackageEnti)
        {
            PackageDAL objPackageDAL = new PackageDAL();
            try
            {

                return objPackageDAL.Update_Packagedetails(objPackageEnti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               
            }
        }
        public string PackageItineraryDetails_Update(Package objPackageEnti)
        {
            PackageDAL objPackageDAL = new PackageDAL();
            try
            {

                return objPackageDAL.Update_Itinerarydetails(objPackageEnti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               
            }
        }
        public string Update_ItineraryPhotos(Package objPackageEnti)
        {
            PackageDAL objPackageDAL = new PackageDAL();
            try
            {

                return objPackageDAL.UpdateItinerary_Photos(objPackageEnti);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               
            }
        }

        public DataSet binditernarydetails(string objPackageEnti)
        {
            //dsBal.Clear();
            try
            {
                dsBal = objUserDAL.BindIteneraryPackageGroupDetails(objPackageEnti);
                return dsBal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }


        #endregion

      
    }
}
