function ausgewähltesAboAbschließen() {
    var aboCheckboxes = document.getElementsByName("abo");
    var ausgewähltesAbo = null;
    for (var i = 0; i < aboCheckboxes.length; i++) {
        if (aboCheckboxes[i].checked) {
            if (ausgewähltesAbo !== null) {
                aboCheckboxes[i].checked = false;
            } else {
                ausgewähltesAbo = aboCheckboxes[i].value;
            }
        }
    }

    if (ausgewähltesAbo !== null) {
        var bestätigung = confirm("Möchten Sie das Abonnement '" + ausgewähltesAbo + "' abschließen?");
        if (bestätigung) {
            // Hier könnten die Informationen zum ausgewählten Abonnement im Benutzerprofil gespeichert werden
            alert("Das Abonnement '" + ausgewähltesAbo + "' wurde erfolgreich abgeschlossen und Ihrem Profil hinzugefügt.");
        }
    } else {
        alert("Bitte wählen Sie ein Abonnement aus.");
    }
}

function aboWechseln() {
    var aboCheckboxes = document.getElementsByName("abo");
    var aktuellesAbo = null;
    for (var i = 0; i < aboCheckboxes.length; i++) {
        if (aboCheckboxes[i].checked) {
            if (aktuellesAbo !== null) {
                aboCheckboxes[i].checked = false;
            } else {
                aktuellesAbo = aboCheckboxes[i].value;
            }
        }
    }

    if (aktuellesAbo !== null) {
        var bestätigung = confirm("Möchten Sie Ihr aktuelles Abonnement '" + aktuellesAbo + "' wirklich wechseln?");
        if (bestätigung) {
            var neuesAbo = prompt("Bitte geben Sie das neue Abonnement ein:");
            if (neuesAbo !== null && neuesAbo.trim() !== "") {
                // Hier könnte der Abonnement-Wechsel im Benutzerprofil durchgeführt werden
                alert("Ihr Abonnement wurde erfolgreich zu '" + neuesAbo + "' geändert.");
            }
        }
    } else {
        alert("Bitte wählen Sie zuerst ein aktuelles Abonnement aus.");
    }
}

function aboKündigen() {
    var aboCheckboxes = document.getElementsByName("abo");
    var aktuellesAbo = null;
    for (var i = 0; i < aboCheckboxes.length; i++) {
        if (aboCheckboxes[i].checked) {
            if (aktuellesAbo !== null) {
                aboCheckboxes[i].checked = false;
            } else {
                aktuellesAbo = aboCheckboxes[i].value;
            }
        }
    }

    if (aktuellesAbo !== null) {
        var bestätigung = confirm("Möchten Sie Ihr aktuelles Abonnement '" + aktuellesAbo + "' wirklich kündigen?");
        if (bestätigung) {
            // Hier könnte das aktuelle Abonnement im Benutzerprofil gekündigt werden
            alert("Ihr Abonnement '" + aktuellesAbo + "' wurde erfolgreich gekündigt.");
        }
    } else {
        alert("Bitte wählen Sie zuerst ein aktuelles Abonnement aus.");
    }
}
