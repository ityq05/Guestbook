<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="guest.*"%>
 
<jsp:useBean id="guestDao" type="guest.GuestDao" scope="request" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>Create Session</title>
        <meta charset="utf-8">
  		<title>jQuery UI Datepicker - Default functionality</title>
  		<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
  		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  		<link rel="stylesheet" href="/resources/demos/style.css">
  		<script>
 	 	$(function() {
    	$( "#datepicker" ).datepicker();
  		});
  		</script>
  		
  		

  		
    </head>
 
    <body>
        <form method="POST" action="guest.html">
            <h4>Create Session</h4>
			<table border="1">
		<tr>
  			<td>Lecturer Name:</td>
  			<td>
  			<select name="lectname">
			<option value="Dr Liew Pak San">Dr Liew Pak San</option>
			<option value="Dr Steven">Dr Steven</option>
			<option value="Dr Loo Poh Kok">Dr Loo Poh Kok</option>
			<option value="Mr Frankie">Mr Frankie</option>
			<option value="Dr Sye Long">Dr Sye Loon</option>
			</select>
  			</td>
		</tr>
		<tr>
  			<td>Venue:</td>
  			<td><input type="text" name="venue" /></td>
		</tr>
		<tr>
  			<td>Date:</td>
  			<td><input type="text" name="date" id="datepicker"/></td>
		</tr>
		<tr>
  			<td>Time:</td>
  			<td><input type="text" name="time" /></td>
		</tr>
		<tr>
  			<td>Frequency:</td>
  			<td><input type="radio" name="freq" value="Once">Once<br>
  			<input type="radio" name="freq" value="Every week">Once every week</td>
		</tr>
		<tr>
  			<td>Max Attendance:</td>
  			<td><input type="text" name="maxatt" /></td>
		</tr>
		<tr>
  			<td>Compulsory:</td>
  			<td><input type="checkbox" name="compul" value="yes"/></td>
		</tr>
		<tr>
  			<td><input type="submit" value="Add"/></td>
  			
 		</tr>
		</table>
        </form>

 
        <h4>Team helloWorld</h4>
      	<button onclick="location.href='admin.html'"/> View Sessions Created</button>
              
     </body>
 </html>