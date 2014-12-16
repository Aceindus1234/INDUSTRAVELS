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
/// Summary description for PackageRegions
/// </summary>
namespace TravelEntities
{
    public class PackageRegions
    {
        public PackageRegions()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #region Variables
        /// <summary>
        /// Package region Details Variables
        /// </summary>

        private int _Region_Id;
        private string _Region_Name;
        private int _Group_Id;

        #endregion

        /// <summary>
        /// Gets or sets the <b>_Group_Id</b> attribute value.
        /// </summary>
        /// <value>The <b>_Group_Id</b> attribute value.</value>
        public int Group_Id
        {
            get { return _Group_Id; }
            set { _Group_Id = value; }
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
        /// Gets or sets the <b>_Region_Name</b> attribute value.
        /// </summary>
        /// <value>The <b>_Region_Name</b> attribute value.</value

        public string Region_Name
        {
            get { return _Region_Name; }
            set { _Region_Name = value; }
        }
    }
}
