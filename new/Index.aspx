<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>::Indus Travels::</title>
<!-- text sliders input -->
    <link href="http://arthurgouveia.com/prettyCheckable/css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="style1.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="http://google-code-prettify.googlecode.com/svn/trunk/src/prettify.css">
    
    <script src="textslider/jquery.min.js"></script>
    <script src="textslider/bootstrap-transition.js"></script>
    <script src="textslider/bootstrap-modal.js"></script>
    <script src="textslider/bootstrap-tab.js"></script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-35059120-1']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>

<!-- datepicker -->
 <link  rel="stylesheet"  href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css"  />
 <script  src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script  src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script  type="text/javascript">
    $(function () {
        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();
        $('#datepicker').datepicker({
            minDate: new Date(currentYear, currentMonth, currentDate)
        });
        $('#datepicker1').datepicker({
            minDate: new Date(currentYear, currentMonth, currentDate)
        });
        $('#datepicker2').datepicker({
            minDate: new Date(currentYear, currentMonth, currentDate)
        });
        $('#datepicker3').datepicker({
            minDate: new Date(currentYear, currentMonth, currentDate)
        });

    });
</script>
<!-- datepicker -->

<!-- Add text box -->
  <script type="text/javascript">

      /* document.getElementById('add').addEventListener('click', function (event) {

      event.preventDefault();
      var select = document.getElementById('select').cloneNode(true);
      document.getElementById('form').appendChild(select);
           

      }, false);*/
      $(document).ready(function () {

          var counter = 2;

          $("#addButton").click(function () {

              if (counter < 0) {
                  alert("Only 10 textboxes allow");
                  return false;
              }

              var newTextBoxDiv = $(document.createElement('div'))
	     .attr("id", 'TextBoxDiv' + counter);

              newTextBoxDiv.after().html('<select style="background:#f6f6f6; width:200px; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666;  height:30px; border:1px #CCC solid; border-radius:4px; left:10px; top:10px; position:relative; clear:both; padding-left:10px; padding-bottom:2px;">  name="select' + counter +
	      '" id="select' + counter + '" > <option>Bangalore, India (BLR) </option><option>New Delhi, India (DEL)</option><option> Mumbai, India (BOM)</option> <option> Goa, India (GOI)</option><option>Chennai, India (MAA)</option><option> Kolkata, India (CCU)</option> <option>  Hyderabad, India (HYD)</option><option> Pune, India (PNQ)</option><option>  Ahmedabad, India (AMD)</option></select>' +


		  '<select style="background:#f6f6f6; width:200px;  height:30px; font-size:12px;  color:#666; font-family:Arial, Helvetica, sans-serif; border:1px #CCC solid; border-radius:4px; left:110px; top:10px; position:relative; clear:both; padding-left:10px; padding-bottom:2px;">  name="select' + counter +
	      '" id="select' + counter + '" > <option>Bangalore, India (BLR) </option><option>New Delhi, India (DEL)</option><option> Mumbai, India (BOM)</option> <option> Goa, India (GOI)</option><option>Chennai, India (MAA)</option><option> Kolkata, India (CCU)</option> <option>  Hyderabad, India (HYD)</option><option> Pune, India (PNQ)</option><option>  Ahmedabad, India (AMD)</option></select>'
	      );

              newTextBoxDiv.appendTo("#TextBoxesGroup");

              counter++;
          });
          $("#removeButton").click(function () {
              if (counter == 1) {
                  alert("No more textbox to remove");
                  return false;
              }

              counter--;

              $("#TextBoxDiv" + counter).remove();

          });
      });

    </script>

<!-- Add text box end -->

<!-- text sliders input -->
<style type="text/css">
<!-- text effects -->
div.selectBox
			{
				position:relative;
				display:inline-block;
				cursor:default;
				text-align:left;
				line-height:30px;
				clear:both;
				color:#888;
			}
			span.selected
			{
				width:167px;
				text-indent:20px;
				border:1px solid #ccc;
				border-right:none;
				border-top-left-radius:5px;
				border-bottom-left-radius:5px;
				background:#f6f6f6;
				overflow:hidden;
			}
			

			span.selectArrow
			{
				width:30px;
				border:1px solid #ccc;
				border-top-right-radius:5px;
				border-bottom-right-radius:5px;
				text-align:center;
				font-size:20px;
				-webkit-user-select: none;
				-khtml-user-select: none;
				-moz-user-select: none;
				-o-user-select: none;
				user-select: none;
				background:#f6f6f6;
			}
			
			span.selectArrow,span.selected
			{
				position:relative;
				float:left;
				height:30px;
				z-index:1; color:#666;
			}
			
			div.selectOptions
			{
				position:absolute;
				top:165px;
				left:10;
				width:200px;
				border:1px solid #ccc;
				border-bottom-right-radius:5px;
				border-bottom-left-radius:5px;
				overflow:hidden;
				background:#f6f6f6;
				padding-top:2px;
				display:none;
				z-index:3;
				overflow:scroll;
				height:200px;
			}
				
			span.selectOption
			{
				display:block;
				width:80%;
				line-height:20px; padding-left:16px;
/*				padding:5px 10%; 
*/			}
			
			span.selectOption:hover
			{
				color:#f6f6f6;
				background:#4096ee;	
			}	
<!-- text effects -->

.current1 {
	border-top:4px solid #ff3100;
	height:21px;
	margin-top:-5px;
	width:30px;	
}
</style>

<script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>

<!-- text effects -->
	<script type='text/javascript'><!--
	    $(document).ready(function () {
	        enableSelectBoxes();
	    });

	    function enableSelectBoxes() {
	        $('div.selectBox').each(function () {
	            $(this).children('span.selected').html($(this).children('div.selectOptions').children('span.selectOption:first').html());
	            $(this).attr('value', $(this).children('div.selectOptions').children('span.selectOption:first').attr('value'));

	            $(this).children('span.selected,span.selectArrow').click(function () {
	                if ($(this).parent().children('div.selectOptions').css('display') == 'none') {
	                    $(this).parent().children('div.selectOptions').css('display', 'block');
	                }
	                else {
	                    $(this).parent().children('div.selectOptions').css('display', 'none');
	                }
	            });

	            $(this).find('span.selectOption').click(function () {
	                $(this).parent().css('display', 'none');
	                $(this).closest('div.selectBox').attr('value', $(this).attr('value'));
	                $(this).parent().siblings('span.selected').html($(this).html());
	            });
	        });
	    }//-->
		</script>
        
<!-- text effects -->

<link href="style.css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" /><link href="css/tab.css" type="text/css" rel="stylesheet" /><link rel="stylesheet" href="css/page.css" media="screen" /><link rel="stylesheet" href="css/theme-metallic.css" /><link href="css/menu.css" rel="stylesheet" type="text/css" />
    <!-- menu -->
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <!-- slider -->
    <link rel="stylesheet" type="text/css" href="css/nivo-slider.css" />
    <!-- slider -->
    <link href="css/lightbox.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/bookflip.js"></script>
    <link rel="stylesheet" href="css/roundedw.css" /><link href="css/style-notification.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui.min.js" type="text/javascript"></script> 
    <script src="js/jquery.min-1.8.js" type="text/javascript"></script>
    <link href="css/interactive_map.css" rel="stylesheet" type="text/css" />  
    <!-- tab  -->   
    <script src="js/prettify.js" type="text/javascript"></script>
    <script src="js/interactive_map.js" type="text/javascript"></script>
    <script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            hideDiv();

        });

        function hideDiv() {
            $('#detail_container').hide();
        } 
    </script>
    

    <script type="text/javascript">
        //google analytic script
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-43171533-1', 'riya.travel');
        ga('send', 'pageview');
        //end of google analytic script
    </script>
    <script type="text/javascript">
        //footer elements applying css class javascript 
        function getdatalist() {
            $("#dl_mainfooter tr td:last").find("div").removeClass("box_first");
            $("#dl_mainfooter tr td:last").find("div").addClass("box_last");
        }
        // end of footer elements applying css class javascript 
        //script for opening winter collection lightbox
        function openlightbox() {
            $("#div_ebrotable").show();
            $("#fadeebro").show();

            $('html, body').animate({ scrollTop: '0px' }, 100);
        }
        //end of script for opening winter collection lightbox
        //script for closing winter collection lightbox
        function Closelightbox() {
            $("#div_ebrotable").hide();

            $("#fadeebro").hide();

        }
        //end of script for opening winter collection lightbox
        //script for opening winter collection lightbox on fadeclick
        $("#fadeebro").click(function () {

            openlightbox();

        })
        //end of script for opening winter collection lightbox on fadeclick
    </script>
    <script type="text/javascript">
        //script to show/hide footercontent
        jQuery(function ($) {
            var slide = false;
            var height = $('#footer_content').height();
            $('.hideshowfooter').click(function () {
                var docHeight = $(document).height();
                var windowHeight = $(window).height();
                var scrollPos = docHeight - windowHeight + height;
                $('#footer_content').animate({ height: "toggle" }, 1000);
                if (slide == false) {
                    $("#footer_button").text("Hide");
                    if ($.browser.opera) {
                        $('html').animate({ scrollTop: scrollPos + 'px' }, 1000);
                    } else {
                        $('html, body').animate({ scrollTop: scrollPos + 'px' }, 1000);
                    }
                    slide = true;
                } else {
                    $("#footer_button").text("Show");
                    slide = false;
                }
            });
        });
        //end of script to show/hide footercontent
    </script>
     <script type="text/javascript">
         $(function () {
             blinkeffect('.summer-collection');
         })
         function blinkeffect(selector) {
             $(selector).fadeOut('slow', function () {
                 $(this).fadeIn('slow', function () {
                     blinkeffect(this);
                 });
             });
         }
    </script>

    <script type="text/javascript">
        //script to apply active class for menues
        $(function () {
            var path = location.pathname.substring(1);
            if (path)
                $('.cssmenu_main').find('li:first').removeClass('active');

            $('.cssmenu_main a[href$="' + path + '"]').parents('li').each(function () {
                $('a[href="' + path + '"]').parent('li').removeClass('active');
                $(this).find('a:first').parent('li').addClass('active');
                //  $(this).find('a:first').parent('li').addClass('active');
            });
        });

        //end of script to apply active class for menues
    </script>
    <script type="text/jscript">
        $(document).ready(function () {
            $('.downbar').delay(1000).fadeIn(400).addClass('up');
            $('.jquery-bar').hide().delay(5000).slideDown(400);
            $('.jquery-arrow').click(function () {
                $('.downbar').toggleClass('up', 400);
                $('.jquery-bar').slideToggle();
            });
            $('.jquery-arrow-cross').click(function () {
                $('.jquery-bar').hide();
                $('.downbar').toggleClass('up', 400);

            });

        });
	
    </script>
    <!-- mouseflowcode script -->
    <script type="text/javascript">
        var _mfq = _mfq || [];
        (function () {
            var mf = document.createElement("script"); mf.type = "text/javascript"; mf.async = true;
            mf.src = "//cdn.mouseflow.com/projects/bd06f5d2-7e1e-4dc9-8fc5-d642cc7fb5dc.js";
            document.getElementsByTagName("head")[0].appendChild(mf);
        })();
    </script>
    <!-- end of mouseflowcode script -->
     
    <link type="text/css" href="menu/menu.css" rel="stylesheet" />

</head>

<body onLoad="prettyPrint()" data-twttr-rendered="true">
 <form id="form1" runat="server">
<div id="wrapperclass">
<div class="logo">
<div class="inner">
<p style="color:#c40909; font-family:'Segoe UI'; font-size:16px;  margin-top:0px; font-weight:bold; margin-left:1025px; width:207px;">USA : 703-574-3278</p>
<p style="color:#c40909; font-family:'Segoe UI'; font-size:16px; top:-10px; font-weight:bold; margin-left:996px; width:212px; margin-top:-5px;">IND : +91 406-673-6226</p>
</div><!--inner-->
</div><!--logo-->
<div class="menu" style="padding-top:-10px;">
<ul>
<li class="current" style="border-top:4px solid #ff3100; margin-top:-10px; padding-top:5px;"><a href="index.html">HOME</a></li>   
<li><a href="Company.aspx">COMPANY </a></li>    
<li><a href="Careers.aspx">CAREERS </a></li>      
<li><a href="Product.aspx">PRODUCTS & SERVICES</a></li>       
<li><a href="Curises.aspx">CRUISES </a></li>      
<li><a href="Maps.aspx">MAPS </a></li>      
<li><a href="Special.aspx">SPECIAL OFFERS</a></li>     
<li><a href="Airfare.aspx">AIRFARE QUOTE</a></li> 	
<li><a href="Forms.aspx">FORMS</a></li>     
<li><a href="Travel.aspx">TRAVEL IDEAS</a></li>   
<li><a href="Visittoaustralia.aspx"> VISAS</a>
<ul style="left:930px;">
      <li> <a href="#"> Visit To India </a> </li>
      <li> <a href="#"> Visit To USA </a> </li>
       <li> <a href="#"> Visit To Australia </a> </li>
        <li> <a href="#">Visit To UK </a> </li>
    </ul>
</li>     
<li><a href="contact.html">CONTACT </a></li>
</ul>
</div><!--menu-->
<div class="menu_bellow">
<p style="color:#f4e5e5; font-size:14px; font-family:'Segoe UI'; line-height:31px;
margin-left:85px; float:left;"><span style="color:#f6ff00; font-size:14px; font-family:Segoe UI; font-weight:bold;">Register</span> for <span style="color:#ffffff; font-size:14px; font-family:'Segoe UI'; font-weight:bold;">Quick Book</span> & get up to $ 500 off on flights & hotels </p>
<div class="social_networks">
<li><a href="#"><img src="images/folloewr.png" style="margin-top:10px;"/></a></li>
<li><a href="#"><img src="images/fb.png" style="margin-top:5px; margin-left:5px;"/></a></li>
<li><a href="#"><img src="images/in.png" style="margin-top:5px; margin-left:5px;" /></a></li>
<li><a href="#"><img src="images/twiter.png"  style="margin-top:5px; margin-left:5px;"/></a></li>
</div><!--social_networks-->
</div><!--menu_bellow-->
<div class="banner">
<!--<a href="javascript:gotoshow()"><img src="images/banner.jpg" name="slide" border=0 width=1280 height=257></a>
<script>
<!--

//configure the paths of the images, plus corresponding target links
slideshowimages("images/banner.jpg","images/banner_02.jpg","images/banner_03.jpg","images/banner_04.jpg","images/banner_05.jpg","images/banner_06.jpg")


var slideshowspeed=2000

var whichlink=0
var whichimage=0
function slideit(){
if (!document.images)
return
document.images.slide.src=slideimages[whichimage].src
whichlink=whichimage
if (whichimage<slideimages.length-1)
whichimage++
else
whichimage=0
setTimeout("slideit()",slideshowspeed)
}
slideit()
</script>
//-->
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1289" height="257" id="FlashID3" title="newflash">
  <param name="movie" value="images/text1_flash.swf" />
  <param name="quality" value="high" />
  <param name="wmode" value="opaque" />
  <param name="swfversion" value="6.0.65.0" />
  <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
  <param name="expressinstall" value="Scripts/expressInstall.swf" />
  <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
  <!--[if !IE]>-->
  <object type="application/x-shockwave-flash" data="images/text1_flash.swf" width="1280" height="256">
    <!--<![endif]-->
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="6.0.65.0" />
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
    <div>
      <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
      <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
    </div>
    <!--[if !IE]>-->
  </object>
  <!--<![endif]-->
</object>
</div><!---->
<div class="banner_billow">
<div class="billow_left" style="height:330px;">
<div class="head">
<div class="Tickets">
<span style="text-align:center; font-size:16px; font-family:Arial, Helvetica, sans-serif; color:#ffffff; line-height:30px;margin-left:20px; font-weight:bold; ">Book Your Tickets</span>
</div><!--tickets-->
<div class="flight"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:28px;
line-height:28px;">Flights</p></div>
<div class="hotal"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:28px;
line-height:28px;">Hotels</p></div>
<div class="holides"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:27px;
line-height:28px;">Holidays</p></div>
<div class="flight_hotal"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:28px;
line-height:28px;">Flight+Hotels</p></div>
</div><!--head-->
<div>
<p style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#002073; margin-left:34px; font-weight:bold; margin-top:10px; width:400px;">Book Domestic & International</p></div>
<div class="text">

</div><!--text-->

<!-- new ticket style -->
      <div class="row" style="width:630; height:250px;">

        <div class="span12" style="width:630px; height:250px;">

          <ul class="nav nav-tabs" id="documentation">
            <li class="active"><a href="http://arthurgouveia.com/prettyCheckable/#options" data-toggle="tab"> One Way</a></li>
            <li><a href="http://arthurgouveia.com/prettyCheckable/#inline-options" data-toggle="tab"> Round Trip </a></li>
            <li><a href="http://arthurgouveia.com/prettyCheckable/#methods" data-toggle="tab">Multi City / Stop Over</a></li>
          </ul>

          <div class="tab-content" style="height:200px; overflow:hidden;">
            <div class="tab-pane active" id="options">

          <table style="width:620px; height:200px;" cellpadding="0" cellspacing="0" align="left">

<tr style="width:300px; height:auto; float:left;">
<td>
<p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From: <span style="margin-left:261px; color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;"> </span></p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; "> 
<asp:DropDownList ID ="ddlselect" runat ="server" Width="200" >
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
 
</td>
</tr>



<tr style="width:300px; height:auto; float:left;">
<td> <p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:10px;"> To: </p></td>
</td>

<td style="width:300px; height:auto; float:left; margin-left:10px;"> 
<asp:DropDownList ID ="ddl2" runat ="server" Width="200">
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Departure </td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p><!-- <input type="text" placeholder=" Select Date" id="datepicker" style="width:80px; height:20px; border:1px solid #ccc;
				border-radius:5px;
				background:#f6f6f6;">-->
                <asp:TextBox ID ="txt1" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Return</td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p> <!--<input type="text" placeholder=" Select Date" style="width:80px; height:20px; border:1px solid #ccc;
				border-radius:5px; background:#f6f6f6;">-->
                <asp:TextBox ID ="txt2" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Adult </td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddladult" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:120px; height:auto; float:left;">
<td style="width:120px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Children (2-12 yrs)</td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlchilren" runat ="server" BackColor="#f6f6f6" Width="85" Height="31">
<asp:ListItem Value="0" Text="1"></asp:ListItem>
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Infant (0-2 yrs)</td>
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlInfra" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="0" Text="1"></asp:ListItem>
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:6px; margin-top:10px;">Class </td>

<td style="width:100px; height:auto; float:left; margin-left:-7px; margin-top:5px;"> 
<asp:DropDownList ID ="ddlclass" runat ="server" BackColor="#f6f6f6" Width="105" Height="31">
<asp:ListItem Value="0" Text="Economy"></asp:ListItem>
<asp:ListItem Value="1" Text="Business"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>



<tr style="width:300px; height:auto; float:right;margin-top:10px; ">
<td>
<asp:Button ID ="btnflight" runat ="server" CssClass="button" Text="Flight + Hotel Combo" PostBackUrl="http://industravels.net/industravels/new"/>
<!--<div class="button" style="margin-left:-10px;">Flight + Hotel Combo

</div>-->
</p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; margin-top:10px;">
</td>

</tr>

<tr style="width:300px; height:auto; float:right;">
<td>
<!--<div class="button22">Search Flights </div>
</p>-->
<asp:Button ID ="btnsearch" runat ="server" CssClass="button22" Text="Search Flights" PostBackUrl="http://industravels.net/industravels/new" />
</td>

</tr>


</table>

            </div>
            <div class="tab-pane" id="inline-options">

             <table style="width:620px; height:200px;" cellpadding="0" cellspacing="0" align="left">

<tr style="width:300px; height:auto; float:left;">
<td>
<p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From: <span style="margin-left:261px; color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;"> </span></p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; "> 
<asp:DropDownList ID ="ddlround1" runat ="server" Width="200" >
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>

</td>
</tr>



<tr style="width:300px; height:auto; float:left;">
<td> <p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:10px;"> To: </p></td></td>

<td style="width:300px; height:auto; float:left; margin-left:10px;"> 

<asp:DropDownList ID ="ddlround2" runat ="server" Width="200" >
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Departure </td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p><!-- <input type="text" placeholder=" Select Date" id="datepicker1" style="width:80px; height:20px; border:1px solid #ccc;
				border-radius:5px;
				background:#f6f6f6;">-->
                <asp:TextBox ID ="txtround1" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Return</td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p><!-- <input type="text" placeholder=" Select Date" id="datepicker2" style="width:80px; height:20px; border:1px solid #ccc;
				border-radius:5px; background:#f6f6f6;">-->
                <asp:TextBox ID ="txtround2" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Adult </td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlroundadult" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
<!--<div class='selectBox'>
			<span class='selected' style="width:45px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-1px;">&#9660</span>
                   
			<div class="selectOptions" style="width:73px; margin-top:95px;">
				<span class="selectOption" value="Option 1">  1 </span>
				<span class="selectOption" value="Option 2">  2 </span>
				<span class="selectOption" value="Option 3"> 3 </span>
                
                <span class="selectOption" value="Option 1"> 4 </span>
				<span class="selectOption" value="Option 2"> 5  </span>
				<span class="selectOption" value="Option 3">  6 </span>
                
                <span class="selectOption" value="Option 1"> 7   </span>
				<span class="selectOption" value="Option 2"> 8 </span>
				<span class="selectOption" value="Option 3"> 9  </span>
                
                <span class="selectOption" value="Option 1">10 </span>
				<span class="selectOption" value="Option 2"> 11   </span>
				<span class="selectOption" value="Option 3">12  </span>
                <span class="selectOption" value="Option 2"> 13  </span>
				<span class="selectOption" value="Option 3"> 14  </span>
                
			</div>
		</div>-->
</td>
</tr>

<tr style="width:120px; height:auto; float:left;">
<td style="width:120px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Children (2-12 yrs)</td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<!--<div class='selectBox'>
			<span class='selected' style="width:45px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-1px;">&#9660</span>
                   
			<div class="selectOptions" style="width:73px; margin-top:95px;">
                <span class="selectOption" value="Option 1"> 0 </span>
				<span class="selectOption" value="Option 1"> 1 </span>
				<span class="selectOption" value="Option 2">  2  </span>
				<span class="selectOption" value="Option 3"> 3  </span>
                
                <span class="selectOption" value="Option 1"> 4</span>
				<span class="selectOption" value="Option 2"> 5 </span>
				<span class="selectOption" value="Option 3"> 6 </span>
                
                <span class="selectOption" value="Option 1"> 7  </span>
				<span class="selectOption" value="Option 2"> 8 </span>
				<span class="selectOption" value="Option 3"> 9</span>
                
                <span class="selectOption" value="Option 1">10 </span>
				<span class="selectOption" value="Option 2"> 11 </span>
				<span class="selectOption" value="Option 3"> 12</span>
                <span class="selectOption" value="Option 2"> 13</span>
				<span class="selectOption" value="Option 3"> 14 </span>
                
			</div>
		</div>-->
<asp:DropDownList ID="ddlroundchildren" runat ="server" BackColor="#f6f6f6" Width="85" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Infant (0-2 yrs)</td>
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlroundInfant" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
<!--<div class='selectBox'>
			<span class='selected' style="width:45px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-1px;">&#9660</span>
                   
			<div class="selectOptions" style="width:73px; margin-top:95px;">
                <span class="selectOption" value="Option 1"> 0 </span>
				<span class="selectOption" value="Option 1">  1 </span>
				<span class="selectOption" value="Option 2">  2</span>
				<span class="selectOption" value="Option 3">3 </span>
                
                <span class="selectOption" value="Option 1"> 4  </span>
				<span class="selectOption" value="Option 2"> 5</span>
				<span class="selectOption" value="Option 3">  6</span>
                
                <span class="selectOption" value="Option 1">7  </span>
				<span class="selectOption" value="Option 2"> 8</span>
				<span class="selectOption" value="Option 3">9</span>
                
                <span class="selectOption" value="Option 1">10</span>
				<span class="selectOption" value="Option 2"> 11</span>
				<span class="selectOption" value="Option 3"> 12</span>
                <span class="selectOption" value="Option 2">  13</span>
				<span class="selectOption" value="Option 3"> 14 </span>
                
			</div>
		</div>-->
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:6px; margin-top:10px;">Class </td>

<td style="width:100px; height:auto; float:left; margin-left:-7px; margin-top:5px;"> 
<asp:DropDownList ID="ddlroundclass" runat ="server" BackColor="#f6f6f6" Width="105" Height="31">
<asp:ListItem Value="1" Text="Economy"></asp:ListItem> 
<asp:ListItem Value="2" Text="Business"></asp:ListItem> 
</asp:DropDownList>
<!--<div class='selectBox'>
			<span class='selected' style="width:95px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-32px; margin-left:70px;">&#9660</span>
                   
			<div class="selectOptions" style="width:95px; margin-top:95px; height:100px;">
                <span class="selectOption" value="Option 1"> <p style=" margin-left:-5px;">Economy </p> </span>
				<span class="selectOption" value="Option 1"> <p style=" margin-left:-5px;"> Business </p> </span>
				
			</div>
		</div>-->
</td>
</tr>



<tr style="width:300px; height:auto; float:right; ">
<td>
<!--<div class="button" style="margin-left:-10px;">Flight + Hotel Combo</div>-->
<asp:Button ID ="btnroundflight" runat ="server" CssClass="button11" Text="Flight + Hotel Combo" PostBackUrl="http://industravels.net/industravels/new" />
</p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; margin-top:10px;">
</td>

</tr>

<tr style="width:300px; height:auto; float:right;">
<td>
<!--<div class="button22">Search Flights </div>-->
<asp:Button ID ="btnround1" runat ="server" CssClass="button22" Text="Search Flights" PostBackUrl="http://industravels.net/industravels/new" />
</p></td>

</tr>


</table>

            </div>
            <div class="tab-pane" id="methods">

              <table style="width:620px; height:200px;" cellpadding="0" cellspacing="0" align="left">

<tr style="width:600px;  height:100px; overflow-y:scroll; float:left; border:1px #CCC solid; border-radius:4px; left:15px; position:relative; clear:both; padding-left:10px; padding-bottom:2px;">
<td>


 <div id='TextBoxesGroup'  style="position:relative; clear:both;">
 <!-- add text -->
 <table cellpadding="0px;" cellspacing="0px;" style="width:550px;">
<tr style="width:300px; height:auto; float:left;">
<td>
<p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From: <span style="margin-left:261px; color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;"> </span></p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px;"> 
<!--<div class='selectBox'>
			<span class='selected' style="padding-top:4px; height:26px; "></span>
			<span class='selectArrow'>&#9660</span>
                   
			<div class="selectOptions" style="margin-top:-102px; overflow-y:scroll">
				<span class="selectOption" value="Option 1"> <p style="padding-top:2px;">Bangalore, India (BLR) </p> </span>
				<span class="selectOption" value="Option 2"> <p style="padding-top:2px;"> New Delhi, India (DEL)</p> </span>
				<span class="selectOption" value="Option 3"><p style="padding-top:2px;"> Mumbai, India (BOM) </p> </span>
                
                <span class="selectOption" value="Option 1"> <p style="padding-top:2px;"> Goa, India (GOI)</p> </span>
				<span class="selectOption" value="Option 2"> <p style="padding-top:2px;"> Chennai, India (MAA) </p> </span>
				<span class="selectOption" value="Option 3"> <p style="padding-top:2px;">  Kolkata, India (CCU)</p> </span>
                
                <span class="selectOption" value="Option 1"> <p style="padding-top:2px;"> Hyderabad, India (HYD)</p> </span>
				<span class="selectOption" value="Option 2"><p style="padding-top:2px;">  Pune, India (PNQ)</p></span>
				<span class="selectOption" value="Option 3"> <p style="padding-top:2px;"> Ahmedabad, India (AMD) </p> </span>
                
			</div>
		</div>-->
<asp:DropDownList ID ="ddlmulcity" runat ="server" Width="200">
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr style="width:200px; height:auto; float:left;">
<td> <p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:10px;"> To: </p></td></td>
</td>

<td style="width:200px; height:auto; float:left; margin-left:10px;"> 
<!--<div class='selectBox'>
			<span class='selected' style="padding-top:4px; height:26px;"></span>
			<span class='selectArrow'>&#9660</span>
                   
			<div class="selectOptions"  style="margin-top:-102px; overflow-y:scroll">
				<span class="selectOption" value="Option 1"> <p style="padding-top:2px;">Bangalore, India (BLR) </p> </span>
				<span class="selectOption" value="Option 2"> <p style="padding-top:2px;"> New Delhi, India (DEL)</p> </span>
				<span class="selectOption" value="Option 3"><p style="padding-top:2px;"> Mumbai, India (BOM) </p> </span>
                
                <span class="selectOption" value="Option 1"> <p style="padding-top:2px;"> Goa, India (GOI)</p> </span>
				<span class="selectOption" value="Option 2"> <p style="padding-top:2px;"> Chennai, India (MAA) </p> </span>
				<span class="selectOption" value="Option 3"> <p style="padding-top:2px;">  Kolkata, India (CCU)</p> </span>
                
                <span class="selectOption" value="Option 1"> <p style="padding-top:2px;"> Hyderabad, India (HYD)</p> </span>
				<span class="selectOption" value="Option 2"><p style="padding-top:2px;">  Pune, India (PNQ)</p></span>
				<span class="selectOption" value="Option 3"> <p style="padding-top:2px;"> Ahmedabad, India (AMD) </p> </span>
                
			</div>
		</div>-->
<asp:DropDownList ID ="ddlmulcityfrom" runat ="server" Width="200">
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>
 </table>
	</div>

</span> 
	<div id="TextBoxesGroup"> 
<!-- adding styles -->
<div id="addButton" style="float:left; top:4px; padding:10px;">
<input type='button' value='Add Button' id='addButton'/>

</div>
<div id="addButton" style="float:left; top:4px;  padding:10px;">
<input type='button' value='Remove Button' id='removeButton'/>
</div>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:2px;"> Departure </td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:2px;"> 
<p> <!--<input type="text" placeholder=" Select Date" id="datepicker3" style="width:80px; height:20px; border:1px solid #ccc;
				border-radius:5px;
				background:#f6f6f6;">-->
                <asp:TextBox ID ="txtmuldep" runat ="server" Height="20" Width="80" BackColor="#f6f6f6" ></asp:TextBox>
                
                </p>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;">Adult </td>

<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;"> 
<!--<div class='selectBox'>
			<span class='selected' style="width:45px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-1px;">&#9660</span>
                   
			<div class="selectOptions" style="width:73px; margin-top:125px;">
				<span class="selectOption" value="Option 1">  1 </span>
				<span class="selectOption" value="Option 2">  2 </span>
				<span class="selectOption" value="Option 3"> 3 </span>
                
                <span class="selectOption" value="Option 1"> 4 </span>
				<span class="selectOption" value="Option 2"> 5  </span>
				<span class="selectOption" value="Option 3">  6 </span>
                
                <span class="selectOption" value="Option 1"> 7   </span>
				<span class="selectOption" value="Option 2"> 8 </span>
				<span class="selectOption" value="Option 3"> 9  </span>
                
                <span class="selectOption" value="Option 1">10 </span>
				<span class="selectOption" value="Option 2"> 11   </span>
				<span class="selectOption" value="Option 3">12  </span>
                <span class="selectOption" value="Option 2"> 13  </span>
				<span class="selectOption" value="Option 3"> 14  </span>
                
			</div>
		</div>-->
<asp:DropDownList ID="ddlmuladult1" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:120px; height:auto; float:left;">
<td style="width:120px; height:auto; float:left; margin-left:10px; margin-top:2px;"> Children (2-12 yrs)</td>

<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;"> 
<!--<div class='selectBox'>
			<span class='selected' style="width:45px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-1px;">&#9660</span>
                   
			<div class="selectOptions" style="width:73px;  margin-top:125px;">
                <span class="selectOption" value="Option 1"> 0 </span>
				<span class="selectOption" value="Option 1"> 1 </span>
				<span class="selectOption" value="Option 2">  2  </span>
				<span class="selectOption" value="Option 3"> 3  </span>
                
                <span class="selectOption" value="Option 1"> 4</span>
				<span class="selectOption" value="Option 2"> 5 </span>
				<span class="selectOption" value="Option 3"> 6 </span>
                
                <span class="selectOption" value="Option 1"> 7  </span>
				<span class="selectOption" value="Option 2"> 8 </span>
				<span class="selectOption" value="Option 3"> 9</span>
                
                <span class="selectOption" value="Option 1">10 </span>
				<span class="selectOption" value="Option 2"> 11 </span>
				<span class="selectOption" value="Option 3"> 12</span>
                <span class="selectOption" value="Option 2"> 13</span>
				<span class="selectOption" value="Option 3"> 14 </span>
                
			</div>
		</div>-->
<asp:DropDownList ID="DropDownList1" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;"> Infant (0-2 yrs)</td>
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:2px;">
<!--<div class='selectBox'>
			<span class='selected' style="width:45px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-1px;">&#9660</span>
                   
			<div class="selectOptions" style="width:73px;  margin-top:125px;">
                <span class="selectOption" value="Option 1"> 0 </span>
				<span class="selectOption" value="Option 1">  1 </span>
				<span class="selectOption" value="Option 2">  2</span>
				<span class="selectOption" value="Option 3">3 </span>
                
                <span class="selectOption" value="Option 1"> 4  </span>
				<span class="selectOption" value="Option 2"> 5</span>
				<span class="selectOption" value="Option 3">  6</span>
                
                <span class="selectOption" value="Option 1">7  </span>
				<span class="selectOption" value="Option 2"> 8</span>
				<span class="selectOption" value="Option 3">9</span>
                
                <span class="selectOption" value="Option 1">10</span>
				<span class="selectOption" value="Option 2"> 11</span>
				<span class="selectOption" value="Option 3"> 12</span>
                <span class="selectOption" value="Option 2">  13</span>
				<span class="selectOption" value="Option 3"> 14 </span>
                
			</div>
		</div>-->
<asp:DropDownList ID="DropDownList2" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:9px; margin-top:2px;"> Class </td>

<td style="width:100px; height:auto; float:left; margin-left:9px;  margin-top:2px;">
<!--<div class='selectBox'>
			<span class='selected' style="width:95px; margin-top:-1px; padding-top:5px; height:25px;"></span>
			<span class='selectArrow' style="margin-top:-32px; margin-left:70px;">&#9660</span>
                   
			<div class="selectOptions" style="width:95px;  margin-top:125px; height:100px;">
                <span class="selectOption" value="Option 1"> <p style=" margin-left:-5px;">Economy </p> </span>
				<span class="selectOption" value="Option 1"> <p style=" margin-left:-5px;"> Business </p> </span>
				
			</div>
		</div>-->
<asp:DropDownList ID="DropDownList3" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="Economy"></asp:ListItem> 
<asp:ListItem Value="2" Text="Business"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:300px; height:auto; float:right;">
<td>
<!--<div class="button22" style="margin-left:-310px;">Search Flights </div>
</p></td>-->
<asp:Button ID ="btnmulsearche" runat ="server" Text="Search Flights" CssClass="button33" />
</tr>
</table>
          </div>
          </div>

          <h3>&nbsp;</h3>
</div>
     </div>

<!-- new ticket style -->
<div class="clear"></div>
</div><!--billow_left-->

<div class="billow_right">

  <form method="post" action="International_Packages" id="aspnetForm">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTMyNzM4NzIyNg9kFgJmD2QWAgIDD2QWCgIDDw8WAh4HVmlzaWJsZWhkZAIFDxYCHgRUZXh0BeIFPGxpPjxhIHRhcmdldD0nX2JsYW5rJyBocmVmPSdodHRwczovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvUml5YS1UaGUtVHJhdmVsLUV4cGVydC8yNzk1NDA2Njg4MTkxMjU/ZnJlZj10cyc+PGltZyB3aWR0aD0nMTZweCcgaGVpZ2h0PScxNnB4JyB0aXRsZT0nRmFjZWJvb2snICBhbHQ9J0ZhY2Vib29rJyBzcmM9J2ltYWdlcy9mYWNlYm9vay5wbmcnLz48L2E+PC9saT48bGk+PGEgdGFyZ2V0PSdfYmxhbmsnIGhyZWY9J2h0dHBzOi8vdHdpdHRlci5jb20vUml5YVRyYXZlbEV4cCc+PGltZyB3aWR0aD0nMTZweCcgaGVpZ2h0PScxNnB4JyB0aXRsZT0nVHdpdHRlcicgIGFsdD0nVHdpdHRlcicgc3JjPSdpbWFnZXMvdHdpdHRlcjIucG5nJy8+PC9hPjwvbGk+PGxpPjxhIHRhcmdldD0nX2JsYW5rJyBocmVmPSdodHRwOi8vd3d3LnlvdXR1YmUuY29tL1JpeWFHcm91cEVudGVycHJpc2UnPjxpbWcgd2lkdGg9JzE2cHgnIGhlaWdodD0nMTZweCcgdGl0bGU9J1lvdXR1YmUnICBhbHQ9J1lvdXR1YmUnIHNyYz0naW1hZ2VzL3lvdXR1YmUyLnBuZycvPjwvYT48L2xpPjxsaSBjbGFzcz0nbGFzdCc+PGEgdGFyZ2V0PSdfYmxhbmsnIGhyZWY9J2h0dHBzOi8vcGx1cy5nb29nbGUuY29tLytSaXlhVHJhdmVsL3Bvc3RzJz48aW1nIHdpZHRoPScxNnB4JyBoZWlnaHQ9JzE2cHgnIHRpdGxlPSdHb29nbGUgUGx1cycgIGFsdD0nR29vZ2xlIFBsdXMnIHNyYz0naW1hZ2VzL2dvb2dsZXBsdXMucG5nJy8+PC9hPjwvbGk+ZAIHD2QWAgIBDxYCHgVjbGFzcwUOYWN0aXZlIGRpdmlkZXJkAgsPPCsACQEADxYEHghEYXRhS2V5cxYAHgtfIUl0ZW1Db3VudAIEZBYIZg9kFgICAQ8PFgIfAQUIU2VydmljZXNkZAIBD2QWAgIBDw8WAh8BBQ5BYm91dCB0aGUgc2l0ZWRkAgIPZBYCAgEPDxYCHwEFCk91ciBPZmZlcnNkZAIDD2QWAgIBDw8WAh8BBRBDdXN0b21lciBTdXBwb3J0ZGQCDQ9kFgJmD2QWAgIBDzwrAAkBAA8WBB8DFgAfBAIEZBYIZg9kFgICAQ9kFgICAQ88KwARAwAPFgQeC18hRGF0YUJvdW5kZx8EAglkARAWABYAFgAMFCsAABYCZg9kFhZmDw8WAh8AaGRkAgEPZBYCZg9kFgICAQ8PFgQfAQUHRmxpZ2h0cx4PQ29tbWFuZEFyZ3VtZW50BQIyORYCHgRocmVmBRpodHRwOi8vcml5YS50cmF2ZWwvRmxpZ2h0c2QCAg9kFgJmD2QWAgIBDw8WBB8BBQVGb3JleB8GBQIzMBYCHwcFGGh0dHA6Ly9yaXlhLnRyYXZlbC9mb3JleGQCAw9kFgJmD2QWAgIBDw8WBB8BBRBUcmF2ZWwgSW5zdXJhbmNlHwYFAjMxFgIfBwUjaHR0cDovL3JpeWEudHJhdmVsL3RyYXZlbF9pbnN1cmFuY2VkAgQPZBYCZg9kFgICAQ8PFgQfAQUEVmlzYR8GBQIzMhYCHwcFF2h0dHA6Ly9yaXlhLnRyYXZlbC92aXNhZAIFD2QWAmYPZBYCAgEPDxYEHwEFEERvbWVzdGljIEhvbGlkYXkfBgUCMzMWAh8HBSRodHRwOi8vcml5YS50cmF2ZWwvRG9tZXN0aWNfUGFja2FnZXNkAgYPZBYCZg9kFgICAQ8PFgQfAQUNTWFyaW5lIFRyYXZlbB8GBQI4NxYCHwcFIGh0dHA6Ly9yaXlhLnRyYXZlbC9tYXJpbmUtdHJhdmVsZAIHD2QWAmYPZBYCAgEPDxYEHwEFFUludGVybmF0aW9uYWwgSG9saWRheR8GBQIzNBYCHwcFKWh0dHA6Ly9yaXlhLnRyYXZlbC9JbnRlcm5hdGlvbmFsX1BhY2thZ2VzZAIID2QWAmYPZBYCAgEPDxYEHwEFEFdlZWtlbmQgR2V0YXdheXMfBgUCMzUWAh8HBSNodHRwOi8vcml5YS50cmF2ZWwvV2Vla2VuZF9HZXRhd2F5c2QCCQ9kFgJmD2QWAgIBDw8WBB8BBQ9Hcm91cCBEZXBhcnR1cmUfBgUCMzYWAh8HBSJodHRwOi8vcml5YS50cmF2ZWwvR3JvdXBfRGVwYXJ0dXJlZAIKDw8WAh8AaGRkAgEPZBYCAgEPZBYCAgEPPCsAEQMADxYEHwVnHwQCCGQBEBYAFgAWAAwUKwAAFgJmD2QWFGYPDxYCHwBoZGQCAQ9kFgJmD2QWAgIBDw8WBB8BBRJNYW5hZ2VtZW50IFByb2ZpbGUfBgUCMjcWAh8HBSVodHRwOi8vcml5YS50cmF2ZWwvbWFuYWdlbWVudF9wcm9maWxlZAICD2QWAmYPZBYCAgEPDxYEHwEFCEFib3V0IFVzHwYFAjM4FgIfBwURYWJvdXR1cz9wYWdlSUQ9MTVkAgMPZBYCZg9kFgICAQ8PFgQfAQURQ29ycG9yYXRlIFByb2ZpbGUfBgUCMzkWAh8HBRFhYm91dHVzP3BhZ2VJRD0xNmQCBA9kFgJmD2QWAgIBDw8WBB8BBRJUZXJtcyAmIENvbmRpdGlvbnMfBgUCNDEWAh8HBRFhYm91dHVzP3BhZ2VJRD0xN2QCBQ9kFgJmD2QWAgIBDw8WBB8BBQ5Qcml2YWN5IFBvbGljeR8GBQI0MxYCHwcFEWFib3V0dXM/cGFnZUlEPTE4ZAIGD2QWAmYPZBYCAgEPDxYEHwEFCkRpc2NsYWltZXIfBgUCNDUWAh8HBRBhYm91dHVzP3BhZ2VJRD05ZAIHD2QWAmYPZBYCAgEPDxYEHwEFB0NhcmVlcnMfBgUCNDkWAh8HBRpodHRwOi8vcml5YS50cmF2ZWwvY2FyZWVyc2QCCA9kFgJmD2QWAgIBDw8WBB8BBQdTaXRlbWFwHwYFAjY3FgIfBwUfaHR0cDovL3JpeWEudHJhdmVsL3NpdGVtYXAuYXNweGQCCQ8PFgIfAGhkZAICD2QWAgIBD2QWAgIBDzwrABEDAA8WBB8FZx8EAgRkARAWABYAFgAMFCsAABYCZg9kFgxmDw8WAh8AaGRkAgEPZBYCZg9kFgICAQ8PFgQfAQUWU3BlY2lhbCBGYXJlIFRvIFp1cmljaB8GBQMxMTgWAh8HBSlodHRwOi8vcml5YS50cmF2ZWwvc3BlY2lhbC1mYXJlLXRvLXp1cmljaGQCAg9kFgJmD2QWAgIBDw8WBB8BBQ9GbGlnaHQgdG8gSXRhbHkfBgUDMTE5FgIfBwUiaHR0cDovL3JpeWEudHJhdmVsL2ZsaWdodC10by1pdGFseWQCAw9kFgJmD2QWAgIBDw8WBB8BBQ9GYXIgRWFzdCBKZXdlbHMfBgUDMTAzFgIfBwU1aHR0cDovL3JpeWEudHJhdmVsL0hvbGlkYXlfUGFja2FnZXNfRkFSX0VBU1RfSkVXRUxTX0dkAgQPZBYCZg9kFgICAQ8PFgQfAQUQQW1hemluZyBUaGFpbGFuZB8GBQI4NBYCHwcFOmh0dHA6Ly93d3cucml5YS50cmF2ZWwvSG9saWRheV9QYWNrYWdlc19BbWF6aW5nX1RoYWlsYW5kX0dkAgUPDxYCHwBoZGQCAw9kFgICAQ8WAh8CBQhib3hfbGFzdBYCAgEPPCsAEQQADxYEHwVnHwQCBmQBEBYAFgAWAAsWBB4IQ3NzQ2xhc3MFCGJveF9sYXN0HgRfIVNCAgIMFCsAABYCZg9kFhBmDw8WAh8AaGRkAgEPZBYCZg9kFgICAQ8PFgQfAQUIUmVnaXN0ZXIfBgUCNTYWAh8HBRtodHRwOi8vcml5YS50cmF2ZWwvcmVnaXN0ZXJkAgIPZBYCZg9kFgICAQ8PFgQfAQUKTXkgQWNjb3VudB8GBQI1ORYCHwcFHGh0dHA6Ly9yaXlhLnRyYXZlbC9teWFjY291bnRkAgMPZBYCZg9kFgICAQ8PFgQfAQUOUHJpbnQgRSBUaWNrZXQfBgUCNjEWAh8HBSlodHRwOi8vYWlyLnJpeWEudHJhdmVsL1ByaW50RS1UaWNrZXQuYXNweGQCBA9kFgJmD2QWAgIBDw8WBB8BBQpGbGlnaHQgRkFRHwYFAjUyFgIfBwUMRkFRP3BhZ2VJRD0xZAIFD2QWAmYPZBYCAgEPDxYEHwEFDlJldGFpbCBPZmZpY2VzHwYFAjYwFgIfBwUcaHR0cDovL3JpeWEudHJhdmVsL2NvbnRhY3R1c2QCBg9kFgJmD2QWAgIBDw8WBB8BBQpDb250YWN0IFVzHwYFAjU1FgIfBwUcaHR0cDovL3JpeWEudHJhdmVsL2NvbnRhY3R1c2QCBw8PFgIfAGhkZBgEBSZjdGwwMCRkbF9zdWJmb290ZXIkY3RsMDMkZ3JkX3N1YmZvb3Rlcg88KwAMAQgCAWQFJmN0bDAwJGRsX3N1YmZvb3RlciRjdGwwMiRncmRfc3ViZm9vdGVyDzwrAAwBCAIBZAUmY3RsMDAkZGxfc3ViZm9vdGVyJGN0bDAxJGdyZF9zdWJmb290ZXIPPCsADAEIAgFkBSZjdGwwMCRkbF9zdWJmb290ZXIkY3RsMDAkZ3JkX3N1YmZvb3Rlcg88KwAMAQgCAWQ=" />
</div>
</form>
<script type="text/javascript">
//<![CDATA[
    var theForm = document.forms['aspnetForm'];
    if (!theForm) {
        theForm = document.aspnetForm;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
//]]>
</script>


<script src="/WebResource.axd?d=kmkM7qSbnvqRoi5AtbH40DpaWUxPjyH0UC4EaVIK7FOfdvnLVvmny6D8GaNdMR6k29mHxK4Lzbrcqx6HYNk0WfmZ9qRATDXRKVzChirrQYA1&amp;t=635195493660000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=S8tZVZTDxClK9yhw3om7Ag_X3FE3UfTQ5uNEsg2I3GpwJr9detOO-uOLferTLIn_JgrwDI9vv51EAqN0_Xs22ALIpmL4gWMSwAtBuu6TJg8rwCwTwMzUBSDmoD8sLIQcB9xO8oO_QQafxin5tb3X7A2&amp;t=ffffffffaa73f696" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
    if (typeof (Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
//]]>
</script>

<script src="/ScriptResource.axd?d=rwmLKVFaMpFwUfzZbtovwbI_Rk6tz1OCppDpvPiDsp2IhitQ4oPU_XF9QUtPGsMcPN5Zpnzm0RhswIQGQZlxK0TbAVDuKuHR7RF_N58zNau9Vi_1mERel9TNr7Qtfk9jYhzjS7Yu60rJj1W8h6ZlHw2&amp;t=ffffffffaa73f696" type="text/javascript"></script>
    <script type="text/javascript">
//<![CDATA[
        Sys.WebForms.PageRequestManager._initialize('ctl00$sc1', 'aspnetForm', ['tctl00$up_footer', ''], ['ctl00$dl_subfooter', ''], [], 90, 'ctl00');
//]]>
</script>
<tr>
<td valign="top">
 <div class="map_main_contianer">
               <div style=" margin-left:20px; margin-top:-30px; width:600px;">  
                    <table> 
                     <tr style="width:130px; float:left;">
                     <td>    Select the Continent : </td>
                     </tr> 
                       <tr style="width:300px; float:left; margin-top:-17px;">   
                        </td>
                    <!-- Form -->
                    <td valign="top">
                       <div class="form_continent" id="mapForm">
                            <select name="continent"  style="margin-top:10px;">
                             <option value="AF">Africa</option>
                            <option value="AS">Asia</option>
                            <option value="AU">Australia</option>
                            <option value="EU">Europe</option>
                            <option value="SA">South America</option>
                            <option value="NA">North America</option>
                            <option value="ALL" selected="selected">All</option>
                            </select>
                            </div></td></tr>
                                  </tr></table>
               </div>
                            
                <div class="map_contianer" style="margin-top:25px;">
                    <!-- Dots -->
                    <a id="ctl00_ContentPlaceHolder1_lnk_usa" class="dot5" continent="NA" city="USA" title="USA" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_usa&#39;,&#39;&#39;)" style="top: 133px; left: 80px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_canada" class="dot5" continent="NA" city="Canada" title="Canada" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_canada&#39;,&#39;&#39;)" style="top: 81px; left: 56px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_turkey" class="dot6" continent="EU" city="Turkey" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_turkey&#39;,&#39;&#39;)" style="top: 120px; left: 350px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_France" class="dot6" continent="EU" city="France" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_France&#39;,&#39;&#39;)" style="top:100px;left: 275px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_greece" class="dot6" continent="EU" city="Greece" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_greece&#39;,&#39;&#39;)" style="top: 125px; left: 330px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_italy" class="dot6" continent="EU" city="Italy" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_italy&#39;,&#39;&#39;)" style="top: 125px; left: 310px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_spain" class="dot6" continent="EU" city="Spain" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_spain&#39;,&#39;&#39;)" style="top: 125px; left: 280px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_Switzerland" class="dot6" continent="EU" city="Switzerland" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Switzerland&#39;,&#39;&#39;)" style="top: 110px; left: 310px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_southamerica" class="dot4" continent="SA" city="South-America" title="South America" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_southamerica&#39;,&#39;&#39;)" style="top: 200px;left: 155px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_dubai" class="dot2" continent="AS" city="Dubai" title="Dubai" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_dubai&#39;,&#39;&#39;)" style="top: 170px; left: 379px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_thailand" class="dot2" continent="AS" city="Thailand" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_thailand&#39;,&#39;&#39;)" style="top: 160px; left: 466px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_shrilanka" class="dot2" continent="AS" city="India" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_shrilanka&#39;,&#39;&#39;)" style="top:175px; left: 445px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_Indonesia" class="dot2" continent="AS" city="Indonesia" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Indonesia&#39;,&#39;&#39;)" style="top: 210px; left: 500px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_nepal" class="dot2" continent="AS" city="Nepal" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_nepal&#39;,&#39;&#39;)" style="top: 145px; left: 460px;"></a>
                
                    <a id="ctl00_ContentPlaceHolder1_lnk_Singapore" class="dot2" continent="AS" city="Singapore" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Singapore&#39;,&#39;&#39;)" style="top: 202px;  left: 487px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_malaysia" class="dot2" continent="AS" city="Malaysia" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_malaysia&#39;,&#39;&#39;)" style="top:180px; left:481px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_honkong" class="dot2" continent="AS" city="Hongkong" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_honkong&#39;,&#39;&#39;)" style="top: 148px;  left: 510px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_australia" class="dot3" continent="AU" city="Australia" title="Australia" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_australia&#39;,&#39;&#39;)" style="top: 242px; left:563px;"></a>
                        
                    <a id="ctl00_ContentPlaceHolder1_lnk_NewZealand" class="dot3" continent="AU" city="NewZealand" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_NewZealand&#39;,&#39;&#39;)" style="top: 270px; left: 620px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_SouthAfrica" class="dot1" continent="AF" city="SouthAfrica" title="SouthAfrica" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_SouthAfrica&#39;,&#39;&#39;)" style="top: 245px;  left: 335px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_kenya" class="dot1" continent="AF" city="Kenya" title="Kenya" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_kenya&#39;,&#39;&#39;)" style="top: 200px; left: 350px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_Mauritius" class="dot1" continent="AF" city="Mauritius" title="Mauritius" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Mauritius&#39;,&#39;&#39;)" style="top: 235px; left: 390px;"></a>
                        
                         <a id="ctl00_ContentPlaceHolder1_lnk_Mauritius" class="dot7" continent="AF" city="India" title="India" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Mauritius&#39;,&#39;&#39;)" style="top: 200px;
                        left: 400px;"></a>
                        
                        
                        </td>
                    <!-- Form -->
                    </tr>

                    <!--PASTE-->
                    <!-- City details -->
                    <div id="detail_container">
                        <!-- City -->
                        <div class="city_detail">
                        </div>
                    </div>
                    <div class="city_detail_container">
                        <!-- City -->
                        <div class="city_detail" id="Australia">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/sydney.jpg" alt="sydney" width="75"
                                    height="75"  style="top: 172px; left: 473px;"/>
                                <div class="city_info">
                                    <h2>&nbsp;Australia</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Dubai">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/Dubai.jpg" alt="Dubai" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;Dubai</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="South-America">
                            <a href="r#">
                                <img class="city_photo" src="images/map/cities/SOUTH_AMERICA.jpg" alt="South America"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                        South America</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Indonesia">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/INDONESIA.jpg" alt="Indonesia" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        Indonesia</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="USA">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/USA.jpg" alt="USA" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                    &nbsp;&nbsp;&nbsp;&nbsp;    USA</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Canada">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/CANADA.jpg" alt="seattle" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;  Canada</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="NewZealand">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/NEWZEALAND.jpg" alt="NewZealand" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        NewZealand</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Hongkong">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/HONGKONG.jpg" alt="Hongkong"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                      Hongkong</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Srilanka" style="margin-top:10px; margin-left:-10px;">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/SriLanka.jpg" alt="India" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                       &nbsp; India</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="India">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/INDIA.jpg" alt="India" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                       &nbsp;&nbsp;&nbsp;&nbsp; India</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Nepal">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/NEPAL.jpg" alt="Nepal" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;&nbsp;  Nepal</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Singapore">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/SINGAPORE.jpg" alt="Singapore" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        Singapore</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="India">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/MALDIVES.jpg" alt="India"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                     &nbsp;   India</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Malaysia">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/malaysia.jpg" alt="Malaysia" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;  Malaysia</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Turkey">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/TURKEY.jpg" alt="Turkey" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;  Turkey</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="France">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/FRANCE.jpg" alt="France" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp; France</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Greece">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/GREECE.jpg" alt="Greece" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;  Greece</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Spain">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/SPAIN.jpg" alt="Spain" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;&nbsp;&nbsp;  Spain</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Italy">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/ITALY.jpg" alt="Italy" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;&nbsp;&nbsp;  Italy</h2>
                                </div>
                            </a>
                        </div>
                       
                        <!-- City -->
                        <div class="city_detail" id="Switzerland">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/switzerland.jpg" alt="Switzerland" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        Switzerland</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Thailand">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/THAILAND.jpg" alt="Thailand" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;  Thailand</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="SouthAfrica">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/south-africa.jpg" alt="SouthAfrica"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                        SouthAfrica</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Kenya">
                            <a href="r#">
                                <img class="city_photo" src="images/map/cities/KENYA.jpg" alt="Kenya" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                       &nbsp;&nbsp;&nbsp; Kenya</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Mauritius">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/Mauritius.jpg" alt="Mauritius" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                    &nbsp;    Mauritius</h2>
                                </div>
                            </a>
                        </div>
                        
                        
                         </td>
                        
                    </div>
                </div>
                </div>
                <!-- end of map -->

</div><!--billow_right-->
</div><!--banner_billow-->
<div class="container">
<div class="containe_left">
<div class="contact_details">
<div class="usa" style="margin-left:30px; clear:both;">
<p><img src="images/usa_flag.png" style="margin-top:6px; position:relative; top:-15px;" />
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="220" height="35" id="FlashID" title="usa" style="margin-top:7px;">
    <param name="movie" value="images/usa.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="6.0.65.0" />
    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="images/usa.swf" width="220" height="35" style="margin-top:7px;">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="6.0.65.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
      <div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>
</p>
</div><!--Usa-->
<div class="india">
<p><img src="images/india_flag.png" style="margin-top:6px; position:relative; top:-15px;"/>
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="245" height="35" id="FlashID2" title="india" style="margin-top:6px;">
    <param name="movie" value="images/india.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="6.0.65.0" />
    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="images/india.swf" width="245" height="35" style="margin-top:6px; margin-left:6px;">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="6.0.65.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
      <div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>
</p>
</div><!--india-->
</div><!--contact_details-->
<div class="text_informatiomn">
<div class="welcome_text">
<img src="images/welcom_text.png" />
</div><!--welcome_text-->
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; margin-top:-5px; line-height:20px;">*Travel is fatal to prejudice, bigotry, and narrow-mindedness, and many of our people need it sorely on these accounts.  Broad, wholesome, charitable views of men and things cannot be acquired by vegetating in One little corner of the earth all one's lifetime” Custom Designed Vacations. </p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;">*Indus Travels & Tours travel packages are designed to fit your independent spirit. We know you have your own ideas and special needs, so we offer you complete flexibility in planning your trip. You may choose:</p>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Special discounted airfares from most U.S. cities to Asia, Africa and rest of the World. </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Any length of stay on any number of destinations</li>
 <li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Any departure day</li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;"> *You can make your own small group of family and friends.</li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* Transportation -- rental cars and round trip transfers to your hotel </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* Sightseeing tours, helicopter rides, and much more. </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">*Unlike other travel packages you might see, there are no required purchases of lei greeting, transportation or activities. You pay only for the exact features you wants.</li>
</div><!--text_information-->
<img src="images/summer_offer.jpg" width="640" height="45" style="background-color:#090"/>
</div><!--container_left-->
<div class="containe_right">
<h1 style="font-size:24px; font-family:Tahoma, Geneva, sans-serif; color:#c62731; margin-top:5px; margin-left:22px; height:25px;">Best Packages for Domestic & International Tours</h1>
<div class="top">
<ul>
<li><img src="images/img_01.jpg" width="158" /></li>
<li> <img src="images/img_02.jpg" width="166" /></li>
<li> <img src="images/img_03.jpg" width="155" /></li>
<li><img src="images/img_04.jpg" width="162" /></li>
</ul>
</div><!--top-->
<div class="center">
<ul>
<li><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; margin-left:-10px;">Indus Tours & Travels</p>
<p style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; margin-left:-10px;">Flight + Hotels Combo Deals</p></li>

<li style="margin-left:35px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Delhi</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">2 Days Trip</span>&nbsp; <span style="color:#fc2400;  font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " >Rs. 8,900</span></p></li>

<li  style="margin-left:65px;" > <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Kerala</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">4 Days Trip</span>&nbsp; <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 26,000</span></p></li>

<li style="margin-left:46px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Maharashtra </p> &nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:10px;">Starting</span></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; text-align:left; position:relative; top:-10px;" > Rs. 26,000</span></p></li>
</ul>
</div><!--center-->
<div class="buttom">
<ul>
<li><img src="images/img_05.jpg" width="158" /></li>
<li> <img src="images/img_06.jpg" width="166" /></li>
<li> <img src="images/img_07.jpg"  width="155"/></li>
<li><img src="images/img_08.jpg"  width="162" /></li>
</ul>
</div><!--buttom-->
<div class="lastone">
<ul>
<li style="margin-left:6px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Bangkock</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">7 Nights</span>&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;" > Rs. 35,900</span></p></li>
 

<li style="margin-left:46px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Bangkock </p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;">Starting</span></p>

<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">7 Nights</span>&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 35,900</span></p></li>
 
<li style="margin-left:53px;"> <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Darjeeling </p> &nbsp;&nbsp;&nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;">Starting</span></p>

<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; ">7 Nights</span>&nbsp;&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 41,000</span></p></li>
<li style="margin-left:32px;"> <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Kerala </p> &nbsp;&nbsp;&nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; ">7 Nights</span>&nbsp;&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;"> Rs. 41,000</span></p></li>

</ul>
</div><!--lsastone-->
</div><!--container_right-->
</div><!--container-->
<div class="summer_packeges">
<img src="images/summer_packeges.jpg" width="1299" />
</div><!--summer_packeges-->

<!-- scrolling flash --->


<!-- scrolling flash end -->

<div class="stock">
<img src="images/srock.jpg"  style="margin-left:270px; margin-top:80px;"/>
</div><!--strock-->
<div class="tours_locations">
<div class="box1">
<h1>Tours In India</h1>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Golden Triangle Holiday</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Heritage Travel India</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>South India VacationBuddha</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Wildlife Parks in India</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Wildlife Parks in India</a></li>
</div><!--box1-->
<div class="left_stock">
<img src="images/left_srock.jpg" />
</div><!--left_strock-->
<div class="box2">
<h1>Hotel Booking </h1>

<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>South East Asia Tours </a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Europe Tour Packages</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Australia Holiday Packages</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>New Zealand Tour Packages</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Srilanka Tours </a></li>
</div><!--box2-->
<div class="left_stock">
<img src="images/left_srock.jpg" />
</div><!--left_strock-->
<div class="box3">
<h1>Tours In Outside India</h1>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Air Ticketing</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Hotel Reservations</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Foreign Exchange Transportation</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Guides & Interpreters</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Holidy Packages</a></li>
</div><!--box3-->
<div class="left_stock">
<img src="images/left_srock.jpg" />
</div><!--left_strock-->
<div class="box4">
<h1>Travel Others Services </h1>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Air Ticketing</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Hotel Reservations</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Foreign Exchange Transportation</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Guides & Interpreters</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Hotel Reservations</a></li>
</div><!--box4-->
<div class="left_stock">
<img src="images/left_srock.jpg" />
</div><!--left_strock-->
<div class="box5">
<h1>Travel Services </h1>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Air Ticketing</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Hotel Reservations</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Foreign Exchange Transportation</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Guides & Interpreters</a></li>
<img src="images/dot.jpg"  style="margin-left:-12px;  float:left; position:relative; top:8px;"/><li><a href="#" style="color:#808080";>Hotel Reservations</a></li>
</div><!--box5-->
</div><!--tours_locations-->
<div class="scrolling_flash2233" style="height:100px; position:relative;">
<div class="flash_left" style="clear:both; position:relative;">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="409" height="70" id="Object1" title="right_flash">
    <param name="movie" value="images/L_R.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="8.0.35.0" />
    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="images/L_R.swf" width="523" height="70">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="8.0.35.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
      <div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>

</div>
<!--flash _left-->
<!--flash _center-->

<div class="flash_center">
<img src="images/new/ou_tour.jpg" style="margin-top:12px;" />
</div>
<!--flash _right-->
<div class="flash_right">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="404" height="70" id="Object2" title="left_flash">
    <param name="movie" value="images/R_L.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="8.0.35.0" />
    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="images/R_L.swf" width="550" height="70">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="8.0.35.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
      <div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>
</div>

</div>
<div class="stock1">
<img src="images/srock.jpg"  style="margin-left:250px; margin-top:40px;"/>
</div><!--strock-->
<div class="tours">
<img src="images/tours.jpg" />
</div><!--tours-->
<div class="footer1">
<p><a href="#">Time Zones</a> |<a href="#"> Airlines Numbers</a> |<a href="#"> Currency </a>| <a href="#">Weather</a> |<a href="#"> Weight Conversion </a>| <a href="#">Travel Insurance</a> |<a href="#">Terms & Conditions</a>|<a href="#">Advertise</a> |<a href="#"> FAQ</a> |<a href="#"> Site Map</a> |<a href="#"> Privacy Policy</a>|Copyright @ Indus Travels 1999-2014. Allrights</p>
</div><!--footer-->
</div><!--wrapper class-->

	<!-- callender style -->
 <link href="jquery.css" rel="stylesheet" />
 <script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
<!--<script>
$(function() {
$( "#datepicker" ).datepicker();
});
</script>

 <script>
$(function() {
$( "#datepicker1" ).datepicker();
});
</script>
 <script>
$(function() {
$( "#datepicker2" ).datepicker();
});
</script>
-->
<!-- callender style end -->

<script type="text/javascript">
<!--
    swfobject.registerObject("FlashID");
    swfobject.registerObject("FlashID2");
    swfobject.registerObject("FlashID3");
    swfobject.registerObject("FlashID4");
    swfobject.registerObject("FlashID5");
    swfobject.registerObject("FlashID3");
//-->
</script>

</form>

</body>
   
    
    

</html>
