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
/// Summary description for PackageGroup
/// </summary>
namespace TravelEntities
{
    public class PackageGroup
    {
        public PackageGroup()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #region Variables
        /// <summary>
        /// Package Details Variables
        /// </summary>

        private int _Group_Id;
        private string _PackageGroups;

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
        /// Gets or sets the <b>_PackageGroups</b> attribute value.
        /// </summary>
        /// <value>The <b>_PackageGroups</b> attribute value.</value>

        public string PackageGroups
        {
            get { return _PackageGroups; }
            set { _PackageGroups = value; }
        }
    }
}
