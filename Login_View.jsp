<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Seite</title>
 
<link type="text/css" rel="stylesheet" href="../css_praktikum/log_reg.css" />

</head>
<body>

	<div class="wrapper">
		<form action="">
			<h1>Anmeldung</h1>
			<div class="input-box">
				<input type="email" name="email" placeholder="E-Mail" required>
			</div>
			<div class="input-box">
				<input type="password" name="password" placeholder="Password" required>
			</div>
			<div class="remember-forgot">
				<label><input type="checkbox"> Erinnere mich</label> <a
					href="#"> Passwort vergessen?</a>
			</div>

			<button type="submit" class="btn">Anmelden</button>
			<div class="register-link">
				<p>
					Haben Sie noch kein Konto?<br> Registrieren Sie sich bitte <a href="../Views_praktikum/Registrierung_View.jsp">hier</a>
				</p>
			</div>
		</form>
	</div>
	
	<!-- <div class="footer-clean">
<footer>
            <div class="container">
                <div class="row justify-content-center">
                
                    <div class="item">
                        <h3>Studierende</h3>
                        <ul>
                            <li><a href="#">OpenOlat</a></li>
                            <li><a href="#">Hochschulportal</a></li>
                            <li><a href="#">Webmailclient</a></li>
                        </ul>
                    </div>
                    <div class="item">
                        <h3>Karriere</h3>
                        <ul>
                            <li><a href="#">Jobs</a></li>
                            <li><a href="#">Employee success</a></li>
                            <li><a href="#">Benefits</a></li>
                        </ul>
                    </div>
                    <div class="item">
                        <h3>Postanschrift</h3>
                        <ul>
                            <li>Bibliothek praktikum</li>
                            <li>Rheinhäuser Str. 103</li>
                            <li>68167 Mannheim</li>
                        </ul>
                    </div>
                    <div class="itemsocial">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                        <p class="copyright">Company Name © 2018</p>
                    </div>
                </div>
            </div>
        </footer> 
</div>
   -->

</body>
</html>