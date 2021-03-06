<!--
<% response.addHeader("X-FRAME-OPTIONS", "DENY"); %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>

<%@ page import="edu.internet2.middleware.shibboleth.idp.util.HttpServletHelper" %>
<%@ page import="org.opensaml.util.storage.StorageService" %>
<%@ page import="edu.internet2.middleware.shibboleth.idp.authn.LoginContext" %>

<%
   StorageService storageService = HttpServletHelper.getStorageService(application);
   LoginContext loginContext = HttpServletHelper.getLoginContext(storageService,application, request);
%>
-->
<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	
	<title>ΕΜΠ - Υπηρεσία Ταυτοποίησης</title>
	
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/login.css"> 
	
	<meta name="viewport" content="user-scalable=no, width=device-width">
	<meta name="apple-mobile-web-app-capable" content="yes">
	
</head>

<body class="page" onload="document.querySelector('#j_username').focus()">

		
	<div class="container">

		<div class="header">
			
			<img class="ntua_image" src="<%= request.getContextPath() %>/pyrforos_big_simplified.svg"/>
			<img class="noc_image" src="<%= request.getContextPath() %>/noc.svg"/>
			
			<div class="title">
				<span class="title_yellow">login</span>.ntua.gr
			</div>

				

		</div>

		<div class="box">

			<p class="content">
			Καλώς ήλθατε στην Υπηρεσία Κεντρικής Ταυτοποίησης του Εθνικού Μετσόβιου Πολυτεχνείου. Χρησιμοποιώντας την μπορείτε να αποκτήσετε πρόσβαση στις διάφορες συνεργαζόμενες υπηρεσίες εύκολα και με ασφαλή τρόπο εισάγοντας τα στοιχεία σας μία μόνο φορά στην παρούσα σελίδα.
			</p>
			<% if (loginContext == null) { 	%>
				<div class="warning">
					<div class="warning_sign"><img class="warning_icon" src="<%= request.getContextPath() %>/warning.svg"/></div>
					<p class="content">
						<b>Προσοχή:</b> Είναι πολύ πιθανό να φτάσατε εδώ πιέζοντας το πλήκτρο "back" στον φυλλομετρητή σας 
						ή από το ιστορικό του φυλλομετρητή σας ή μέσω κάποιου bookmark που είχατε φυλάξει.Δυστυχώς όμως η απευθείας επίσκεψη 
						σε αυτή την σελίδα δεν έχει νόημα και δεν πρόκειται να λειτουργήσει. Για να χρησιμοποιήσετε κάποια υπηρεσία που σας 
						ενδιαφέρει, επισκεφθείτε πρώτα την σελίδα της υπηρεσίας αυτής και ακολουθήστε τις οδηγίες.
					</p>
				</div>
	  		<% } 
	  		else { 
	  		%>
			<div class="login">

				<!--- action below is the login server URI --->
				<% if(request.getAttribute("actionUrl") != null){ %>
					<form id="login_form" action="<%=request.getAttribute("actionUrl")%>" method="post" autocomplete="off">
				<% } 
				else {  
				%> 
					<form action="j_security_check" method="post" autocomplete="off">
				<% } %>
					<div class="content_bigger">
					<!--Έχετε ζητήσει να συνδεθείτε σε υπηρεσία που απαιτεί την ταυτοποίησή
					σας ως έγκυρο χρήστη του ΕΜΠ. Παρακαλούμε εισαγάγετε τα στοιχεία του
					κωδικού που σας έχει δοθεί από τις κεντρικές υπηρεσίες του ιδρύματος.-->
					</div>
					<% if ("true".equals(request.getAttribute("loginFailed"))) { %>
					<div class="warning">
						<div class="warning_sign"><img class="warning_icon" src="<%= request.getContextPath() %>/warning.svg"/></div>
						<p class="content"><b>H ταυτοποίηση απέτυχε.</b> <!--Παρακαλούμε πολύ δοκιμάστε ξανά προσέχοντας να πληκτρολογήσετε σωστά το όνομα χρήστη και το συνθηματικό σας. Δείτε αν τυχόν έχετε πατήσει το πλήκτρο Caps Lock και προσέξτε την γλώσσα που έχετε στο πληκτρολόγιο.--> Πληκτρολογήστε ξανά τα στοιχεία σας προσέχοντας τη γλώσσα πληκτρολογίου και την επιλογή κεφαλαίων ή πεζών.</p>
					</div>
					<% } %>
					<div class="fields">
						<label class="label">
							<span>Username</span>
							<input type="text" name="j_username" id="j_username" size="20" class="inputfields">
						</label>
						<label class="label">
							<span>Password</span>
							<input type="password" name="j_password" id="j_password" size="24" class="inputfields">
						</label>
						<input class="submitbutton" value="Είσοδος" type="submit" name="submit"/>
	
					</div>
				</form>
			
			</div>


		

			<div class="note">
	
			
				<div class="content-small" style="margin-top:0px; margin-bottom:6px;">
				Έχοντας ταυτοποιηθεί επιτυχώς θα έχετε τη δυνατότητα να συνδεθείτε στις λοιπές συνεργαζόμενες υπηρεσίες χωρίς να χρειαστεί να εισαγάγετε ξανά τα στοιχεία σας <b>μέχρι να κλείσετε εντελώς το φυλλομετρητή (web browser) σας</b>.
				</div>
	
				<div class="content-small" style="margin-top:0px; margin-bottom:10px;">
				Για την προστασία των προσωπικών σας δεδομένων και τη αποτροπή μη εξουσιοδοτημένης χρήσης από τρίτους, <b>φροντίστε να κλείσετε όλα τα παράθυρα του φυλλομετρητή σας όταν ολοκληρώσετε την εργασία σας.</b>
				</div>
	
			</div>
			<% } %>
		

		</div>

		<div class="footer">

			<div class="footer-content">
			© 2015 Εθνικό Μετσόβιο Πολυτεχνείο &#8226; Ανάπτυξη &amp; λειτουργία: <a target="_blank" href="http://www.noc.ntua.gr/">Κέντρο Δικτύων ΕΜΠ</a>

			</div>

		</div>

	</div>
</body>

</html>
