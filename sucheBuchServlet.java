package de.hwg_lu.bw4s.beans;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class sucheBuchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; // Serial Version UID

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titel = request.getParameter("titel");

        if (titel != null && !titel.isEmpty()) {
            List<TestBibBean> suchergebnisse = sucheBuchInDatenbank(titel);

            // Weiterleitung der Suchergebnisse an das JSP
            request.setAttribute("suchergebnisse", suchergebnisse);
            request.getRequestDispatcher("search.jsp").forward(request, response);
        } else {
            // Wenn der Titel leer ist oder nicht vorhanden ist
            // Hier könnten Sie eine Fehlermeldung ausgeben oder den Benutzer zurück zur Suchseite leiten.
            // ...
        }
    }

    // Beispiel-Methode zur Datenbankabfrage (Dummy-Daten)
    private List<TestBibBean> sucheBuchInDatenbank(String titel) {
        List<TestBibBean> suchergebnisse = new ArrayList<>();

        // Hier könnten Sie eine Datenbankabfrage durchführen, um die Bücher basierend auf dem Titel zu suchen
        // In diesem Beispiel werden einfach Dummy-Daten zurückgegeben.
        TestBibBean buch1 = new TestBibBean();
        buch1.setBuchID(1);
        buch1.setTitel("Java Programming");
        buch1.setAutor("John Doe");
        buch1.setGenre("Informatik");
        buch1.setIsbn("1234567890");
        buch1.setVerfuegbarkeitsstatus("Verfügbar");

        TestBibBean buch2 = new TestBibBean();
        buch2.setBuchID(2);
        buch2.setTitel("Python for Beginners");
        buch2.setAutor("Jane Smith");
        buch2.setGenre("Informatik");
        buch2.setIsbn("9876543210");
        buch2.setVerfuegbarkeitsstatus("Verfügbar");

        suchergebnisse.add(buch1);
        suchergebnisse.add(buch2);

        return suchergebnisse;
    }
}
