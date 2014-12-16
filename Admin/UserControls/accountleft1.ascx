<%@ Control Language="C#" AutoEventWireup="true" CodeFile="accountleft1.ascx.cs" Inherits="Admin_UserControls_accountleft1" %>
<!--

<style type="text/css">
.accordion_headings{
	padding:5px;
	background-color:#CAD7F9;	
	border:1px dotted #FFF;
	cursor:pointer;
	font-weight:bold;
	font-size:14px;
}
.header_highlight{
	background:#E1E1E1;
}
.tabledesign
        {
        	border-top-left-radius:10px;
            border-top-right-radius:10px;
            border-bottom-left-radius:10px;
            border-bottom-right-radius:10px;
        }
        #navbar {
	margin: 0;
	padding: 0;
	height: 1em; }
#navbar li {
	list-style: none;
	display:none;
	float: left; }
#navbar li a {
	display: block;
	padding: 3px 8px;
	background-color: #5e8ce9;
	color: #fff;
	text-decoration: none; }
	#navbar li ul {
	display: none; 
	width: 10em; 
	background-color: #69f;}
</style>

-->

<style type="text/css">



#divMenu, ul, li, li li {

    margin: 0;

    padding: 0;
 

}

 

#divMenu {

    width: 200px;

    height: 27px;
    border-radius:5px;

}

 

#divMenu ul

{

     line-height: 25px;

}

 

    #divMenu li {

        list-style: none;

        position: relative;

        background: #CAD7F9;
      

    }

 

        #divMenu li li {

            list-style: none;

            position: relative;

            background: #CAD7F9;

            left: 200px;

            top: -27px;

        }

 

 

    #divMenu ul li a {

        width: 200px;

        height: 25px;

        display: block;

        text-decoration: none;

        text-align: center;

        font-family:Arial,Helvetica,sans-serif;

        color:Black;

        border:1px solid #B9C7D3;
        font-size:12px;
        font-weight: bold;
        

    }

 

    #divMenu ul ul {

        position: absolute;

        visibility: hidden;

        top: 27px;

    }

 

    #divMenu ul li:hover ul {

        visibility: visible;

    }

 

    #divMenu li:hover {

        background-color: #E1E1E1;
        color:#006699;


    }

 

    #divMenu ul li:hover ul li a:hover {

        background-color: #E1E1E1;

    }

 

    #divMenu a:hover {

        font-weight: bold;

    }
  
</style>
<body >
<!--
<table  cellspacing="0" cellpadding="" width="100%" >
    <tr>
        <td align="left" valign="middle"  style="width: 100%; height: 30px;" class="accordion_headings header_highlight tabledesign">
           &nbsp;&nbsp; &nbsp;&nbsp; Transaction
           <ul class="navbar">
           <li>Itineraries</li>
           <li>View Cancellations</li>
           <li>Travel Calender</li>
           </ul>
           </td>
    </tr>
    <tr>
      <td align="left" valign="middle" class="accordion_headings tabledesign" style="width: 100%; height: 30px">
           &nbsp;&nbsp; &nbsp;&nbsp; Accounts
             <ul >
           <li>Account Status</li>
           <li>Account Statement</li>
       
           </ul>
           </td>
    </tr>
    <tr>
         <td align="left" valign="middle" class="accordion_headings tabledesign" style="width: 100%; height: 30px">
           &nbsp;&nbsp; &nbsp;&nbsp; Recharge
             <ul >
           <li>Net Banking</li>
           <li>Credit/Debit Card</li>
           <li>Cash Card</li>
           <li>Deposite Update Request</li>
           <li>Credit Recharge List</li>
           <li>View Recharge Status</li>
       
           </ul></td>
    </tr>
    <tr>
        <td align="left" valign="middle" class="accordion_headings tabledesign" style="width: 100%; height: 30px">
           &nbsp;&nbsp; &nbsp;&nbsp; My Profile
             <ul >
           <li>My Profile</li>
           <li>Change Password</li>
           <li>Sub Users</li>
           <li>Mark-Up</li>
          
       
           </ul>
    </tr>

    <tr>
        <td align="left" valign="middle" class="accordion_headings tabledesign" style="width: 100%; height: 30px">
           &nbsp;&nbsp; &nbsp;&nbsp; Sales
             <ul >
           <li>Sales Report</li>
           <li>Sales Statement</li>
         
           </ul>
    </tr>

   
  
</table>  

-->
<table width="45%">

<tr><td width="100%" align="left"><div id="divMenu" width="50%">


    <ul >

        <li ><a href="#">Transaction</a>

        <ul>

            <li><a href="#">Itineraries</a></li>

            <li><a href="#">View Cancellations</a></li>

            <li><a href="#">Travel Calender</a></li>

        </ul>

            </li>

        <li><a href="#">Accounts</a>

                <ul>

            <li><a href="#">Account Status</a></li>

            <li><a href="#">Account Statement</a></li>

          

        </ul></li>

        <li><a href="#">Recharge</a>

                <ul>

            <li><a href="#">Net Banking</a></li>
               <li><a href="#">Credit/Debit Card</a></li>
           <li><a href="#">Cash Card</a></li>
           <li><a href="#">Deposite Update Request</a></li>
           <li><a href="#">Credit Recharge List</a></li>
           <li><a href="#">View Recharge Status</a></li>

           

        </ul></li>

      

        <li><a href="#">My Profile</a>

                <ul>

            <li><a href="#">My Profile</a></li>
           <li><a href="#">Change Password</a></li>
           <li><a href="#">Sub Users</a></li>
           <li><a href="#">Mark-Up</a></li>

        </ul></li>

        <li><a href="#">Sales</a>

          <ul>

            <li><a href="#">Sales Report</a></li>
           <li><a href="#">Sales Statement</a></li>
           

        </ul></li>

    </ul>

    </div></td></tr>
</table>

</body>