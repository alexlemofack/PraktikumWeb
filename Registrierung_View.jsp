<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Registrierung</title>
<link rel="stylesheet" type="text/css" href="../css/login_registrieren.css">
</head>
<body>

	<div class="wrapper">
		<form action="" method="get">
			<h1>Registrierung</h1>
			<div class="input-box">
				<input type="text" name="vorname" placeholder="Vorname" required>
			</div>
			<div class="input-box">
				<input type="text" name="nachname" placeholder="Nachname" required>
			</div>
			<div class="input-box">
				<input type="date" name="geburtsdatum" placeholder="tt/mm/jjjj" required>
			</div>
			<div class="input-box">
				<input type="tel" name="telefonnummer" placeholder="Telefonnummer"
					required>
			</div>

			<div class="input-box">
				<input type="email" name="email" placeholder="E-mail" required>
			</div>
			<div class="input-box">
				<input type="password" name="password" placeholder="Password"
					required>
			</div>
			
			<input type="radio" name="geschlecht" value="männlich" >Männlich 
			<input type="radio" name="geschlecht" value="weiblich"> Weiblich 
			<input type="radio" name="geschlecht" value="divers"> Divers


			<button type="submit" class="btn">Registrieren</button>
			<div class="register-link">
				<p>
					Haben Sie schon ein Konto?<br> Melden Sie sich bitte <a
						href="#">hier</a> an
				</p>
			</div>
	</div>
	</form>
</body>
</html>
