<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Abonnement-Optionen</title>
    <link rel="stylesheet" type="text/css" href="../css_bib/AboStyles.css">
</head>
<body>
    <!-- Überschrift -->
    <h1>Abonnement-Optionen</h1>

    <!-- Tabelle zur Darstellung der Abonnement-Optionen mit hellbraunem Hintergrund -->
    <table class="abo-table">
    <!-- Erste Zeile für das Testabo, das über beide Spalten verbunden wird -->
    <tr>
        <th colspan="2" id="beschreibung" style="display: none;">
            <h2>7-tägiges Testabo</h2>
            <p>Kostenfrei nutzen</p>
            <p>Alle Vorteile des PREMIUM und Family Abonnements</p>
        </th>
    </tr>
    <!-- Überschrift für das Testabonnement -->
    <tr>
        <th colspan="2">Testabonnement</th>
    </tr>
    <!-- Checkbox für Testabonnement auswählen -->
    <tr>
        <td colspan="2">
            <input type="checkbox" name="abo" value="7-tägiges Testabo" onclick="updateAusgewähltesAbo(this)">
            7-tägiges Testabo kostenfrei nutzen, alle Vorteile des PREMIUM und Family Abonnements
        </td>
    </tr>
        <!-- Premium und Classic in der linken Spalte -->
        <tr>
            <td>
                <h2>PREMIUM (25 EUR)</h2>
                <ul>
                    <li>Parkmöglichkeiten</li>
                    <li>Bücher- und Medienausleihe</li>
                    <li>Lernraumreservation</li>
                </ul>
                <!-- Checkbox für PREMIUM auswählen -->
                <input type="checkbox" name="abo" value="PREMIUM" onclick="updateAusgewähltesAbo(this)">PREMIUM auswählen
            </td>
            <td>
                <h2>CLASSIC (20 EUR)</h2>
                <ul>
                    <li>Bücher- und Medienausleihe</li>
                </ul>
                <!-- Checkbox für CLASSIC auswählen -->
                <input type="checkbox" name="abo" value="CLASSIC" onclick="updateAusgewähltesAbo(this)">CLASSIC auswählen
            </td>
        </tr>
        <!-- Familieabonnements in der rechten Spalte -->
        <tr>
            <td>
                <h2>FAMILY PREMIUM (30 EUR)</h2>
                <ul>
                    <li>Parkmöglichkeiten</li>
                    <li>Bücher- und Medienausleihe</li>
                    <li>Lernraumreservation</li>
                </ul>
                <!-- Checkbox für FAMILY PREMIUM auswählen -->
                <input type="checkbox" name="abo" value="FAMILY PREMIUM" onclick="updateAusgewähltesAbo(this)">FAMILY PREMIUM auswählen
            </td>
            <td>
                <h2>FAMILY CLASSIC (25 EUR)</h2>
                <ul>
                    <li>Bücher- und Medienausleihe</li>
                </ul>
                <!-- Checkbox für FAMILY CLASSIC auswählen -->
                <input type="checkbox" name="abo" value="FAMILY CLASSIC" onclick="updateAusgewähltesAbo(this)">FAMILY CLASSIC auswählen
            </td>
        </tr>
    </table>

    <!-- Überschrift für das ausgewählte Abonnement -->
    <h2>Ausgewähltes Abonnement:</h2>
    <!-- Anzeige des ausgewählten Abonnements -->
    <p id="aktuellesAbo">Kein Abonnement ausgewählt</p>

    <!-- Buttons für Abonnement-Aktionen -->
    <button type="button" onclick="abschließenAbo()">Ausgewähltes Abonnement abschließen</button>
    <button type="button" onclick="aboWechseln()">Abonnement wechseln</button>
    <button type="button" onclick="aboKündigen()">Abonnement kündigen</button>

    <script>
        var gewähltesAbo = "";

        // Funktion, die aufgerufen wird, wenn eine Checkbox angeklickt wird
        function updateAusgewähltesAbo(checkbox) {
            var aboCheckboxes = document.getElementsByName("abo");

            // Durchlaufe alle Checkboxen und setze die anderen Checkboxen auf "unchecked"
            for (var i = 0; i < aboCheckboxes.length; i++) {
                if (aboCheckboxes[i] !== checkbox) {
                    aboCheckboxes[i].checked = false;
                    aboCheckboxes[i].parentNode.style.backgroundColor = "";
                }
            }

            // Setze das gewählte Abo auf den Wert der ausgewählten Checkbox oder "Kein Abonnement ausgewählt"
            gewähltesAbo = checkbox.checked ? checkbox.value : "Kein Abonnement ausgewählt";
            document.getElementById('aktuellesAbo').innerText = "Ausgewähltes Abonnement: " + gewähltesAbo;

            // Überprüfe, ob das Testabo ausgewählt ist, und zeige die Beschreibung entsprechend an oder verstecke sie
            var beschreibungDiv = document.getElementById("beschreibung");
            if (gewähltesAbo === "7-tägiges Testabo") {
                beschreibungDiv.style.display = "block";
            } else {
                beschreibungDiv.style.display = "none";
            }

            // Ändere den Hintergrund der angeklickten Checkbox-Zelle auf grün
            checkbox.parentNode.style.backgroundColor = checkbox.checked ? "green" : "";
        }

        // Funktion zum Abschließen des ausgewählten Abonnements
        function abschließenAbo() {
            if (gewähltesAbo !== "Kein Abonnement ausgewählt") {
                var bestätigung = confirm("Möchten Sie das Abonnement '" + gewähltesAbo + "' abschließen?");
                if (bestätigung) {
                    // Hier könnten die Informationen zum ausgewählten Abonnement im Benutzerprofil gespeichert werden
                    alert("Abonnement '" + gewähltesAbo + "' wurde erfolgreich abgeschlossen und Ihrem Profil hinzugefügt.");
                }
            } else {
                alert("Bitte wählen Sie ein Abonnement aus.");
            }
        }

        // Funktion zum Wechseln des Abonnements
        function aboWechseln() {
            if (gewähltesAbo !== "Kein Abonnement ausgewählt") {
                var bestätigung = confirm("Möchten Sie wirklich Ihr aktuelles Abonnement '" + gewähltesAbo + "' wechseln?");
                if (bestätigung) {
                    // Hier könnten die Änderungen im Benutzerprofil für den Abonnement-Wechsel gespeichert werden
                    alert("Sie haben Ihr Abonnement erfolgreich gewechselt.");
                }
            } else {
                alert("Bitte wählen Sie zuerst ein Abonnement aus.");
            }
        }

        // Funktion zum Kündigen des Abonnements
        function aboKündigen() {
            if (gewähltesAbo !== "Kein Abonnement ausgewählt") {
                var bestätigung = confirm("Möchten Sie wirklich Ihr aktuelles Abonnement '" + gewähltesAbo + "' kündigen?");
                if (bestätigung) {
                    // Hier könnten die Änderungen im Benutzerprofil für die Abonnement-Kündigung gespeichert werden
                    document.getElementById('aktuellesAbo').innerText = "Ausgewähltes Abonnement: Kein Abonnement ausgewählt";
                    alert("Abonnement '" + gewähltesAbo + "' wurde erfolgreich gekündigt und im Profilhistorie als inaktiv markiert.");
                }
            } else {
                alert("Bitte wählen Sie zuerst ein Abonnement aus.");
            }
        }
    </script>
</body>
</html>
    