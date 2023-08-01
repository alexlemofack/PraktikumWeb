<!DOCTYPE html>
<html>
<head>
    <title>Anmeldung - View 1</title>
    <link rel="stylesheet" type="text/css" href="../css_bib/styles.css">
</head>
<body>
    <h1>Login</h1>
    <table>
        <tr>
            <td><label for="email">E-Mail-Adresse:</label></td>
            <td><input type="email" name="email" required></td>
        </tr>
        <tr>
            <td><label for="password">Password:</label></td>
            <td><input type="password" name="password" required></td>
        </tr>
    </table>

    <form action="logincheck.jsp" method="post"> <!-- Hier wird die Appl-Klasse (logincheck.jsp) als Ziel des Formularsubmit festgelegt -->
        <input type="submit" value="Anmelden" class="submitButton">
    </form>
    <p>Noch keinen Account? Hier geht es zur <a href="registrierung.jsp">Registrierung</a></p>
    <p>Passwort vergessen? Hier Passwort <a href="passwort_reset.jsp">zurücksetzen</a></p>
</body>
</html>
