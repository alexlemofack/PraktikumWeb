package de.hwg_lu.bw4s.beans;

import de.hwg_lu.bwi.jdbc.Buch;
import de.hwg_lu.bwi.jdbc.PostgreSQLAccessBib;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/erweiterte-suche")
public class ErweiterteSucheServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Benutzereingaben aus dem Formular abrufen
        String sucheTitel = request.getParameter("sucheTitel");
        String sucheAutor = request.getParameter("sucheAutor");
        String sucheVerlag = request.getParameter("sucheVerlag");
        String sucheErscheinungsjahr = request.getParameter("sucheErscheinungsjahr");
        String sucheISBN = request.getParameter("sucheISBN");
        String sucheKategorie = request.getParameter("sucheKategorie");
        String sucheGenre = request.getParameter("sucheGenre");

        // Datenbankzugriff
        PostgreSQLAccessBib dbAccess = new PostgreSQLAccessBib();
        List<Buch> gefundeneBuecher = dbAccess.findeBuecherInDatenbank(sucheTitel, sucheAutor, sucheVerlag,
                                                                      sucheErscheinungsjahr, sucheISBN,
                                                                      sucheKategorie, sucheGenre);

        // Gefundene Bücher in Request-Attribute setzen
        request.setAttribute("gefundeneBuecher", gefundeneBuecher);

        // Weiterleitung zur Ergebnisseite
        request.getRequestDispatcher("ergebnisse.jsp").forward(request, response);
       /* RequestDispatcher dispatcher = request.getRequestDispatcher("ergebnisse.jsp");
        dispatcher.forward(request, response);*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Weiterleitung zur erweiterten Suche
        request.getRequestDispatcher("erweiterte_suche.jsp").forward(request, response);
    }
}

    

