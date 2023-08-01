<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Abonnement-Optionen</title>
    <link rel="stylesheet" type="text/css" href="../css_bib/AboStyles.css">
</head>
<body>
    <!-- �berschrift -->
    <h1>Abonnement-Optionen</h1>

    <!-- Tabelle zur Darstellung der Abonnement-Optionen mit hellbraunem Hintergrund -->
    <table class="abo-table">
    <!-- Erste Zeile f�r das Testabo, das �ber beide Spalten verbunden wird -->
    <tr>
        <th colspan="2" id="beschreibung" style="display: none;">
            <h2>7-t�giges Testabo</h2>
            <p>Kostenfrei nutzen</p>
            <p>Alle Vorteile des PREMIUM und Family Abonnements</p>
        </th>
    </tr>
    <!-- �berschrift f�r das Testabonnement -->
    <tr>
        <th colspan="2">Testabonnement</th>
    </tr>
    <!-- Checkbox f�r Testabonnement ausw�hlen -->
    <tr>
        <td colspan="2">
            <input type="checkbox" name="abo" value="7-t�giges Testabo" onclick="updateAusgew�hltesAbo(this)">
            7-t�giges Testabo kostenfrei nutzen, alle Vorteile des PREMIUM und Family Abonnements
        </td>
    </tr>
        <!-- Premium und Classic in der linken Spalte -->
        <tr>
            <td>
                <h2>PREMIUM (25 EUR)</h2>
                <ul>
                    <li>Parkm�glichkeiten</li>
                    <li>B�cher- und Medienausleihe</li>
                    <li>Lernraumreservation</li>
                </ul>
                <!-- Checkbox f�r PREMIUM ausw�hlen -->
                <input type="checkbox" name="abo" value="PREMIUM" onclick="updateAusgew�hltesAbo(this)">PREMIUM ausw�hlen
            </td>
            <td>
                <h2>CLASSIC (20 EUR)</h2>
                <ul>
                    <li>B�cher- und Medienausleihe</li>
                </ul>
                <!-- Checkbox f�r CLASSIC ausw�hlen -->
                <input type="checkbox" name="abo" value="CLASSIC" onclick="updateAusgew�hltesAbo(this)">CLASSIC ausw�hlen
            </td>
        </tr>
        <!-- Familieabonnements in der rechten Spalte -->
        <tr>
            <td>
                <h2>FAMILY PREMIUM (30 EUR)</h2>
                <ul>
                    <li>Parkm�glichkeiten</li>
                    <li>B�cher- und Medienausleihe</li>
                    <li>Lernraumreservation</li>
                </ul>
                <!-- Checkbox f�r FAMILY PREMIUM ausw�hlen -->
                <input type="checkbox" name="abo" value="FAMILY PREMIUM" onclick="updateAusgew�hltesAbo(this)">FAMILY PREMIUM ausw�hlen
            </td>
            <td>
                <h2>FAMILY CLASSIC (25 EUR)</h2>
                <ul>
                    <li>B�cher- und Medienausleihe</li>
                </ul>
                <!-- Checkbox f�r FAMILY CLASSIC ausw�hlen -->
                <input type="checkbox" name="abo" value="FAMILY CLASSIC" onclick="updateAusgew�hltesAbo(this)">FAMILY CLASSIC ausw�hlen
            </td>
        </tr>
    </table>

    <!-- �berschrift f�r das ausgew�hlte Abonnement -->
    <h2>Ausgew�hltes Abonnement:</h2>
    <!-- Anzeige des ausgew�hlten Abonnements -->
    <p id="aktuellesAbo">Kein Abonnement ausgew�hlt</p>

    <!-- Buttons f�r Abonnement-Aktionen -->
    <button type="button" onclick="abschlie�enAbo()">Ausgew�hltes Abonnement abschlie�en</button>
    <button type="button" onclick="aboWechseln()">Abonnement wechseln</button>
    <button type="button" onclick="aboK�ndigen()">Abonnement k�ndigen</button>

    <script>
        var gew�hltesAbo = "";

        // Funktion, die aufgerufen wird, wenn eine Checkbox angeklickt wird
        function updateAusgew�hltesAbo(checkbox) {
            var aboCheckboxes = document.getElementsByName("abo");

            // Durchlaufe alle Checkboxen und setze die anderen Checkboxen auf "unchecked"
            for (var i = 0; i < aboCheckboxes.length; i++) {
                if (aboCheckboxes[i] !== checkbox) {
                    aboCheckboxes[i].checked = false;
                    aboCheckboxes[i].parentNode.style.backgroundColor = "";
                }
            }

            // Setze das gew�hlte Abo auf den Wert der ausgew�hlten Checkbox oder "Kein Abonnement ausgew�hlt"
            gew�hltesAbo = checkbox.checked ? checkbox.value : "Kein Abonnement ausgew�hlt";
            document.getElementById('aktuellesAbo').innerText = "Ausgew�hltes Abonnement: " + gew�hltesAbo;

            // �berpr�fe, ob das Testabo ausgew�hlt ist, und zeige die Beschreibung entsprechend an oder verstecke sie
            var beschreibungDiv = document.getElementById("beschreibung");
            if (gew�hltesAbo === "7-t�giges Testabo") {
                beschreibungDiv.style.display = "block";
            } else {
                beschreibungDiv.style.display = "none";
            }

            // �ndere den Hintergrund der angeklickten Checkbox-Zelle auf gr�n
            checkbox.parentNode.style.backgroundColor = checkbox.checked ? "green" : "";
        }

        // Funktion zum Abschlie�en des ausgew�hlten Abonnements
        function abschlie�enAbo() {
            if (gew�hltesAbo !== "Kein Abonnement ausgew�hlt") {
                var best�tigung = confirm("M�chten Sie das Abonnement '" + gew�hltesAbo + "' abschlie�en?");
                if (best�tigung) {
                    // Hier k�nnten die Informationen zum ausgew�hlten Abonnement im Benutzerprofil gespeichert werden
                    alert("Abonnement '" + gew�hltesAbo + "' wurde erfolgreich abgeschlossen und Ihrem Profil hinzugef�gt.");
                }
            } else {
                alert("Bitte w�hlen Sie ein Abonnement aus.");
            }
        }

        // Funktion zum Wechseln des Abonnements
        function aboWechseln() {
            if (gew�hltesAbo !== "Kein Abonnement ausgew�hlt") {
                var best�tigung = confirm("M�chten Sie wirklich Ihr aktuelles Abonnement '" + gew�hltesAbo + "' wechseln?");
                if (best�tigung) {
                    // Hier k�nnten die �nderungen im Benutzerprofil f�r den Abonnement-Wechsel gespeichert werden
                    alert("Sie haben Ihr Abonnement erfolgreich gewechselt.");
                }
            } else {
                alert("Bitte w�hlen Sie zuerst ein Abonnement aus.");
            }
        }

        // Funktion zum K�ndigen des Abonnements
        function aboK�ndigen() {
            if (gew�hltesAbo !== "Kein Abonnement ausgew�hlt") {
                var best�tigung = confirm("M�chten Sie wirklich Ihr aktuelles Abonnement '" + gew�hltesAbo + "' k�ndigen?");
                if (best�tigung) {
                    // Hier k�nnten die �nderungen im Benutzerprofil f�r die Abonnement-K�ndigung gespeichert werden
                    document.getElementById('aktuellesAbo').innerText = "Ausgew�hltes Abonnement: Kein Abonnement ausgew�hlt";
                    alert("Abonnement '" + gew�hltesAbo + "' wurde erfolgreich gek�ndigt und im Profilhistorie als inaktiv markiert.");
                }
            } else {
                alert("Bitte w�hlen Sie zuerst ein Abonnement aus.");
            }
        }
    </script>
</body>
</html>
    