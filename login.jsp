<!--
<% response.addHeader("X-FRAME-OPTIONS", "DENY"); %>
<%@ page contentType="text/html;charset=iso8859-7" %>
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
	
	<link rel="stylesheet" type="text/css" href="login.css">
	
	<meta name="viewport" content="user-scalable=no, width=device-width">
	<meta name="apple-mobile-web-app-capable" content="yes">
	
</head>

<body class="page" onload="document.querySelector('#j_username').focus()">

		
	<div class="container">

		<div class="header">
			
			<img class="ntua_image" src="pyrforos_big_simplified.svg"/>
			<img class="noc_image" src="noc.svg"/>
			
			<div class="title">
				<span class="title_yellow">login</span>.ntua.gr
			</div>

				

		</div>

		<div class="box">

			<p class="content">
			Καλώς ήλθατε στην Υπηρεσία Κεντρικής Ταυτοποίησης του Εθνικού Μετσόβιου Πολυτεχνείου. Χρησιμοποιώντας την μπορείτε να αποκτήσετε πρόσβαση στις διάφορες συνεργαζόμενες υπηρεσίες εύκολα και με ασφαλή τρόπο εισάγοντας τα στοιχεία σας μία μόνο φορά στην παρούσα σελίδα.
			</p>
			
			<div class="warning">
				<div class="warning_sign">⚠</div>
				<p class="content">
					<b>Προσοχή:</b> Είναι πολύ πιθανό να φτάσατε εδώ πιέζοντας το πλήκτρο "back" στον φυλλομετρητή σας 
					ή από το ιστορικό του φυλλομετρητή σας ή μέσω κάποιου bookmark που είχατε φυλάξει.Δυστυχώς όμως η απευθείας επίσκεψη 
					σε αυτή την σελίδα δεν έχει νόημα και δεν πρόκειται να λειτουργήσει. Για να χρησιμοποιήσετε κάποια υπηρεσία που σας 
					ενδιαφέρει, επισκεφθείτε πρώτα την σελίδα της υπηρεσίας αυτής και ακολουθήστε τις οδηγίες.
				</p>
			</div>
	  
			<div class="login">

			<!--- action below is the login server URI --->
			
			<form id="login_form" action="https://login.ntua.gr/idp/j_security_check" method="post" autocomplete="off">
			
				<div class="content_bigger">
				Έχετε ζητήσει να συνδεθείτε σε υπηρεσία που απαιτεί την ταυτοποίησή
				σας ως έγκυρο χρήστη του ΕΜΠ. Παρακαλούμε εισαγάγετε τα στοιχεία του
				κωδικού που σας έχει δοθεί από τις κεντρικές υπηρεσίες του ιδρύματος.
				</div>
				<div class="warning">
					<div class="warning_sign">⚠</div>
					<p class="content"><b>H ταυτοποίηση απέτυχε.</b> Παρακαλούμε πολύ δοκιμάστε ξανά προσέχοντας να πληκτρολογήσετε σωστά το όνομα χρήστη και το συνθηματικό σας. Δείτε αν τυχόν έχετε πατήσει το πλήκτρο Caps Lock και προσέξτε την γλώσσα που έχετε στο πληκτρολόγιο.</p>
				</div>
			
				<div class="fields">
					<label class="label">
						<span>Username</span>
						<input type="text" name="j_username" id="j_username" size="20" class="inputfields">
					</label>
					<label class="label">
						<span>Password</span>
						<input type="password" name="j_password" id="j_password" size="24" class="inputfields">
					</label>
					<input class="submitbutton" value="Είσοδος &raquo;" type="submit" name="submit"/>

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

		

		</div>

		<div class="footer">

			<div class="footer-content">
			© 2014 Εθνικό Μετσόβιο Πολυτεχνείο &#8226; Ανάπτυξη &amp; λειτουργία: <a target="_blank" href="http://www.noc.ntua.gr/">Κέντρο Δικτύων ΕΜΠ</a>

			</div>

		</div>

	</div>
</body>

</html>
