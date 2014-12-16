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
/// Summary description for CustomerTravels
/// </summary>
namespace TravelEntities
{
    public class CustomerTravels
    {
        public CustomerTravels()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #region Variables
        /// <summary>
        /// Customer TravelDetails Variables
        /// </summary>
        private string _Travel_Id;
        private string _Travel_Type;
        private string _Travel_Class;
        private string _Travel_From;
        private string _Travel_To;
        private DateTime _Departure_Date;
        private DateTime _Return_Date;
        private int _Num_Passengers;
        private string _Remarks;

        #endregion


        /// <summary>
        /// Gets or sets the <b>_Travel_Id</b> attribute value.
        /// </summary>
        /// <value>The <b>_Travel_Id</b> attribute value.</value>
        public string Travel_Id
        {
            get
            {
                return _Travel_Id;
            }
            set
            {
                _Travel_Id = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Travel_Type</b> attribute value.
        /// </summary>
        /// <value>The <b>_Travel_Type</b> attribute value.</value>

        public string Travel_Type
        {
            get { return _Travel_Type; }
            set { _Travel_Type = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Travel_Class</b> attribute value.
        /// </summary>
        /// <value>The <b>_Travel_Class</b> attribute value.</value>

        public string Travel_Class
        {
            get { return _Travel_Class; }
            set { _Travel_Class = value; }
        }

        /// <summary>
        /// Gets or sets the <b>_Travel_From</b> attribute value.
        /// </summary>
        /// <value>The <b>_Travel_From</b> attribute value.</value>

        public string Travel_From
        {
            get { return _Travel_From; }
            set { _Travel_From = value; }
        }

        /// <summary>
        /// Gets or sets the <b>_Travel_To</b> attribute value.
        /// </summary>
        /// <value>The <b>_Travel_To</b> attribute value.</value>

        public string Travel_To
        {
            get { return _Travel_To; }
            set { _Travel_To = value; }
        }

        /// <summary>
        /// Gets or sets the <b>_Departure_Date</b> attribute value.
        /// </summary>
        /// <value>The <b>_Departure_Date</b> attribute value.</value>

        public DateTime Departure_Date
        {
            get { return _Departure_Date; }
            set { _Departure_Date = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Return_Date</b> attribute value.
        /// </summary>
        /// <value>The <b>_Return_Date</b> attribute value.</value>

        public DateTime Return_Date
        {
            get { return _Return_Date; }
            set { _Return_Date = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Num_Passengers</b> attribute value.
        /// </summary>
        /// <value>The <b>_Num_Passengers
        /// </b> attribute value.</value>

        public int Num_Passengers
        {
            get { return _Num_Passengers; }
            set { _Num_Passengers = value; }
        }

        /// <summary>
        /// Gets or sets the <b>_Remarks</b> attribute value.
        /// </summary>
        /// <value>The <b>_Remarks
        /// </b> attribute value.</value>

        public string Remarks
        {
            get { return _Remarks; }
            set { _Remarks = value; }
        }
    }
}
