<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next6.aspx.cs" Inherits="Next6" %>

<%@ Register Src="~/industravels/new/User Control/travelleftmenu.ascx" TagName="left" TagPrefix="traveleleft" %>
<%@ Register Src="~/industravels/new/User Control/travelright.ascx" TagName="right" TagPrefix="travelright" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="contain">
<traveleleft:left ID ="traveleft1" runat ="server" />
<div class="contain_center">

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Cruises for the Disabled?</p>  
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
* There's no reason not to cruise with a disability on today's ships. The newer and larger ships are generally speaking the most accessible, with more accessible cabins in a variety of cabin categories. However, that's not to say that there are not some smaller and older ships that have limited access or have been retrofitted to accommodate fewer people with disabilities. There are even 1-2 tall sailing ships that are built or retrofitted specifically for those with disabilities (you can be part of the crew). Cruise ships can accommodate wheelchair users, diabetics, dialysis patients, oxygen users, the visually and hearing impaired, those with smoking allergies, and even those traveling with assistance dogs.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
My Favorite Cruise Line  
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*We love to travel with Holland America. The bar and wait staff are from the Philippines and the hotel staff are from Indonesia. I learned how to say 'thank you', 'good morning', and 'good evening' in both languages. The staff reaction was priceless, and the grins couldn't have been larger. Best yet, I got the most overfilled bar drinks, the freshest servings from the grill, and the most individual attention, to the amazement of many other passengers. It pays to be polite.  
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Packing Tips for Your Next Cruise 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*When packing for a cruise add extra metal coat hangers to your suitcase so that you will be able to hang much of your clothes. Also, purchase a child-size shoe hanger. I found one at the dollar store. You can hang this in the bathroom and put lots of little things in it such as toothpaste, hair brushes, mouthwash, etc. This will give you extra space in the bathroom as well as keeping things covered from the excess water which might come from the shower. Happy cruising.
</p>


<div class="next_pages"><ul><li><a href="#">Next</a></li></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>
