using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for insurenceBAL
/// </summary>
public class insurenceBAL
{
	public insurenceBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string insertinsurencedetails(InsurenceProperties objinsprop)
    {

        insurenceDAL objdal = new insurenceDAL();
        return objdal.insertinsurenceinfo(objinsprop);
    
    }

   
}