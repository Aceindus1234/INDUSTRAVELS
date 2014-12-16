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

/// <summary>
/// Summary description for Package
/// </summary>
namespace TravelEntities
{
    public class Package
    {
        public Package()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #region Variables

        /// Package enquiry variables
        private string Package_ItineraryId;
        private string _Package_Type;
        private string _Travel_Dest;
        private string _Hoeltype;
        private string _Nightscount;
        private int _PassengersCount;
        private string _Mealplan;
        //private string _MealDest;
        private string _Remarks;

        private string _Packmainid;       
        #endregion

        #region Variables

        /// Package Itinerary variables

        private string _PackageItenarary_Id;
        private string _Itenerary_Type;
        private string _Package_Title;
        private string _Package_SubTitle;
        private string _Description1;
        private string _Description2;
        private string _Description3;
        private string _Itinerary_Photoname;
        private string _Itinerary_PhotoPath;
        private string _Itinerary_id;
        private string _Package_Id;
        private DateTime _Postdate;
        // private string _Package_Region;
        #endregion

        #region Variables

        ///Travel Package variables

        //private string _Region_Id;
        //private int _cost;
        //private string _Package_Name;



        #endregion
        /// <summary>
        /// Gets or sets the <b>Package_Id</b> attribute value.
        /// </summary>
        public string Packmainid
        {
            get { return _Packmainid; }
            set { _Packmainid = value; }
        }
        /// <summary>
        /// Gets or sets the <b>Package_ItineraryId</b> attribute value.
        /// </summary>
        /// <value>The <b>Package_ItineraryId</b> attribute value.</value>
        public string Package_ItineraryId1
        {
            get { return Package_ItineraryId; }
            set { Package_ItineraryId = value; }
        }

       
        /// <summary>
        /// Gets or sets the <b>_Hoeltype</b> attribute value.
        /// </summary>
        /// <value>The <b>_Hoeltype</b> attribute value.</value>
        public string Hoeltype
        {
            get { return _Hoeltype; }
            set { _Hoeltype = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Travel_Dest</b> attribute value.
        /// </summary>
        /// <value>The <b>_Travel_Dest</b> attribute value.</value>
        public string Travel_Dest
        {
            get { return _Travel_Dest; }
            set { _Travel_Dest = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Nightscount</b> attribute value.
        /// </summary>
        /// <value>The <b>_Nightscount</b> attribute value.</value>
        public string Nightscount
        {
            get { return _Nightscount; }
            set { _Nightscount = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_PassengersCount</b> attribute value.
        /// </summary>
        /// <value>The <b>_PassengersCount</b> attribute value.</value>
        public int PassengersCount
        {
            get { return _PassengersCount; }
            set { _PassengersCount = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Package_Type</b> attribute value.
        /// </summary>
        /// <value>The <b>_Package_Type</b> attribute value.</value>
        public string Package_Type
        {
            get { return _Package_Type; }
            set { _Package_Type = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Mealplan</b> attribute value.
        /// </summary>
        /// <value>The <b>_Mealplan</b> attribute value.</value>
        public string Mealplan
        {
            get { return _Mealplan; }
            set { _Mealplan = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_MealDest</b> attribute value.
        /// </summary>
        /// <value>The <b>_MealDest</b> attribute value.</value>
        //public string MealDest
        //{
        //    get { return _MealDest; }
        //    set { _MealDest = value; }
        //}
        /// <summary>
        /// Gets or sets the <b>_Remarks</b> attribute value.
        /// </summary>
        /// <value>The <b>_Remarks</b> attribute value.</value>
        public string Remarks
        {
            get { return _Remarks; }
            set { _Remarks = value; }
        }
        /// <summary>
        /// Itinerary Photopath
        /// </summary>
        public string Itinerary_PhotoPath
        {
            get { return _Itinerary_PhotoPath; }
            set { _Itinerary_PhotoPath = value; }
        }
        /// <summary>
        /// Itenary Packageid
        /// </summary>      

        public string Package_Id
        {
            get { return _Package_Id; }
            set { _Package_Id = value; }
        }
        /// <summary>
        /// Itinerary id
        /// </summary>
        public string PackageItenarary_Id
        {
            get { return _PackageItenarary_Id; }
            set { _PackageItenarary_Id = value; }
        }
        /// <summary>
        /// Itinerary Type
        /// </summary>
        public string Itenerary_Type
        {
            get { return _Itenerary_Type; }
            set { _Itenerary_Type = value; }
        }
        /// <summary>
        /// PAckage Title
        /// </summary>
        public string Package_Title
        {
            get { return _Package_Title; }
            set { _Package_Title = value; }
        }
        /// <summary>
        /// Package subtitle
        /// </summary>
        public string Package_SubTitle
        {
            get { return _Package_SubTitle; }
            set { _Package_SubTitle = value; }
        }
        /// <summary>
        /// Description1
        /// </summary>
        public string Description1
        {
            get { return _Description1; }
            set { _Description1 = value; }
        }
        /// <summary>
        /// Description2
        /// </summary>
        public string Description2
        {
            get { return _Description2; }
            set { _Description2 = value; }
        }
        public string Description3
        {
            get { return _Description3; }
            set { _Description3 = value; }
        }
        /// <summary>
        /// Photoname
        /// </summary>
        public string Itinerary_Photoname
        {
            get { return _Itinerary_Photoname; }
            set { _Itinerary_Photoname = value; }
        }
        /// <summary>
        /// Itinerary_id
        /// </summary>
        public string Itinerary_id
        {
            get { return _Itinerary_id; }
            set { _Itinerary_id = value; }
        }
        /// <summary>
        /// Posted Date
        /// </summary>
        public DateTime Postdate
        {
            get { return _Postdate; }
            set { _Postdate = value; }
        }
        // ///<summary>
        ///// Package_Region
        ///// </summary>
        //public string Package_Region
        //{
        //    get { return _Package_Region; }
        //    set { _Package_Region = value; }
        //}
        ///// <summary>
        ///// Travel Package Region_Id
        ///// </summary>
        //public string Region_Id
        //{
        //    get { return _Region_Id; }
        //    set { _Region_Id = value; }
        //}
        ///// <summary>
        ///// Travel Package Package_Name
        ///// </summary>
        //public string Package_Name
        //{
        //    get { return _Package_Name; }
        //    set { _Package_Name = value; }
        //}
        ///// <summary>
        ///// Travel Package Cost
        ///// </summary>
        //public int Cost
        //{
        //    get { return _cost; }
        //    set { _cost = value; }
        //}

    }
}
