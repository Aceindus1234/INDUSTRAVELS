<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Travel.aspx.cs" Inherits="industravels_new_Travel" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH10" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF10" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL10" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR10" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Travel-Abroad::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
<script type="text/javascript">
$(document).ready(function(){

  $("#fir").click(function(){
    $("#div2,#div3,#div4,#mDiv2,#div5,#div6,#div7").hide();
    $("#mDiv1,#div1").show();

      $("#sec,#thi,#four,#fiv,#six,#sev").removeClass("act");
     $("#fir").addClass("act");
  });
  $("#sec").click(function(){
     $("#div1,#div3,#div4,#mDiv2,#div5,#div6,#div7").hide();    
     $("#mDiv1,#div2").show();
     
     $("#fir,#thi,#four,#fiv,#six,#sev").removeClass("act");
     $("#sec").addClass("act");
     
  });
   $("#thi").click(function(){   
    $("#div2,#div1,#div4,#mDiv2,#div5,#div6,#div7").hide();    
     $("#mDiv1,#div3").show();
           
     $("#fir,#sec,#four,#fiv,#six,#sev").removeClass("act");
     $("#thi").addClass("act");
  });
  $("#four").click(function(){

      $("#div2,#div3,#div1,#mDiv2,#div5,#div6,#div7").hide(); 
     $("#mDiv1,#div4").show();
     
      $("#fir,#sec,#thi,#fiv,#six,#sev").removeClass("act");
     $("#four").addClass("act");
  });
  $("#fiv").click(function(){
   
   $("#div2,#div3,#div1,#mDiv1,#div4,#div6,#div7").hide();    
     $("#mDiv2,#div5").show();
     
      $("#fir,#sec,#thi,#four,#six,#sev").removeClass("act");
     $("#fiv").addClass("act");
  });
  $("#six").click(function(){   
    $("#div2,#div3,#div1,#mDiv1,#div5,#div4,#div7").hide();    
     $("#mDiv2,#div6").show();
     
      $("#fir,#secn,#thi,#four,#fiv,#sev").removeClass("act");
     $("#six").addClass("act");
  });
  
});
</script>
<style type="text/css">
.next_pages ul li span:hover,.next_pages ul li span.act
{
	cursor:pointer;
	color:Red;
	text-decoration:underline;	
}
.hrl{border:1px solid #CBC6C4;}
.pstyle{color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif;  
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;}
.undl{text-decoration:underline;}
.hclass{color:#5d5d5d; font-size:15px; font-family:Arial, Helvetica, sans-serif;  
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;}
/*.banner
{
	margin-top:8px;
}*/
</style>


</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH10:Head ID="THead10" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL10:Left ID="TLeft10" runat="server" />  
    </td>
    <td valign="top" class="col">    
   <div class="contain_center">
  <div id="mDiv1"  >
<h1 class="hclass">TRAVEL TIPS </h1>

<hr  class="hrl" />
</div>
 <div  id="div1" >
<p class="pstyle">
AIR TRAVEL 
</p>
<p class="pstyle undl">
Have Details When You Need Them new 
</p>
<p class="pstyle">
* Have a typed copy of all passport numbers with issue dates and expiry dates and dates of birth of children - so that you do not need to get out your passports or other documents when going through customs etc. You have the info. to complete the numerous forms without having to show where you keep your documents. Also, take a spare photo of all your family members to enable you to comply with any immigration or visa needs.
</p>
<br />
<p class="pstyle undl">
A Little Preparation ... 
</p>
<p class="pstyle">
*I find that a combination of several common tips goes a long way toward preventing flying problems, or at least making them more tolerable. I go with one carry-on, make sure it's a little smaller than the minimum size, bring my own food and drink onto the plane, bring at least one good book if not two, eat in the airport before the flight, and get to the airport a little early. I've never had to check a bag, and I've never had missing or damaged luggage. 
I've never been bored during flight delays. I've never been hungry or thirsty on flights. A little preparation goes a long way.
</p>
<br />

<p class="pstyle">
*If you do come down with discomfort, one relatively easy but embarrassing way to feel better is to empty your stomach. 'Barf bags'
 are usually located in the pouch on the back of the seat in front of you. Frequently, using them reduces and/or eliminates the discomfort.</p>

<p class="pstyle undl">
Advance Attention to Safety 
</p>
<p class="pstyle">
*When boarding the aircraft, make a mental note of all exits, and count how many seat rows you pass
Unlike Bonine, another over-the-counter drug, it tends to make one drowsy. I feel that this is a benefit on a long plane ride! Another motion sickness treatment (usually used for boating) is Scopolamine patches. These patches go behind the ear, and usually have no noticeable side effects. I believe that in the USA, a prescription is required. Furthermore,
 there can be unpleasant side effects, such as dry mouth, blurry vision, and one other one that forget. (Oh yeah - loss of memory.) 
</p>
<br />
<p class="pstyle">
* Motion sickness is caused in part by a discrepancy between what the eye sees and what the inner ear feels. (This is why the driver of a car gets sick much less frequently than a passenger: the driver is continuously watching the road, getting a good idea of what is coming next.) It may help to close your eyes the moment you start to consider thinking about getting airsick.
</p>

<p class="pstyle undl">
Allow for Delays Between Flights 
</p>
<p class="pstyle">
*Avoid booking flight segments close together. Major airlines consider a connection as tight as 35 minutes to be a valid connection, but this is often not enough time if there are long lines at security! If travel time is not critical, consider allowing at least 2 hours to make each connection.
</p>
</div>
<div id="div2" style="display:none"> 

<p class="pstyle">
*If you are not delayed, you can use this slack time to eat at the airport, where the food is likely many times better than what you may (or may not!) get in the air. (Most major American airports do not require a re-screening if you are merely changing flights, as long as you don't leave the secure area.)
</p>
<br />
<p class="pstyle undl">
Baggage Care and Attention 
</p>

<p class="pstyle">
* When you claim your bag at the airport, check it over before you leave the bag claim area.Look for any new damage on the bag, and to be sure that it was not opened and something taken (airlines have time limits for when these can be reported, and they will need to see the damage before opening the claim for damage or pilferage). The baggage service desk for the airline is normally right in the claim area; this is also true for Customs arrivals.
 It is especially important to fill out the misplaced baggage information before leaving Customs, 
as Customs will have special forms that may help the baggage clear without your presence at the airport. 
If you have combination locks or keys for the baggage, these should be left with the paperwork for your baggage - as it will prevent delays in getting your bag or possible bag damage from Customs opening the bag.
</p>
<br />
<p class="pstyle undl">
Christmas Traveling Tips 
</p>
<p class="pstyle">
*Before you leave, call the airline and reconfirm your flight(s) and leave a phone number where you can be reached. Once you arrive at your destination, contact the airline again and reconfirm your return flight and leave a phone number where you can be reached.
</p>

<p class="pstyle">
*We don’t care what anyone tells you, it is important to reconfirm your flights. Way too many air travelers have had way too many trips interrupted or ruined by airline schedule changes, lost reservations or reservation errors than anyone in the airline / travel industry will ever admit! Trust us on this one folks! Reconfirm! Reconfirm! Reconfirm! Get to the airport early (2 1/2 hours before domestic flights and 3 1/2 hours before international flights).
If you are planning to carry-on gifts, make sure they are unwrapped, or they will be unwrapped for you at security. 
</p>
<br />
<p class="pstyle undl">
Getting the Meal You Want 
</p>

<p class="pstyle">
*  On long international flights, there are usually one or more meals served and two meal choices to select from. If the flight is crowded and you are one of the last passengers served, you can bet your choice of meal won't be available. This can be a problem if you're on a long flight and the only meal selection available is something you don't like.
</p>

<p class="pstyle">
*To ensure your choice is available, when you check in request a seat toward the back of the plane as the meal service tends to start there. Or better yet, request a special meal such as children's or vegetarian when you book your travel. You'll get the meal of your choice and be served first.
</p>
</div>
<div id="div3" style="display:none" >
<p class="pstyle undl">
Hurricane Season Cruises new </p>
<p class="pstyle">
*If you're planning a Caribbean cruise from June through November you should know that you will be cruising during hurricane season. Why would you choose to cruise during hurricane season? Price is one reason. Typically your best deals are during the fall months from late August to mid December.
</p>

<p class="pstyle">
*  Statistically speaking, the chance that your particular cruise is going to be affected by a hurricane is slim. However, it does happen. Cruising during these months requires you to be flexible. Itineraries can be disrupted by even the mere threat of a storm. Usually the cruise line whose Eastern Caribbean itinerary appears to be in the path of the storm will simply switch over to the Western Caribbean schedule and vice versa.
 If the cruise line can't find a port, then the ship spends those days at sea. You will not get a refund for the missed ports of call, as the cruise lines reserve the right to change the itinerary.
 The cruise lines' strategy has always been to avoid a storm, and they have specific hurricane storm emergency response plans to help them do this.
</p>
<br />
<p class="pstyle">
*Best thing to do if you're cruising during this time is to plan ahead. Arrive at the port of embarkation at least one day prior to departure in case difficulties arise, especially if you're cruising out of Florida. Also prepare for the possibility that you might arrive home a day or two late. The ship will wait out at sea if the hurricane is threatening Florida.
</p>
<p class="pstyle">
*Buy insurance, whether through the cruise line or an independent provider - and make sure that the policy covers disruption in case of weather-related events. If the cruise is actually canceled, you will get a refund. However, it's very rare for the cruise lines to cancel a cruise
</p>
<p class="pstyle">
* We travelled on a South Pacific cruise in mid-January [summer].
The first item I bought on day one was a warm jumper (mistake). No matter what time of year or destination, it gets cold out on the ocean - especially when the wind springs up. Pack something warm to wear! When buying duty-free alcohol or cigarettes while in port, be aware that the goods will be sent to the ship and held until your last night aboard. 
</p>

<p class="pstyle">
*  When choosing a deck, it is a good idea to be close to the laundry and purser's office. You can get in early to do your washing [there'll be a line up]. The PO is usually busy and you may need to go there multiple times for various reasons. 
</p>
<br />
<p class="pstyle undl">
Beware of Cheap Excursions 
</p>
<p class="pstyle">
*Although you may find the shore excursions cheaper through local sources compared to the cruise lines excursions desks, you may end up stranded - or at the least taken advantage of. The cruise lines check out the companies they contract with, and you are much safer using one recommended by the cruise line or a company your travel agent is familiar with.
</p>

<p class="pstyle undl">
Removable Hooks a Useful Item 
</p>
<p class="pstyle">
*In addition to taking a bunch of wire hangers, I take 2 of the 3M removeable plastic hooks. They are useful in the bathroom and come off without leaving a mark.
</p>
</div>
<div id="div4" style="display:none" >
<p class="pstyle undl">
Cruises for the Disabled?</p>  
<p class="pstyle">
* There's no reason not to cruise with a disability on today's ships. The newer and larger ships are generally speaking the most accessible, with more accessible cabins in a variety of cabin categories. However, that's not to say that there are not some smaller and older ships that have limited access or have been retrofitted to accommodate fewer people with disabilities. 
There are even 1-2 tall sailing ships that are built or retrofitted specifically for those with disabilities (you can be part of the crew). Cruise ships can accommodate wheelchair users, diabetics, 
dialysis patients, oxygen users, the visually and hearing impaired, those with smoking allergies, and even those traveling with assistance dogs.
</p>

<p class="pstyle undl">
My Favorite Cruise Line  
</p>
<p class="pstyle">
*We love to travel with Holland America. The bar and wait staff are from the Philippines and the hotel staff are from Indonesia. I learned how to say 'thank you', 'good morning', and 'good evening' in both languages. The staff reaction was priceless, and the grins couldn't have been larger. Best yet, I got the most overfilled bar drinks, the freshest servings from the grill, and the most individual attention, to the amazement of many other passengers. It pays to be polite.  
</p>

<p class="pstyle undl">
Packing Tips for Your Next Cruise 
</p>
<p class="pstyle">
*When packing for a cruise add extra metal coat hangers to your suitcase so that you will be able to hang much of your clothes. Also, purchase a child-size shoe hanger. I found one at the dollar store. You can hang this in the bathroom and put lots of little things in it such as toothpaste, hair brushes, mouthwash, etc. This will give you extra space in the bathroom as well as keeping things covered from the excess water which might come from the shower. Happy cruising.
</p>
<p class="pstyle undl">
Time in Port May Not be Long Enough  
<p class="pstyle">
*We just returned from an 18-day cruise. We booked late, within the last week, and online. The itinerary quoted was 'ports of call' only. The duration at several ports of call was merely hours: 6 hours shortest, 8 hours longest. Not long enough to see anything UNLESS you splurge on the expensive tours. Traveller beware - check the time in port carefully, we would have enjoyed the trip more if we had more than a few hours in port.
</p>

<p class="pstyle undl">
Seasick?  
</p>
<p class="pstyle">
* I'm a travel consultant, and have been for 10 years. Over the years people have asked me, 'I get seasick; what is the best category for me?' Most people think the higher up you go the better, and I always had a hard time explaining it to them; but one day I was watching a storm come in and was looking at the trees - and that is how I got this idea. I now tell people a ship is like a tree. When the wind blows and the tree is moving, where is the most motion? - at the top of the tree. 
The lower part of the tree is hardly moving at all. This has worked very well for me, and I have never received a complaint yet! 
</p>
<p class="pstyle undl">
Stencil Your Luggage!  
</p>
<p class="pstyle">
*I used to use ribbons or tape around the handles of our luggage, but so did everybody else.
 I purchased a stencil and a small pot of stencil paint from our local hardware store and stencilled every piece of our luggage with the same design.
<%--  On our last cruise, our various pieces stood out from all the others. 
  The chance that anyone else will have the exact same design in the exact same colours are remote.--%>
</p>
</div>
<div id="mDiv2" style="display:none">
<h1 class="hclass">
FOREIGN TRAVEL</h1>
<hr  class="hrl" />
</div>
<div id="div5" style="display:none">
 
<p class="pstyle">
*Be sure to consult travel medicine experts before engaging in international travel! Immunizations and prescriptions for preventative medications can help to ensure a healthy trip.
</p> 
<br /> 
<p class="pstyle undl">
Avoid Voice Mail Problems
</p>

<p class="pstyle">
*Don't assume you will be able to tap into your voice mail from foreign pushbutton phones. Telephones have 'accents' and what works in the U.S. may not work from England. Have a back-up plan in place or take a portable tone-imitator.
</p>
<br />
<p class="pstyle undl">
Be Organized  
</p>

<p class="pstyle">
While in any country that you can't read the language ... and you are using your charge card to get the best currency rate ... 
</p>
<br />
<p class="pstyle">
*write on the charge slip right away the amount, items, date, and place of purchase so YOU can read it when the statement comes at the end of the month. Makes for a lot easier bookkeeping. Many times the ink is so faint, you can't read what it says in any language.
</p>
<p class="pstyle undl">Be Safe - Drink Bottled Water </p>
<p class="pstyle">* Unless you are traveling to Canada from the US, it is usually not safe to drink the water. The water is safe to the locals who are used to it.</p>

<p class="pstyle">
*This doesn't matter if you're a resident of Ukraine of the UK - to residents the water is safe, but not to travelers. All water contains different sets of microbes and mineral deposits, even in the US. If you aren't used to a country's drinking water, then you may get sick just because it is different. Be safe, buy bottled water cheap at the supermarket.
</p> 
<br /> 
<p class="pstyle undl">
Cheaper Rail Passes 
</p>

<p class="pstyle">
*When traveling in Europe, it is cheaper to buy individual rail passes if you are only going to one or two countries, instead of buying a Eurail pass that covers eighteen. The individual one, such as the Swiss Pass or the France Rail/Drive, can give you much more for a better price.
</p>
<p class="pstyle undl">
Check Your Room Before You Decide to Stay  
</p>

<p class="pstyle">
*When traveling to many third world countries, before paying for a room, make sure to look at the room first. Along the same lines, take a quick tour of the hotel before deciding to stay. Even though some of the hotels may be nice on the outside, what is on the inside is not always up to your standards.
</p>
</div>
<div id="div6" style="display:none">


<p class="pstyle">
*write on the charge slip right away the amount, items, date, and place of purchase so YOU can read it when the statement comes at the end of the month. Makes for a lot easier bookkeeping. Many times the ink is so faint, you can't read what it says in any language.
</p>
<p class="pstyle undl">Check Your Room Before You Decide to Stay </p>
<p class="pstyle">*  When traveling to many third world countries, before paying for a room, make sure to look at the room first. Along the same lines, take a quick tour of the hotel before deciding to stay.</p>
<p class="pstyle undl">
Need Directions? 
</p> 

<p class="pstyle">
*When visiting a foreign city, carry a matchbook or postcard with the name and address of your hotel, which you can show to taxi drivers or when asking directions. This is particularly important in countries like Greece, where the alphabet is different.
</p>
<br />
<p class="pstyle undl">
Pack Items to Give Away
</p>

<p class="pstyle">
*I've been working as a guide for 18 years. When I've taken folks to developing countries they kind heartedly wanted to give money or candy to the local children. Over the years I've returned to places where a traveler used to be able to wander down a street and not be swarmed by children begging for sweets or change, whereas now that has changed.
</p>
<br />
<p class="pstyle undl">
Sample Local Foods 
</p>

<p class="pstyle">
*While traveling to foreign countries, make sure you try the local foods - and please do not compare everything to home (prices, quality etc.) because you are not home.
</p>
<br />
<p class="pstyle undl">Use Credit Cards When Possible  </p>
<p class="pstyle">*  You will get the best exchange rate for foreign currency from an ATM. If you must have local money on arrival, exchange only as much as you will need at the airport on departure or arrival,then use ATMs while you are in the country. </p>
</div>

<div class="next_pages " style="position:absolute; top:585px"><ul><li>Pages :</li>
<li><span id="fir" class="act">1</span></li>
<li><span id="sec">2</span></li>
<li><span id="thi">3</span></li>
<li><span id="four">4</span></li>
<li><span id="fiv">5</span></li>
<li><span id="six">6</span></li>
<%--<li><span id="sev">7</span></li>
<li><a href="next8.html" id="eig">8</a></li>
<li><a href="next9.html" id="nin">9</a></li>
<li><a href="next10.html" id="ten">10</a></li>--%></ul></div> 
</div>
    </td>
    <td valign="top">
     <TraR10:Right ID="TRight10" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF10:Foot ID="TFoot10" runat="server" />
    </td></tr>
    </table>
 </div>
    
    </form>
</body>
</html>

