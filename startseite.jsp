<!DOCTYPE html>
<html>
<head>
    <title>Startseite</title>
    <link rel="stylesheet" type="text/css" href="../css_bib/startseitestyles.css">
 <!-- Bootstrap CSS: "https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
verweist auf die Bootstrap-Version 4.5.2, die von einem Content-Delivery-Network (CDN) 
bereitgestellt wird. Ein CDN ist ein Netzwerk von Servern, das statische Dateien wie CSS,
JavaScript und Bilder speichert und sie über das Internet verteilt. Indem Sie die 
Bootstrap-CSS über ein CDN einbinden, können 
 Sie die Bootstrap-Bibliothek schneller und effizienter in Ihre Webseite integrieren. -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <!-- Benutzer Icon -->
            <img src="../img_bib/path_to_your_user_icon.png" width="30" height="30" alt="Benutzer Icon">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Startseite</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Erweiterte Suche</a>
                </li>
                <li class="nav-item dropdown">
                    <!-- Menüliste -->
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Men&uuml;liste
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <!-- Menüliste-Unterliste -->
                        <a class="dropdown-item" href="#">Ausleihe</a>
                        <a class="dropdown-item" href="#">Ausgeliehen</a>
                        <a class="dropdown-item" href="#">Vormerkung</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Reservieren Buch und-/oder Lernraum</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Einstellung</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Ausloggen</a>
                </li>
            </ul>
        </div>
    </nav>

   
   
    <!-- Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Restlicher Inhalt der Startseite -->
    <div class="container">
        <h1>Willkommen auf der Startseite!</h1>
        <!-- Weitere Inhalte und Funktionen hier -->
        <!-- Tabelle für Adresse und Öffnungszeiten -->
        <table class="address-table">
            <tr>
                <td>&Ouml;ffnungszeiten</td>
                <td>Mo-Sa au&szlig;er Feiertagen | 8-24 Uhr</td>
            </tr>
            <tr>
                <td>Adresse </td>
                <td> Musterstra&szlig;e 1, 68199 Musterstadt</td>
            </tr>
        </table>
    </div>

    <!-- Footer-Bereich -->
    <footer class="footer">
        <p>© 2023 Meine Bibliothek. Alle Rechte vorbehalten.</p>
    </footer>

</body>
</html>