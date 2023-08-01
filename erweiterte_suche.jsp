<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Erweiterte Suche</title>
    <link rel="stylesheet" type="text/css" href="../css_bib/styles.css">
</head>
<body>
    <h1>Erweiterte Suche</h1>
    <form action="ErweiterteSucheServlet" method="post">
        <table>
            <tr>
                <td>Titelstichwort/Exakter Titel:</td>
                <td><input type="text" name="sucheTitel"></td>
            </tr>
            <tr>
                <td>Autor:</td>
                <td><input type="text" name="sucheAutor"></td>
            </tr>
            <tr>
                <td>Verlag:</td>
                <td><input type="text" name="sucheVerlag"></td>
            </tr>
            <tr>
                <td>Erscheinungsjahr:</td>
                <td><input type="text" name="sucheErscheinungsjahr"></td>
            </tr>
            <tr>
                <td>ISBN:</td>
                <td><input type="text" name="sucheISBN"></td>
            </tr>
            <tr>
                <td>Kategorie:</td>
                <td>
                    <select name="sucheKategorie">
                        <option value="Bücher">Bücher</option>
                        <option value="Zeitschriften">Zeitschriften</option>
                        <!-- Weitere Optionen hier -->
                    </select>
                </td>
            </tr>
            <tr>
                <td>Genre:</td>
                <td>
                    <select name="sucheGenre">
                        <option value="Fantasie">Fantasie</option>
                        <option value="Fiction">Fiction</option>
                        <!-- Weitere Optionen hier -->
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="OK" class="submitButton"></td>
            </tr>
        </table>
    </form>
</body>
</html>
