package de.hwg_lu.bw4s.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import de.hwg_lu.bwi.jdbc.NoConnectionException;
import de.hwg_lu.bwi.jdbc.PostgreSQLAccess;

public class TestBibBean {

	// String Name;
	private int buchID;
    private String titel;
    private String autor;
    private String genre;
    private String isbn;
    private String verfuegbarkeitsstatus;
    
    public TestBibBean() {
        // Standardkonstruktor
    }

    // Getter und Setter für alle Eigenschaften
    public int getBuchID() {
        return buchID;
    }

    public void setBuchID(int buchID) {
        this.buchID = buchID;
    }

    public String getTitel() {
        return titel;
    }

    public void setTitel(String titel) {
        this.titel = titel;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getVerfuegbarkeitsstatus() {
        return verfuegbarkeitsstatus;
    }

    public void setVerfuegbarkeitsstatus(String verfuegbarkeitsstatus) {
        this.verfuegbarkeitsstatus = verfuegbarkeitsstatus;
    }

    // Optional: Überschreiben der toString-Methode für bequeme Ausgabe
    @Override
    public String toString() {
        return "BuchBean [buchID=" + buchID + ", titel=" + titel + ", autor=" + autor + ", genre=" + genre + ", isbn=" + isbn
                + ", verfuegbarkeitsstatus=" + verfuegbarkeitsstatus + "]";
    }
    
    
	
	/*
	public String getPflanzenImgHtml() {
		return "<img alt=\"pflanzen\" src=\"../img_pflanzen/"+Name+".jpg\">";
		
	}
	public String getZubehoerAlsHtml() throws SQLException {
		String html=" ";
		String sql="SELECT zubehoer, pflanze\r\n"+ "FROM bwi420_637177\\r\\n"+"";
		Connection dbconn= new PostgreSQLAccess().getConnection();
		ResultSet dbrest= dbconn.createStatement().executeQuery(sql);
		
		while( dbrest.next()) {
			
		}
		return "<img alt=\"pflanzen\" src=\"../img_pflanzen/"+Name+".jpg\">";
		
	}
	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public TestBibBean() {
		// TODO Auto-generated constructor stub
	}
*/
}
