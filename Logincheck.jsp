<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="de.hwg_lu.bw4s.beans.BenutzerBean" %>
<%@ page import="de.hwg_lu.bwi.jdbc.PostgreSQLAccessBib" %>
<%@ page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Check - Appl</title>
    <link rel="stylesheet" type="text/css" href="cssLogincheck.css">
</head>
<body>
    <h1>Login Check - Appl</h1>

    <%-- Überprüfen, ob die E-Mail-Adresse gesendet wurde --%>
    <% String email = request.getParameter("email");
       if (email == null || email.isEmpty()) { %>
        <p class="errorMessage">Bitte geben Sie Ihre E-Mail-Adresse ein.</p>
    <% } else if (!email.contains("@")) { %>
        <p class="errorMessage">Ungültige E-Mail-Adresse. Bitte geben Sie eine gültige E-Mail-Adresse ein.</p>
    <% } else { %>
        <p class="successMessage">Anmeldung erfolgreich! Willkommen, <%= email %>!</p>
    <% } %>

<%
    // BenutzerBean erstellen und Daten aus dem Formular übernehmen
    BenutzerBean benutzer = new BenutzerBean();
    benutzer.setEmail(request.getParameter("email"));
    benutzer.setPassword(request.getParameter("password"));

    // Hier sollte die Überprüfung der Anmeldedaten stattfinden (z. B. Überprüfung der Kombination von E-Mail und Passwort).
    // Wenn die Anmeldedaten erfolgreich sind, kann der Benutzer auf die Startseite weitergeleitet werden.

    // Überprüfen, ob E-Mail und Passwort eingegeben wurden
    if (benutzer.getEmail() != null && !benutzer.getEmail().isEmpty() &&
        benutzer.getPassword() != null && !benutzer.getPassword().isEmpty()) {
        // Hier die Überprüfung der Anmeldedaten in der Datenbank durchführen
        PostgreSQLAccessBib dbAccess = new PostgreSQLAccessBib();
        if (dbAccess.pruefeAnmeldedatenInDatenbank(benutzer.getEmail(), benutzer.getPassword())) {
            // Anmeldung erfolgreich
            response.sendRedirect("startseite.jsp"); // Server-seitige Weiterleitung zur Startseite
        } else {
            // Anmeldung fehlgeschlagen
            response.sendRedirect("login.jsp"); // Server-seitige Weiterleitung zur Anmeldeseite
        }
    } else {
        // Anmeldung fehlgeschlagen
        response.sendRedirect("login.jsp"); // Server-seitige Weiterleitung zur Anmeldeseite
    }
    %>

    

    <a href="login.jsp">Zurück zur Anmeldung</a>
</body>
</html>
