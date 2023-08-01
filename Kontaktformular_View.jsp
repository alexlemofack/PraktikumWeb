<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kontaktformular</title>
<link type="text/css" rel="stylesheet" href="../css/login_registrieren.css" />

</head>
<body>
<div class="wrapper">
	<form>
		<h1>Kontaktformular</h1>
		
		<div class="input-box">
				<input type="text" name="name" placeholder="Name" required>
			</div>
		<div class="input-box">
				<input type="email" name="email" placeholder="E-Mail" required>
		</div>
		<div class="input-box">
				<input type="tel" name="telefonnummer" placeholder="Telefonnummer"
					required>
		</div>
		<div class="input-box">
				<textarea class="field"  placeholder="Message"
					required></textarea>
		</div>
		<button type="submit" class="btn">Senden</button>

	</form>
	</div>
</body>
</html>