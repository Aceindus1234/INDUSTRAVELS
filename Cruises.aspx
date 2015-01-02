<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cruises.aspx.cs" Inherits="industravels_new_Cruises" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH5" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF5" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL5" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR5" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Curises::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
 <link type="text/css" rel="stylesheet" href="css/homepage.css"/>
<style type="text/css">
h1 {
	color:#c62731;
	font-size:19px;
	font-family:Arial, Helvetica, sans-serif;
	margin-left:-18px;
}
</style>

<script type="text/javascript" src="js/homePage.js" ></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH5:Head ID="THead5" runat="server" />
    </td>
    </tr>
    <tr >
    <td>
    <div class="contain" style="margin-top:0px; background-color:rgba(22, 94, 188, 1)">
    <table width="100%">
    <tr>
    <td>
     <TraL5:Left ID="TLeft5" runat="server" />  
    </td>
    <td valign="top" class="col">
     <div class="contain_center"  >
<%--<h1 style="color:#0CF; font-size:28px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; text-align:center; margin-top:25px;">Under Construction.</h1>
--%>
<div class="body" id="#skipContent" style="width:836px; padding-left:150px;">    
	<div class="body-bg" style="height:620px; margin-left:-100px;">
		<div class="innermap">
<div class="mapArea destinationsActive">
	
	<ul class="mapToggle">
		<li id="destinationsBtn"><a href="#">Destinations<span class="pointer">&#9660;</span></a></li>
		<li id="departuresBtn"><a href="#">Departure Ports<span class="pointer">&#9660;</span></a></li>
	</ul>
			<div id="tt-rep-content" style="display:none;">
				<div class="legendTooltip">
					<div class="legendTooltipInner">
						<span class="tooltipHeading">Repositioning</span>
						One-way cruises
					</div>
				</div>
			</div>
	   
	<div class="map cf" id="destMap">
				
					<div id="alcanDestPin" class="pin">
						<div class="pinInner">							
							<a href="#" target="_blank">Alaska</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="fareDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Asia</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="austlDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Australia/New Zealand</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="bahamDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Bahamas</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="bermuDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Bermuda</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="atlcoDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Canada/New England</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="caribDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Caribbean</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="dubaiDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Dubai/Emirates</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="europDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Europe</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="hawaiDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Hawaii</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="pacifDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Pacific Northwest</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="tpanDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Panama Canal</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="islanDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Repositioning</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="samerDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">South America</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="sopacDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">South Pacific</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="tatlDestPin" class="pin">
						<div class="pinInner">
							
							<a href="#" target="_blank">Transatlantic</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
	</div>
	
	<div class="map cf" id="departMap">
				<div id="asiathepacificDepPin" class="pin">
					<div class="pinInner">
						<a href="">Asia & the Pacific</a>
						<span class="pointer">&#9660;</span>
						
							<div class="pinTooltip">
								<span><span><span>Ports for Asia & the Pacific</span></span></span>								
								<ul>										
										<li><a href="#" >Baoshan (Shanghai), China</a></li>
										
										<li><a href="#" >Brisbane, Australia</a></li>
										
										<li><a href="#" >Hong Kong, China</a></li>
										
										<li><a href="#" >Perth (Fremantle), Australia</a></li>
										
								</ul>
								
								<ul>
										<li><a href="#" >Singapore</a></li>
										
										<li><a href="#" >Sydney, Australia</a></li>
										
										<li><a href="#" >Tianjin, China</a></li>
										
								</ul>
								
								<a href="#" class="closeBtn">X</a>
							</div>
						
					</div>
				</div>			
				<div id="dubaiDepPin" class="pin">
					<div class="pinInner">
						<a href="">Dubai</a>
						<span class="pointer">&#9660;</span>
						
							<div class="pinTooltip">
								<span><span><span>Ports for Dubai</span></span></span>
								<ul>
										
										<li><a href="#" >Dubai, United Arab Emirates</a></li>
										
								</ul>
								
								<a href="#" class="closeBtn">X</a>
							</div>
						
					</div>
				</div>			
				<div id="italyandturkeyDepPin" class="pin">
					<div class="pinInner">
						<a href="">Italy And Turkey</a>
						<span class="pointer">&#9660;</span>
						
							<div class="pinTooltip">
								<span><span><span>Ports for Italy And Turkey</span></span></span>
								
								<ul>
										<li><a href="#" >Civitavecchia (Rome), Italy</a></li>
										
										<li><a href="#" >Istanbul, Turkey</a></li>
										
								</ul>
								
								<ul>
										<li><a href="#" >Venice, Italy</a></li>
										
								</ul>
								
								<a href="#" class="closeBtn">X</a>
							</div>
						
					</div>
				</div>			
				<div id="northamericaDepPin" class="pin">
					<div class="pinInner">
						<a href="">North America</a>
						<span class="pointer">&#9660;</span>
						
							<div class="pinTooltip">
								<span><span><span>Ports for North America</span></span></span>
								
								<ul>
										<li><a href="#" >Baltimore, Maryland</a></li>
										
										<li><a href="#" >Boston, Massachusetts</a></li>
										
										<li><a href="#" >Cape Liberty, New Jersey</a></li>
										
										<li><a href="#" >Fort Lauderdale, Florida</a></li>
										
										<li><a href="#">Galveston, Texas</a></li>
										
										<li><a href="#" >Honolulu (Oahu), Hawaii</a></li>
										
										<li><a href="#" >Los Angeles, California</a></li>
										
										<li><a href="#" >Miami, Florida</a></li>
										
										<li><a href="#" >New Orleans, Louisiana</a></li>
										
								</ul>
								
								<ul>
										<li><a href="#" >Port Canaveral, Florida</a></li>
										
										<li><a href="#" >Quebec City, Quebec</a></li>
										
										<li><a href="#" >San Diego, California</a></li>
										
										<li><a href="#" >Seattle, Washington</a></li>
										
										<li><a href="#" >Seward, Alaska</a></li>
										
										<li><a href="#" >Tampa, Florida</a></li>
										
										<li><a href="#" >Vancouver, British Columbia</a></li>
										
								</ul>
								
								<a href="#" class="closeBtn">X</a>
							</div>
						
					</div>
				</div>			
				<div id="southamericacaribbeanDepPin" class="pin">
					<div class="pinInner">
						<a href="">South America & Caribbean</a>
						<span class="pointer">&#9660;</span>
						
							<div class="pinTooltip">
								<span><span><span>Ports for South America & Caribbean</span></span></span>
								<ul>
										<li><a href="#" >San Juan, Puerto Rico</a></li>
										
										<li><a href="#" >Sao Paulo (Santos), Brazil</a></li>
										
								</ul>
								
								<ul>
										<li><a href="#" >Valparaiso, Chile</a></li>
										
								</ul>
								
								<a href="#" class="closeBtn">X</a>
							</div>
						
					</div>
				</div>			
				<div id="northerneuropeDepPin" class="pin">
					<div class="pinInner">
						<a href="">Northern Europe</a>
						<span class="pointer">&#9660;</span>
						
							<div class="pinTooltip">
								<span><span><span>Ports for Northern Europe</span></span></span>
								
								<ul>
									
										<li><a href="#" >Copenhagen, Denmark</a></li>
										
										<li><a href="#" >Hamburg, Germany</a></li>
										
										<li><a href="#" >Harwich, England</a></li>
										
										<li><a href="#" >Oslo, Norway</a></li>
										
								</ul>
								
								<ul>
										<li><a href="#" >Rotterdam, Netherlands</a></li>
										
										<li><a href="#" >Southampton, England</a></li>
										
										<li><a href="#" >Stockholm, Sweden</a></li>
										
								</ul>								
								<a href="#" class="closeBtn">X</a>
							</div>
						
					</div>
				</div>			
				<div id="spainportugalandfranceDepPin" class="pin">
					<div class="pinInner">
						<a href="">Spain, Portugal And France</a>
						<span class="pointer">&#9660;</span>
						
							<div class="pinTooltip">
								<span><span><span>Ports for Spain, Portugal And France</span></span></span>
								<ul>
									
										<li><a href="#">Barcelona, Spain</a></li>
										
								</ul>
								
								<a href="#" class="closeBtn">X</a>
							</div>
						
					</div>
				</div>
	</div>
</div>
		</div>
	</div>
</div>
</div>
    </td>
    <td>
     <TraR5:Right ID="TRight5" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF5:Foot ID="TFoot5" runat="server" />
    </td></tr>
    </table>
    </div>
    </form>
</body>
</html>

