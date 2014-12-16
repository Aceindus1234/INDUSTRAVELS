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
/// Summary description for Customer
/// </summary>
namespace TravelEntities
{
    public class Customer
    {
        public Customer()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #region Variables
        /// <summary>
        /// Customer Enquiry Variables
        /// </summary>
        private string _Customer_Id;
        private string _Customer_Fname;
        private string _Customer_Lname;
        private string _Customer_Mobile;
        private string _Customer_Emailid;
        private string _Customer_Country;
        private string _Customer_City;
        private int _Travel_Typeid;
        private string _Enquiry_Id;
        private DateTime _postdate;

       

        #endregion

        /// <summary>
        /// Gets or sets the <b>_Customer_Id</b> attribute value.
        /// </summary>
        /// <value>The <b>_Customer_Id</b> attribute value.</value>
        public string Customer_Id
        {
            get
            {
                return _Customer_Id;
            }
            set
            {
                _Customer_Id = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Customer_Fname</b> attribute value.
        /// </summary>
        /// <value>The <b>_Customer_Fname</b> attribute value.</value>
        public string Customer_Fname
        {
            get
            {
                return _Customer_Fname;
            }
            set
            {
                _Customer_Fname = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Customer_Lname</b> attribute value.
        /// </summary>
        /// <value>The <b>_Customer_Lname</b> attribute value.</value>
        public string Customer_Lname
        {
            get
            {
                return _Customer_Lname;
            }
            set
            {
                _Customer_Lname = value;
            }
        }
        /// <summary>
        /// Gets or sets the <b>_Customer_Mobile</b> attribute value.
        /// </summary>
        /// <value>The <b>_Customer_Mobile</b> attribute value.</value>
        public string Customer_Mobile
        {
            get
            {
                return _Customer_Mobile;
            }
            set
            {
                _Customer_Mobile = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Customer_Emailid</b> attribute value.
        /// </summary>
        /// <value>The <b>_Customer_Emailid</b> attribute value.</value>
        public string Customer_Emailid
        {
            get
            {
                return _Customer_Emailid;
            }
            set
            {
                _Customer_Emailid = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Customer_Country</b> attribute value.
        /// </summary>
        /// <value>The <b>_Customer_Country</b> attribute value.</value>
        public string Customer_Country
        {
            get
            {
                return _Customer_Country;
            }
            set
            {
                _Customer_Country = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Customer_City</b> attribute value.
        /// </summary>
        /// <value>The <b>_Customer_City</b> attribute value.</value>
        public string Customer_City
        {
            get
            {
                return _Customer_City;
            }
            set
            {
                _Customer_City = value;
            }
        }
        /// <summary>
        /// Gets or sets the <b>_Travel_Id</b> attribute value.
        /// </summary>
        /// <value>The <b>_Travel_Id</b> attribute value.</value>
        public int TravelType_Id
        {
            get
            {
                return _Travel_Typeid;
            }
            set
            {
                _Travel_Typeid = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Package_Id</b> attribute value.
        /// </summary>
        /// <value>The <b>_Package_Id</b> attribute value.</value>
        public string Enquiry_Id
        {
            get
            {
                return _Enquiry_Id;
            }
            set
            {
                _Enquiry_Id = value;
            }
        }
        /// Gets or sets the <b>_postdate</b> attribute value.
        /// </summary>
        /// <value>The <b>_postdate</b> attribute value.</value>
        /// </summary>
        public DateTime Postdate
        {
            get 
            { 
                return _postdate; 
            }
            set 
            {
                _postdate = value; 
            }
        }

    }
}
