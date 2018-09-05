<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/homeStyle.css">

</head>

<body>
	<div>
		<h1 style="padding-left:3em">    Welcome to AirD </h1><hr>
	</div>
	<a id="signIn" href="#signIn">Sign In</a>
	<a id="signUp" href="http://localhost:8080/AirDN/register.jsp">Sign Up</a>
	<br><br><br><br>
	
	<div class="navbar" >
  <!-- Round trip button, show round trip menu on click -->
	  	<div class="dropdown">
	  		<button class="dropbtn" id="rtbtn" onclick="roundTripFunc()">Round-Trip
	  		</button>
	   <!-- Round trip dropdown menu -->
	  		<div class="dropdown-content" id="roundTripDropdown" style="width: 880px;height: 280px;background-color: #2A91C1;">
		  		<br>
			  	<input id="source" placeholder="FROM" />
		  		<input id="destination" placeholder="TO" />
		  		<input class="departDate" placeholder="DEPART" />
		  		<input id="returnDate" placeholder="RETURN" />
 	  		</div>
	  	</div>
   <!-- One way button, show one way dropdown menu on click -->
	  <div class="dropdown">
	  	<button class="dropbtn" id="owbtn" onclick="oneWayFunc()">One-Way
	  	</button>
  <!-- One way menu  -->
	  	<div class="dropdown-content" id="oneWayDropdown" style="position:absolute; left:133px; width: 880px;height: 280px;background-color: #2A91C1;">
		  	<br>
	  		<input id="source" placeholder="FROM" />
	  		<input id="destination" placeholder="TO" />
	  		<input class="departDate" placeholder="DEPART" />
	  	</div>
	  </div>
  <!-- My Bookings button, show a dropdown on click -->
	  <div class="dropdown">
	    <button class="dropbtn" id="mbbtn" onclick="myBookingFunc()">My Bookings
	  	</button>
  <!-- Dropdown menu on click MyBookings -->
    	<div class="dropdown-content" id="myBookingsDropdown" style="position:absolute; left:133px; width: 880px;height: 280px;background-color: #2A91C1;">
    			<br>
	    		<center style="color:white;">Access a flight booking</center><br>
	    		<input style="position:relative; left:10px; width:170px;" placeholder="BOOKING REFERENCE"> <br><br>
    			<input style="position:relative; left:10px; width:170px;" placeholder="PASSENGER LAST NAME"><br><br>
    			<button style="position:relative; left:120px;">Find</button>
    	</div>
  	  </div>   
  <!-- button and dropdown menu for flight status check -->  
  	  <div class="dropdown">
  	    <button class="dropbtn" id="fsbtn" onclick="flightStatusFunc()">Flight Status
  		</button>
  		<div class="dropdown-content" id="flightStatusDropdown" style="position:absolute; left:133px; width: 880px;height: 280px;background-color: #2A91C1;">
    			<br>
    			<input id="flightNum" placeholder="FLIGHT NUMBER" />
    			<input id="date" placeholder="DATE" />
    	</div>
  	  </div>
  	  
  	  
	 
  	</div>
  	
  	<hr>
	
	<div style="position:relative; top:250px;">
		<div id="company" style="padding-left:1em;">Our Company
			<br>
			<a class="websites" href="#">About us</a>
		</div>
		<div id="contact">Contact Us
			<br>
			Email<a class="websites" href="#"> deason325@outlook.com</a>	
		</div>
	</div>
	
<script>
	function roundTripFunc(){
		document.getElementById("roundTripDropdown").classList.toggle("show");
		document.getElementById("oneWayDropdown").classList.remove("show");
	    document.getElementById("myBookingsDropdown").classList.remove("show");
		document.getElementById("flightStatusDropdown").classList.remove("show");
		document.getElementById("rtbtn").style.backgroundColor="#2A91C1";
		document.getElementById("owbtn").style.backgroundColor="#333";
		document.getElementById("mbbtn").style.backgroundColor="#333";
		document.getElementById("fsbtn").style.backgroundColor="#333";
	}
	function oneWayFunc(){
		document.getElementById("roundTripDropdown").classList.remove("show");
		document.getElementById("oneWayDropdown").classList.toggle("show");
	    document.getElementById("myBookingsDropdown").classList.remove("show");
		document.getElementById("flightStatusDropdown").classList.remove("show");
		document.getElementById("rtbtn").style.backgroundColor="#333";
		document.getElementById("owbtn").style.backgroundColor="#2A91C1";
		document.getElementById("mbbtn").style.backgroundColor="#333";
		document.getElementById("fsbtn").style.backgroundColor="#333";
		
	}
	function myBookingFunc() {
		document.getElementById("roundTripDropdown").classList.remove("show");
		document.getElementById("oneWayDropdown").classList.remove("show");
	    document.getElementById("myBookingsDropdown").classList.toggle("show");
		document.getElementById("flightStatusDropdown").classList.remove("show");
		document.getElementById("rtbtn").style.backgroundColor="#333";
		document.getElementById("owbtn").style.backgroundColor="#333";
		document.getElementById("mbbtn").style.backgroundColor="#2A91C1";
		document.getElementById("fsbtn").style.backgroundColor="#333";
	}

	function flightStatusFunc(){
		document.getElementById("roundTripDropdown").classList.remove("show");
		document.getElementById("oneWayDropdown").classList.remove("show");
	    document.getElementById("myBookingsDropdown").classList.remove("show");
		document.getElementById("flightStatusDropdown").classList.toggle("show");
		document.getElementById("rtbtn").style.backgroundColor="#333";
		document.getElementById("owbtn").style.backgroundColor="#333";
		document.getElementById("mbbtn").style.backgroundColor="#333";
		document.getElementById("fsbtn").style.backgroundColor="#2A91C1";	}
</script>
	
	
	
</body>
</html>