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
using  TravelEntities;
using TravelBAL;

public partial class Travel_EnquiryForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["TravelConnectionString"]);
    CustomerBal insertobj = new CustomerBal();
    Customer Customerentisobj = new Customer();

    CustomerTravels tEntities = new CustomerTravels();
    TravelDetails TBal = new TravelDetails();
    string Msg = "";
    string ReplyMsg = "";
    string uid;
    Nullable<DateTime> datesample;
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
            string CustomerTravelType = ddlJournyType.SelectedItem.Text;
            string CustomerTravelclass = ddlTravelClass.SelectedItem.Text;
            string CustomerTravelFrom = txtTravelFrom.Text;
            string CustomerTravelTo = txtTravelTo.Text;
            string DepartureDate = txtDepartureDate.Text;
            string ReturnDate = txtReturnDate.Text;
            int NumofPassengers = Convert.ToInt32(ddlAdults.SelectedValue) + Convert.ToInt32(ddlChildrens.SelectedValue) + Convert.ToInt32(ddlInfants.SelectedValue);
            string Remarks = txtSpecialRequest.Text;
            //string Packageid = "";
            var messageId = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
            var travelid = Guid.NewGuid().ToString().Replace("-", string.Empty).Substring(0, 8);
            string Customerid = Convert.ToString(messageId);


            Customerentisobj.Customer_Id = Customerid;
            Customerentisobj.Customer_Fname = txtFName.Text;
            Customerentisobj.Customer_Lname = txtLName.Text;
            Customerentisobj.Customer_Mobile = txtMblNum.Text;
            Customerentisobj.Customer_Emailid = txtEmail.Text;
            Customerentisobj.Customer_Country = txtCountry.Text;
            Customerentisobj.Customer_City = txtCity.Text;
            Customerentisobj.TravelType_Id = 0;
            Customerentisobj.Enquiry_Id = Convert.ToString(travelid);

            if (CustomerTravelType != "Select")
            {
                Customerentisobj.TravelType_Id = 1;
                tEntities.Travel_Id = Convert.ToString(travelid);
                tEntities.Travel_Type = ddlJournyType.SelectedItem.Text;
                tEntities.Travel_Class = ddlTravelClass.SelectedItem.Text;
                tEntities.Travel_From = txtTravelFrom.Text;
                tEntities.Travel_To = txtTravelTo.Text;
                if (ddlJournyType.SelectedItem.Text == "One Way")
                {
                    tEntities.Departure_Date = Convert.ToDateTime(txtDepartureDate.Text);
                    //tEntities.Return_Date = Convert.ToDateTime(default(DateTime?));
                }
                else
                {
                    tEntities.Departure_Date = Convert.ToDateTime(txtDepartureDate.Text);
                    tEntities.Return_Date = Convert.ToDateTime(txtReturnDate.Text);
                }
                tEntities.Num_Passengers = NumofPassengers;
                tEntities.Remarks = txtSpecialRequest.Text;

                uid = TBal.BindTravelDetails(tEntities);
                uid = insertobj.InsertUserDetails(Customerentisobj);

                Msg = Msg + "<table cellpadding='3' cellspacing='15' class='lable2'>";
                Msg = Msg + "<tr><td colspan='3' style='background:url(" + ConfigurationManager.AppSettings["siteurl"] + "images/logo.png) no-repeat;height:87px;width:518px'></td></tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td colspan='3' align='center' class='headings'>Enquiry Information of " + name + " for Travels";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Name</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + name + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Email ID</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerEmailid + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Phone No</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerMobile + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Country</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerCountry + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> City</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerCity + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> TravelType</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerTravelType + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> TravelClass</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerTravelclass + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> TravelFrom</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerTravelFrom + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> TravelTo</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerTravelTo + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> DepartureDate</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + DepartureDate + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> ReturnDate</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + ReturnDate + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Remarks</td>";
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
                Msg = Msg + "<td colspan='3' align='center' class='headings'>Enquiry Information of " + name + " for Travels";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Name</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + name + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Email ID</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerEmailid + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Phone No</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerMobile + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Country</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerCountry + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> City</td>";
                Msg = Msg + "<td>:</td>";
                Msg = Msg + "<td class='lable1'>" + CustomerCity + "</td>";
                Msg = Msg + "</tr>";
                Msg = Msg + "<tr>";
                Msg = Msg + "<td class='lable1'> Remarks</td>";
                Msg = Msg + " <td>:</td>";
                Msg = Msg + "<td class='lable1'>" + Remarks + "</td>";
                Msg = Msg + "</tr></table>";
            }

            ReplyMsg = "<p>Dear Customer,</p><br/><br/>";
            ReplyMsg += "<p>Greetings from Indus Travels & tours!!.</p><br/><br/>";
            ReplyMsg += "<p> We have received your request for Holiday packages with the reference no " + Convert.ToString(travelid) + ".</p><br/><br/>";
            ReplyMsg += "<p>We would like thank you for choosing  the services of our company .and we at Indus travels always been enthusiasm for providing the utmost satisfaction for our valued customer.</p><br/><br/>";
            ReplyMsg += "<p>Our company who has well experienced in their given products will be contacting you shortly to serve you…</p><br/><br/>";

            wwUtils.SendMail(CustomerEmailid, "industravelsindia@yahoo.com", "Enquiry form for Indus Travel.", Msg);
            wwUtils.SendMail("hyd@industravels.com", CustomerEmailid, "Your Travel Reference Id " + Convert.ToString(travelid) + "", ReplyMsg);

            if (uid != null)
            {
                string alertMessage = "alert('Your enquiry form is submited successfully . We will contact or send email you soon...');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", alertMessage, true);
            }
            txtCity.Text = "";
            txtCountry.Text = "";
            txtEmail.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txtMblNum.Text = "";
            txtSpecialRequest.Text = "";
            txtTravelFrom.Text = "";
            txtTravelTo.Text = "";
            txtSpecialRequest.Text = "";
            txtReturnDate.Text = "";
            txtDepartureDate.Text = "";
            ddlAdults.SelectedIndex = 0;
            ddlChildrens.SelectedIndex = 0;
            ddlInfants.SelectedIndex = 0;
            ddlJournyType.SelectedIndex = 0;
            ddlTravelClass.SelectedIndex = 0;

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }
    protected void ddlJournyType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlJournyType.SelectedItem.Text == "One Way")
        {
            tdreturn.Visible = false;
            tdReturnDate.Visible = false;
        }
        else if (ddlJournyType.SelectedItem.Text == "Return")
        {
            tdreturn.Visible = true;
            tdReturnDate.Visible = true;
        }
    }

}