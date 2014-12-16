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
/// Summary description for TravelPackages
/// </summary>
namespace TravelEntities
{
    public class TravelPackages
    {
        public TravelPackages()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #region Variables
        /// <summary>
        /// Travel Package Details Variables
        /// </summary>
        /// 
        private string _Package_Name;
        private string _Package_Type;
        private double _cost;
        private string _Package_Id;
        private int _Region_Id;
        private string _Desc1;
        private string _Desc2;
        private string _Photoname;
        private string _Photopath;
        private DateTime _pdate;
        private string _country;


        #endregion

        /// <summary>
        /// Gets or sets the <b>_Package_Id</b> attribute value.
        /// </summary>
        /// <value>The <b>_Package_Id</b> attribute value.</value>
        public string Package_Id
        {
            get
            {
                return _Package_Id;
            }
            set
            {
                _Package_Id = value;
            }
        }

        /// <summary>
        /// Gets or sets the <b>_Package_Type</b> attribute value.
        /// </summary>
        /// <value>The <b>_Package_Type</b> attribute value.</value

        public string Package_Type
        {
            get { return _Package_Type; }
            set { _Package_Type = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Package_Name</b> attribute value.
        /// </summary>
        /// <value>The <b>_Package_Name</b> attribute value.</value

        public string Package_Name
        {
            get { return _Package_Name; }
            set { _Package_Name = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_cost</b> attribute value.
        /// </summary>
        /// <value>The <b>_cost</b> attribute value.</value

        public double Cost
        {
            get { return _cost; }
            set { _cost = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Region_Id</b> attribute value.
        /// </summary>
        /// <value>The <b>_Region_Id</b> attribute value.</value

        public int Region_Id
        {
            get { return _Region_Id; }
            set { _Region_Id = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Desc1</b> attribute value.
        /// </summary>
        /// <value>The <b>_Desc1</b> attribute value.</value
        public string Desc1
        {
            get { return _Desc1; }
            set { _Desc1 = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Desc2</b> attribute value.
        /// </summary>
        /// <value>The <b>_Desc2</b> attribute value.</value
        public string Desc2
        {
            get { return _Desc2; }
            set { _Desc2 = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Photoname</b> attribute value.
        /// </summary>
        /// <value>The <b>_Photoname</b> attribute value.</value
        public string Photoname
        {
            get { return _Photoname; }
            set { _Photoname = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_Photopath</b> attribute value.
        /// </summary>
        /// <value>The <b>_Photopath</b> attribute value.</value
        public string Photopath
        {
            get { return _Photopath; }
            set { _Photopath = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_pdate</b> attribute value.
        /// </summary>
        /// <value>The <b>_pdate</b> attribute value.</value
        public DateTime pdate
        {
            get { return _pdate; }
            set { _pdate = value; }
        }
        /// <summary>
        /// Gets or sets the <b>_pdate</b> attribute value.
        /// </summary>
        /// <value>The <b>_pdate</b> attribute value.</value
        public string country
        {
            get { return _country; }
            set { _country = value; }
        }

    }
}
