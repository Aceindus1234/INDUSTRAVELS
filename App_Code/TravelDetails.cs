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
/// Summary description for TravelDetails
/// </summary>

namespace TravelBAL
{
    public class TravelDetails
    {
        public TravelDetails()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #region Insert TravelInformationDetails
        /// <summary>
        /// Insert UserDetails
        /// </summary>
        /// <param name="objUserBEL"></param>
        /// <returns></returns>
        public string BindTravelDetails(CustomerTravels objTravelDetails)
        {
            TravelInfo objinfo = new TravelInfo();
            try
            {
                return objinfo.InsertTravelInformation(objTravelDetails);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                objinfo = null;
            }
        }
        #endregion

    }
}
