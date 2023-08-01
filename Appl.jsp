<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registrierung Check - Appl</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Registrierung Check - Appl</h1>

    <%-- Überprüfen, ob alle Formularfelder gesendet wurden --%>
    <% String vorname = request.getParameter("vorname");
       String nachname = request.getParameter("nachname");
       String geschlecht = request.getParameter("geschlecht");
       String email = request.getParameter("email");
       String geburtsdatum = request.getParameter("geburtsdatum");
       String telefonnummer = request.getParameter("telefonnummer");
       String passwort = request.getParameter("passwort");
       String id = request.getParameter("id");

       // Überprüfen, ob alle Pflichtfelder ausgefüllt sind und ob die E-Mail-Adresse das Zeichen '@' enthält
       if (vorname.isEmpty() || nachname.isEmpty() || geschlecht.isEmpty() || geburtsdatum.isEmpty()
           || telefonnummer.isEmpty() || passwort.isEmpty() || id.isEmpty()) {

           // Weiterleitung zur Registrierungsseite mit Fehlermeldung
           response.sendRedirect("registrierung.jsp?error=1");
       } else if (!email.contains("@")) {
           // Weiterleitung zur Registrierungsseite mit Fehlermeldung für ungültige E-Mail-Adresse
           response.sendRedirect("registrierung.jsp?error=2");
       } else {
           // Hier kannst du den Code für die Speicherung der Daten in der Datenbank einfügen

           // Weiterleitung zur Anmeldungsseite nach erfolgreicher Registrierung
           response.sendRedirect("login.jsp?success=1");
       }
    %>

</body>
</html>
