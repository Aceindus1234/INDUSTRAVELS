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
/// Summary description for CustomerBal
/// </summary>
namespace TravelBAL
{
    
    public class CustomerBal
    {
        CustomerDal objUserDAL = new CustomerDal();
        public CustomerBal()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        
        DataSet dsBal = new DataSet();
        #region Insert CustomerInformationDetails
        /// <summary>
        /// Insert UserDetails
        /// </summary>
        /// <param name="objUserBEL"></param>
        /// <returns></returns>
        public string InsertUserDetails(Customer objUserDetails)
        {

            try
            {
                return objUserDAL.InsertUserInformation(objUserDetails);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //objUserDAL = null;
            }
        }
        public DataSet Bind_CustomerDetails()
        {
            dsBal.Clear();
            try
            {
                dsBal = objUserDAL.BindCustomerDetails();
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
        public DataSet Bind_CustomerTravelndToursDetails(Customer objUserDetails)
        {
            dsBal.Clear();
            try
            {
                dsBal = objUserDAL.BindCustomerTravelndToursDetails(objUserDetails);
                return dsBal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //objUserDAL = null;
            }
        }
        public int Delete_CustomerTravelORPackageDetails(Customer DeleteUserDetails)
        {
            try
            {
                
                return objUserDAL.DeleteCustomerTravelORPackageDetails(DeleteUserDetails);

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //objUserDAL = null;
            }
        }
        public DataSet Search_CustomerTravelORPackageDetails(Customer objUserDetails)
        {
            dsBal.Clear();
            try
            {
                dsBal = objUserDAL.SearchCustomerTravelORPackageDetails(objUserDetails);
                return dsBal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               // objUserDAL = null;
            }
        }

        #endregion
    }
}
