<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registrierung</title>
    <link rel="stylesheet" type="text/css" href="">
</head>
<body>
    <h1>Registrierung</h1>
    <form id="registrierungsFormular" action="registrierungcheck.jsp" method="post">
        <table>
            <tr>
                <td>Vorname:</td>
                <td><input type="text" name="vorname" required></td>
            </tr>
            <tr>
                <td>Nachname:</td>
                <td><input type="text" name="nachname" required></td>
            </tr>
            <tr>
                <td>Geschlecht:</td>
                <td>
                    <select name="geschlecht" required>
                        <option value="">Bitte auswählen</option>
                        <option value="männlich">Männlich</option>
                        <option value="weiblich">Weiblich</option>
                        <option value="divers">Divers</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>E-Mail-Adresse:</td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
                <td>Passwort:</td>
                <td><input type="password" name="password" required></td>
            </tr>
            <tr>
                <td>Geburtsdatum:</td>
                <td><input type="date" name="geburtsdatum" required></td>
            </tr>
            <tr>
                <td>Telefonnummer:</td>
                <td><input type="tel" name="telefonnummer" required></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Registrieren" class="submitButton"></td>
            </tr>
        </table>
    </form>

    <a href="login.jsp">Zurück zur Anmeldung</a>

    <script>
        // JavaScript Funktion zum Überprüfen, ob alle Felder ausgefüllt sind
        function checkForm() {
            var form = document.getElementById("registrierungsFormular");
            var elements = form.elements;
            for (var i = 0; i < elements.length; i++) {
                if (elements[i].hasAttribute("required") && elements[i].value === "") {
                    alert("Bitte füllen Sie alle Felder aus.");
                    return false;
                }
            }
            return true;
        }

        // Event Listener für den Absenden-Button
        var submitButton = document.querySelector(".submitButton");
        submitButton.addEventListener("click", function(event) {
            if (!checkForm()) {
                event.preventDefault();
            }
        });
    </script>
</body>
</html>