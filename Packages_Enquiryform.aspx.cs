using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//using TravelBAL;
////using TravelEntities;
using System.Net.Mail;
//using System.Web.Mail;
using System.Text.RegularExpressions;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using TravelEntities;
using TravelBAL;



public partial class Packages_Enquiryform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    CustomerBal insertobj = new CustomerBal();
    Customer Customerentisobj = new Customer();

     Package objpackageenti = new Package();
     PackageItinerary objPackageBAL = new PackageItinerary();
     string Msg = "";
     string ReplyMsg = "";
    string uid;
    int NumofPassengers;
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Attributes.Add("onclick", "return validate()");
    }
    protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        
        try
        {
            string CustomerFname = txtFName.Text;
            string CustomerLname = txtLName.Text;
            string name = txtFName.Text + " " + txtLName.Text;
            // int CustomerMobile = Convert.ToInt32(txtMblNum.Text);
            string CustomerMobile = txtMblNum.Text;
            string CustomerEmailid = txtEmail.Text;
            string CustomerCountry = txtCountry.Text;
            string CustomerCity = txtCity.Text;
            string PackageType = ddlPackageType.SelectedItem.Text;
            string numNights = txtnumNights.Text;
            string TravelDest = txtDestination.Text;
            string Hotel = ddlHotelType.SelectedItem.Text;
            string meal = ddlMealPlan.SelectedItem.Text;
            //string MealDest = txtMealDestination.Text;
            if (txtPassengers.Text == "" || txtPassengers.Text == null)
            {
                NumofPassengers = 0;
            }
            else
            {
                NumofPassengers = Convert.ToInt32(txtPassengers.Text);
            }
            string Remarks = txtSpecialRequest.Text;
            //string Packageid = "";
            var messageId = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
            var Packageid = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
            string Customerid = Convert.ToString(messageId);


            Customerentisobj.Customer_Id = Customerid;
            Customerentisobj.Customer_Fname = txtFName.Text;
            Customerentisobj.Customer_Lname = txtLName.Text;
            Customerentisobj.Customer_Mobile = txtMblNum.Text;
            Customerentisobj.Customer_Emailid = txtEmail.Text;
            Customerentisobj.Customer_Country = txtCountry.Text;
            Customerentisobj.Customer_City = txtCity.Text;
            Customerentisobj.TravelType_Id = 0;
            Customerentisobj.Enquiry_Id = Convert.ToString(Packageid);

            if (PackageType != null && PackageType != "Select")
            {
                Customerentisobj.TravelType_Id = 2;
                objpackageenti.Package_ItineraryId1 = Convert.ToString(Packageid);
                objpackageenti.Package_Type = PackageType;
                objpackageenti.Travel_Dest = TravelDest;
                objpackageenti.Hoeltype = Hotel;
                objpackageenti.Nightscount = numNights;
                objpackageenti.PassengersCount = NumofPassengers;
                objpackageenti.Mealplan = meal;
                //objpackageenti.MealDest = MealDest;
                objpackageenti.Remarks = Remarks;

                 uid = objPackageBAL.InsertPackageEnquiryDetails(objpackageenti);
                 uid = insertobj.InsertUserDetails(Customerentisobj);

                 Msg = Msg + "<table cellpadding='3' cellspacing='15' class='lable2'>";
                 Msg = Msg + "<tr><td colspan='3' style='background:url(" + ConfigurationManager.AppSettings["siteurl"] + "images/logo.png) no-repeat;height:87px;width:518px'></td></tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td colspan='3' align='center' class='headings'>Enquiry Information of " + name + " for Holiday Packages";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>Name</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + name + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>Email ID</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + CustomerEmailid + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>Phone No</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + CustomerMobile + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>Country</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + CustomerCountry + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>City</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + CustomerCity + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>PackageType</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + PackageType + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>TravelDestination</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + TravelDest + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>HotelType</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + Hotel + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>No. Of Nights</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + numNights + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>No. Of Passengers</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + NumofPassengers + "</td>";
                 Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>MealPlan</td>";
                 Msg = Msg + "<td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + meal + "</td>";
                 Msg = Msg + "</tr>";
                 //Msg = Msg + "<tr>";
                 //Msg = Msg + "<td class='lable1'>MealDestination</td>";
                 //Msg = Msg + "<td>:</td>";
                 //Msg = Msg + "<td class='lable1'>" + MealDest + "</td>";
                 //Msg = Msg + "</tr>";
                 Msg = Msg + "<tr>";
                 Msg = Msg + "<td class='lable1'>Remarks</td>";
                 Msg = Msg + " <td>:</td>";
                 Msg = Msg + "<td class='lable1'>" + Remarks + "</td>";
                 Msg = Msg + "</tr></table>";
            }
            else
            {
              uid = insertobj.InsertUserDetails(Customerentisobj);

              Msg = Msg + "<table cellpadding='3' cellspacing='15' class='lable2'>";
              Msg = Msg + "<tr><td colspan='3' style='background:url(" + ConfigurationManager.AppSettings["siteurl"] + "images/logo.png) no-repeat;height:87px;width:518px'></td></tr>";
              Msg = Msg + "<tr>";
              Msg = Msg + "<td colspan='3' align='center' class='headings'>Enquiry Information of " + name + " for Holiday Packages";
              Msg = Msg + "<tr>";
              Msg = Msg + "<td class='lable1'>Name</td>";
              Msg = Msg + "<td>:</td>";
              Msg = Msg + "<td class='lable1'>" + name + "</td>";
              Msg = Msg + "</tr>";
              Msg = Msg + "<tr>";
              Msg = Msg + "<td class='lable1'>Email ID</td>";
              Msg = Msg + "<td>:</td>";
              Msg = Msg + "<td class='lable1'>" + CustomerEmailid + "</td>";
              Msg = Msg + "</tr>";
              Msg = Msg + "<tr>";
              Msg = Msg + "<td class='lable1'>Phone No</td>";
              Msg = Msg + "<td>:</td>";
              Msg = Msg + "<td class='lable1'>" + CustomerMobile + "</td>";
              Msg = Msg + "</tr>";
              Msg = Msg + "<tr>";
              Msg = Msg + "<td class='lable1'>Country</td>";
              Msg = Msg + "<td>:</td>";
              Msg = Msg + "<td class='lable1'>" + CustomerCountry + "</td>";
              Msg = Msg + "</tr>";
              Msg = Msg + "<tr>";
              Msg = Msg + "<td class='lable1'>City</td>";
              Msg = Msg + "<td>:</td>";
              Msg = Msg + "<td class='lable1'>" + CustomerCity + "</td>";
              Msg = Msg + "</tr>";
              Msg = Msg + "<tr>";
              Msg = Msg + "<td class='lable1'>Remarks</td>";
              Msg = Msg + " <td>:</td>";
              Msg = Msg + "<td class='lable1'>" + Remarks + "</td>";
              Msg = Msg + "</tr></table>";
            }
            ReplyMsg = "<p>Dear Customer,</p><br/><br/>";
            ReplyMsg += "<p>Greetings from Indus Travels & tours!!.</p><br/><br/>";
            ReplyMsg += "<p> We have received your request for Holiday packages with the reference no " + Convert.ToString(Packageid) + ".</p><br/><br/>";
            ReplyMsg += "<p>We would like thank you for choosing  the services of our company .and we at Indus travels always been enthusiasm for providing the utmost satisfaction for our valued customer.</p><br/><br/>";
            ReplyMsg += "<p>Our company who has well experienced in their given products will be contacting you shortly to serve you…</p><br/><br/>";
           
            wwUtils.SendMail(CustomerEmailid, "hyd@industravels.com", "Enquiry form for Indus Holiday Packages.", Msg);
            wwUtils.SendMail("hyd@industravels.com", CustomerEmailid, "Your Package Reference Id " + Convert.ToString(Packageid) + "", ReplyMsg);


            if (uid != null)
            {
                string alertMessage = "alert('Your enquiry form is submited successfully . We will contact or send email you soon...');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", alertMessage, true);
            }
            txtCity.Text = "";
            txtCountry.Text = "";
            txtDestination.Text = "";
            txtEmail.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txtMblNum.Text = "";
            ddlHotelType.SelectedIndex = 0;
            ddlMealPlan.SelectedIndex = 0;
           //txtMealDestination.Text = "";
            txtnumNights.Text = "";
            txtPassengers.Text = "";
            txtSpecialRequest.Text = "";
            ddlPackageType.SelectedIndex = 0;

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }

    }
    

}