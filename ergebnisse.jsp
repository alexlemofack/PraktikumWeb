<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>

<%@ page import="de.hwg_lu.bwi.jdbc.Buch" %>

<!DOCTYPE html>
<html>
<head>
    <title>Suchergebnisse</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Suchergebnisse</h1>
    <table>
        <tr>
            <th>Titel</th>
            <th>Autor</th>
            <th>Verlag</th>
            <th>Erscheinungsjahr</th>
            <th>ISBN</th>
            <th>Kategorie</th>
            <th>Genre</th>
        </tr>
        <!-- Hier die Schleife zum Durchlaufen der Suchergebnisse und Anzeigen in der Tabelle -->
        <c:forEach items="${gefundeneBuecher}" var="buch">
            <tr>
                <td>${buch.titel}</td>
                <td>${buch.autor}</td>
                <td>${buch.verlag}</td>
                <td>${buch.erscheinungsjahr}</td>
                <td>${buch.isbn}</td>
                <td>${buch.kategorie}</td>
                <td>${buch.genre}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
