<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID" %>
<!DOCTYPE html>
<html>
<head>
    <title>Passwort zurücksetzen</title>
    <link rel="stylesheet" type="text/css" href="cssLogincheck.css">
</head>
<body>
    <h1>Passwort zurücksetzen</h1>

    <%-- Überprüfen, ob die E-Mail-Adresse gesendet wurde --%>
    <% String email = request.getParameter("email");
       if (email == null || email.isEmpty()) { %>
        <p class="errorMessage">Bitte geben Sie Ihre E-Mail-Adresse ein.</p>
    <% } else if (!email.contains("@")) { %>
        <p class="errorMessage">Ungültige E-Mail-Adresse. Bitte geben Sie eine gültige E-Mail-Adresse ein.</p>
    <% } else { %>
        <p class="successMessage">Ein Link zum Zurücksetzen des Passworts wurde an die angegebene E-Mail-Adresse gesendet.</p>
        <%-- Hier könnten Sie den Code zum Versenden der E-Mail mit dem Zurücksetzungslink einfügen --%>
        <%-- Beispiel: Erstellen Sie einen zufälligen Token und fügen Sie ihn als Parameter zum Zurücksetzen des Passworts in den Link ein --%>
        <% String resetToken = UUID.randomUUID().toString(); %>
        <%-- Hier könnten Sie den Link zum Zurücksetzen des Passworts in die E-Mail einfügen und den Token als Parameter übergeben --%>
        <%-- Beispiel: <a href="passwort_aendern.jsp?token=<%= resetToken %>">Passwort zurücksetzen</a> --%>
    <% } %>

    <a href="login.jsp">Zurück zur Anmeldung</a>
</body>
</html>
