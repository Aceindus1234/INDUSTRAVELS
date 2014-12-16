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
 <link type="text/css" rel="stylesheet" href="css/homepage.css">
<style>
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
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=ALCAN" target="_blank">Alaska</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="fareDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=FAR.E" target="_blank">Asia</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="austlDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=AUSTL" target="_blank">Australia/New Zealand</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="bahamDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=BAHAM" target="_blank">Bahamas</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="bermuDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=BERMU" target="_blank">Bermuda</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="atlcoDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=ATLCO" target="_blank">Canada/New England</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="caribDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=CARIB" target="_blank">Caribbean</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="dubaiDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=DUBAI" target="_blank">Dubai/Emirates</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="europDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=EUROP" target="_blank">Europe</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>				
					<div id="hawaiDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=HAWAI" target="_blank">Hawaii</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="pacifDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=PACIF" target="_blank">Pacific Northwest</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="tpanDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=T.PAN" target="_blank">Panama Canal</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="islanDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=ISLAN" target="_blank">Repositioning</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="samerDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=SAMER" target="_blank">South America</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="sopacDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=SOPAC" target="_blank">South Pacific</a>
							<span class="pointer">&#9660;</span>
						</div>
					</div>
					<div id="tatlDestPin" class="pin">
						<div class="pinInner">
							
							<a href="http://www.royalcaribbean.com/findacruise/destinations/home.do?dest=T.ATL" target="_blank">Transatlantic</a>
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
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=BAO" >Baoshan (Shanghai), China</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=BNE" >Brisbane, Australia</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=HKG" >Hong Kong, China</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=FRE" >Perth (Fremantle), Australia</a></li>
										
								</ul>
								
								<ul>
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=SIN" >Singapore</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=SYD" >Sydney, Australia</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=TSN" >Tianjin, China</a></li>
										
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
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=DXB" >Dubai, United Arab Emirates</a></li>
										
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
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=ROM" >Civitavecchia (Rome), Italy</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=IST" >Istanbul, Turkey</a></li>
										
								</ul>
								
								<ul>
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=VCE" >Venice, Italy</a></li>
										
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
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=BWI" >Baltimore, Maryland</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=BOS" >Boston, Massachusetts</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=BYE" >Cape Liberty, New Jersey</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=FLL" >Fort Lauderdale, Florida</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=GAL">Galveston, Texas</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=HNL" >Honolulu (Oahu), Hawaii</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=LAX" >Los Angeles, California</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=MIA" >Miami, Florida</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=MSY" >New Orleans, Louisiana</a></li>
										
								</ul>
								
								<ul>
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=PCN" >Port Canaveral, Florida</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=YQB" >Quebec City, Quebec</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=SAN" >San Diego, California</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=SEA" >Seattle, Washington</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=SWD" >Seward, Alaska</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=TPA" >Tampa, Florida</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=YVR" >Vancouver, British Columbia</a></li>
										
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
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=SJU" >San Juan, Puerto Rico</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=SSZ" >Sao Paulo (Santos), Brazil</a></li>
										
								</ul>
								
								<ul>
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=VAP" >Valparaiso, Chile</a></li>
										
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
									
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=CPH" >Copenhagen, Denmark</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=HAM" >Hamburg, Germany</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=LGW" >Harwich, England</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=OSL" >Oslo, Norway</a></li>
										
								</ul>
								
								<ul>
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=RTM" >Rotterdam, Netherlands</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=STH" >Southampton, England</a></li>
										
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=STO" >Stockholm, Sweden</a></li>
										
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
									
										<li><a href="http://www.royalcaribbean.com/findacruise/ports/group/home.do?portType=DEPART&portCode=BCN">Barcelona, Spain</a></li>
										
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

