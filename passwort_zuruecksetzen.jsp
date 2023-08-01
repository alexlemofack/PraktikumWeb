<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Passwort zurücksetzen</title>
    <link rel="stylesheet" type="text/css" href="../css_bib/pw.css">
</head>
<body>
    <h1>Passwort zurücksetzen</h1>

    <form action="passwort_zuruecksetzen_check.jsp" method="post">
        <label for="email">E-Mail-Adresse:</label>
        <input type="email" name="email" required>
        <input type="submit" value="Link zum Zurücksetzen senden" class="submitButton">
    </form>

    <a href="login.jsp">Zurück zur Anmeldung</a>
</body>
</html>
