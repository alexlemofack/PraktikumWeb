<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Seite</title><link type="text/css" rel="stylesheet" href="../css/login_registrieren.css" />

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
					Haben Sie noch kein Konto?<br> Registrieren Sie sich bitte <a href="#">hier</a>
				</p>
			</div>
		</form>


	</div>

</body>
</html>