<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="de.hwg_lu.bw4s.beans.BenutzerBean" %>
<%@ page import="de.hwg_lu.bwi.jdbc.PostgreSQLAccessBib" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registrierung Check</title>
    <link rel="stylesheet" type="text/css" href="cssRegistrierungCheck.css">
</head>
<body>
    <h1>Registrierung Check</h1>

    <%-- Überprüfen, ob alle Felder belegt wurden --%>
    <% String vorname = request.getParameter("vorname");
       String nachname = request.getParameter("nachname");
       String geschlecht = request.getParameter("geschlecht");
       String email = request.getParameter("email");
       String geburtsdatum = request.getParameter("geburtsdatum");
       String telefonnummer = request.getParameter("telefonnummer");
       String password = request.getParameter("password");
       
       if (vorname == null || vorname.isEmpty() ||
           nachname == null || nachname.isEmpty() ||
           geschlecht == null || geschlecht.isEmpty() ||
           email == null || email.isEmpty() ||
           geburtsdatum == null || geburtsdatum.isEmpty() ||
           telefonnummer == null || telefonnummer.isEmpty() ||
           password == null || password.isEmpty()) {
           %>
        <p class="errorMessage">Bitte füllen Sie alle Felder aus.</p>
    <% } else if (!email.contains("@")) { %>
        <p class="errorMessage">Ungültige E-Mail-Adresse. Bitte geben Sie eine gültige E-Mail-Adresse ein.</p>
    <% } else {
        // Hier findet die Überprüfung des Passworts und die Registrierung des Benutzers statt.
        // Beispielsweise können Sie eine Benutzerdatenbank verwenden und den neuen Benutzer in die Datenbank eintragen.
        // Weitere Überprüfungen und Validierungen können hier ebenfalls durchgeführt werden.

        // Beispiel: Angenommen die Registrierung ist immer erfolgreich, wenn alle Felder belegt wurden
        // Hier könnte der Code zur Datenbank-Eintragung stattfinden

        // BenutzerBean erstellen und Daten aus dem Formular übernehmen
        BenutzerBean benutzer = new BenutzerBean();
        benutzer.setVorname(vorname);
        benutzer.setNachname(nachname);
        benutzer.setGeschlecht(geschlecht);
        benutzer.setEmail(email);
        benutzer.setGeburtsdatum(geburtsdatum);
        benutzer.setTelefonnummer(telefonnummer);
        benutzer.setPassword(password);

        // PostgreSQLAccessBib erstellen und Benutzer in die Datenbank eintragen
        PostgreSQLAccessBib dbAccess = new PostgreSQLAccessBib();
        boolean registrierungErfolgreich = dbAccess.insertBenutzer(benutzer);

        // Anschließend Weiterleitung zur Bestätigungsseite oder Anmeldeseite
        if (registrierungErfolgreich) {
            response.sendRedirect("bestaetigungsseite.jsp");
        } else {
            // Anmeldung fehlgeschlagen
            // Hier könnten Sie eine Fehlermeldung anzeigen, z. B. "Registrierung fehlgeschlagen. Bitte überprüfen Sie Ihre Eingaben."
            // Ansonsten können Sie den Benutzer zur Registrierungsseite zurückleiten, um erneut seine Daten einzugeben.
            response.sendRedirect("registrierung.jsp"); // Server-seitige Weiterleitung zur Registrierungsseite
        }
    } %>

    <a href="login.jsp">Zurück zur Anmeldung</a>
</body>
</html>
