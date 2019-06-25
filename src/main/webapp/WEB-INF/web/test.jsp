 <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 <!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Spring Boot + Jasper Reports</title>
<link href="//fonts.googleapis.com/css?family=Raleway:400,300,600"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/skeleton.css">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="css/custom.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
	* {
	  box-sizing: border-box;
	}
	
	body {
	  background-color: #f1f1f1;
	}
	
	#regForm {
	  background-color: #ffffff;
	  margin: 100px auto;
	  font-family: Raleway;
	  padding: 40px;
	  width: 70%;
	  min-width: 300px;
	}
	
	h1 {
	  text-align: center;  
	}
	
	input {
	  padding: 10px;
	  width: 100%;
	  font-size: 17px;
	  font-family: Raleway;
	  border: 1px solid #aaaaaa;
	}
	
	/* Mark input boxes that gets an error on validation: */
	input.invalid {
	  background-color: #ffdddd;
	}
	
	/* Hide all steps by default: */
	.tab {
	  display: none;
	}
	
	button {
	  background-color: #4CAF50;
	  color: #ffffff;
	  border: none;
	  padding: 10px 20px;
	  font-size: 17px;
	  font-family: Raleway;
	  cursor: pointer;
	}
	
	button:hover {
	  opacity: 0.8;
	}
	
	#prevBtn {
	  background-color: #bbbbbb;
	}
	
	/* Make circles that indicate the steps of the form: */
	.step {
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbbbbb;
	  border: none;  
	  border-radius: 50%;
	  display: inline-block;
	  opacity: 0.5;
	}
	
	.step.active {
	  opacity: 1;
	}
	
	/* Mark the steps that are finished and valid: */
	.step.finish {
	  background-color: #4CAF50;
	}
	</style>
<body>

	
	<div class="container">
		<div class="row">
			<div class="eleven column">
				<form action="/report" method="POST" target="_blank">
					<input class="button-primary" type="submit" value="Imprimir">
				</form>
			</div>
		</div>
	</div>

	<button onclick="fn()">sssss</button>
	<button  onclick="window.open('http://localhost:8080/jasperserver/flow.html?j_username=jasperadmin&j_password=jasperadmin&_flowId=viewReportFlow&reportUnit=/reports/keepReport/testReport&decorate=no&output=pdf');">testttt</button>
	<form id="regForm" action="/..">
		<h1>Register:</h1>
		<!-- One "tab" for each step in the form: -->
		<div class="tab">Name:
		  <p><input placeholder="First name..." oninput="this.className = ''" name="fname"></p>
		  <p><input placeholder="First name..." oninput="this.className = ''" name="fname"></p>
		  <p><input placeholder="First name..." oninput="this.className = ''" name="fname"></p>
		  <p><input placeholder="Last name..." oninput="this.className = ''" name="lname"></p>
		</div>
		<div class="tab">Contact Info:
		  <p><input placeholder="E-mail..." oninput="this.className = ''" name="email"></p>
		  <p><input placeholder="Phone..." oninput="this.className = ''" name="phone"></p>
		</div>
		<div class="tab">Birthday:
		  <p><input placeholder="dd" oninput="this.className = ''" name="dd"></p>
		  <p><input placeholder="mm" oninput="this.className = ''" name="nn"></p>
		  <p><input placeholder="yyyy" oninput="this.className = ''" name="yyyy"></p>
		</div>
		<div class="tab">Login Info:
		  <p><input placeholder="Username..." oninput="this.className = ''" name="uname"></p>
		  <p><input placeholder="Password..." oninput="this.className = ''" name="pword" type="password"></p>
		</div>
		<div style="overflow:auto;">
		  <div style="float:right;">
			<button type="button" id="prevBtn" onclick="nextPrev(-1)">ย้อนกลับ</button>
			<button type="button" id="nextBtn" onclick="nextPrev(1)">ถัดไป</button>
		  </div>
		</div>
		<!-- Circles which indicates the steps of the form: -->
		<div style="text-align:center;margin-top:40px;">
		  <span class="step"></span>
		  <span class="step"></span>
		  <span class="step"></span>
		  <span class="step"></span>
		</div>
	  </form>
	  <script>
		var currentTab = 0; // Current tab is set to be the first tab (0)
		showTab(currentTab); // Display the current tab
		
		function showTab(n) {
		  // This function will display the specified tab of the form...
		  var x = document.getElementsByClassName("tab");
		  x[n].style.display = "block";
		  //... and fix the Previous/Next buttons:
		  if (n == 0) {
			document.getElementById("prevBtn").style.display = "none";
		  } else {
			document.getElementById("prevBtn").style.display = "inline";
		  }
		  if (n == (x.length - 1)) {
			document.getElementById("nextBtn").innerHTML = "Submit";
		  } else {
			document.getElementById("nextBtn").innerHTML = "Next";
		  }
		  //... and run a function that will display the correct step indicator:
		  fixStepIndicator(n)
		}
		
		function nextPrev(n) {
		  // This function will figure out which tab to display
		  var x = document.getElementsByClassName("tab");
		  // Exit the function if any field in the current tab is invalid:
		  if (n == 1 && !validateForm()) return false;
		  // Hide the current tab:
		  x[currentTab].style.display = "none";
		  // Increase or decrease the current tab by 1:
		  currentTab = currentTab + n;
		  // if you have reached the end of the form...
		  if (currentTab >= x.length) {
			// ... the form gets submitted:
			document.getElementById("regForm").submit();
			return false;
		  }
		  // Otherwise, display the correct tab:
		  showTab(currentTab);
		}
		
		function validateForm() {
		  // This function deals with validation of the form fields
		  var x, y, i, valid = true;
		  x = document.getElementsByClassName("tab");
		  y = x[currentTab].getElementsByTagName("input");
		  // A loop that checks every input field in the current tab:
		  for (i = 0; i < y.length; i++) {
			// If a field is empty...
			if (y[i].value == "") {
			  // add an "invalid" class to the field:
			  y[i].className += " invalid";
			  // and set the current valid status to false
			  valid = false;
			}
		  }
		  // If the valid status is true, mark the step as finished and valid:
		  if (valid) {
			document.getElementsByClassName("step")[currentTab].className += " finish";
		  }
		  return valid; // return the valid status
		}
		
		function fixStepIndicator(n) {
		  // This function removes the "active" class of all steps...
		  var i, x = document.getElementsByClassName("step");
		  for (i = 0; i < x.length; i++) {
			x[i].className = x[i].className.replace(" active", "");
		  }
		  //... and adds the "active" class on the current step:
		  x[n].className += " active";
		}
		</script>
</body>

<script>
function fn(){
	

	window.open('https://www.youtube.com','_blank');

}
</script>
</html> 