package de.hwg_lu.bw4s.beans;

import java.io.Serializable;

import de.hwg_lu.bwi.jdbc.PostgreSQLAccessBib;

public class BenutzerBean implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
    private String vorname;
    private String nachname;
    private String geschlecht;
    private String email;
    private String geburtsdatum;
    private String telefonnummer;
    private String password;
    
    
    public boolean pruefeAnmeldedaten() {
        // Hier könntest du die Anmeldedaten in einer Datenbank überprüfen.
        // Für das Beispiel nehmen wir an, dass die Anmeldung immer erfolgreich ist,
        // wenn eine E-Mail-Adresse und ein Passwort eingegeben wurden.

        if (email != null && !email.isEmpty() &&
            password != null && !password.isEmpty()) {
            // Hier müsstest du den Code zur Überprüfung der Anmeldedaten in der Datenbank implementieren
            // Beispiel: Angenommen du hast eine Methode "pruefeAnmeldedatenInDatenbank()" in "PostgreSQLAccessBib", die das Passwort für die eingegebene E-Mail-Adresse aus der Datenbank abruft
            PostgreSQLAccessBib dbAccess = new PostgreSQLAccessBib();
            String gespeichertesPasswort = dbAccess.pruefeAnmeldedatenInDatenbank(email);

            // Jetzt vergleichen wir das eingegebene Passwort mit dem gespeicherten Passwort in der Datenbank
            if (password.equals(gespeichertesPasswort)) {
                // Passwörter stimmen überein, Anmeldung erfolgreich
                return true;
            } else {
                // Passwörter stimmen nicht überein, Anmeldung fehlgeschlagen
                return false;
            }
        }

        // Wenn E-Mail-Adresse oder Passwort nicht ausgefüllt wurden, ist die Anmeldung ebenfalls fehlgeschlagen
        return false;
    }

    
    
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
        this.id = id;
	}
	public String getVorname() {
		return vorname;
	}
	public void setVorname(String vorname) {
		this.vorname = vorname;
	}
	public String getNachname() {
		return nachname;
	}
	public void setNachname(String nachname) {
		this.nachname = nachname;
	}
	public String getGeschlecht() {
		return geschlecht;
	}
	public void setGeschlecht(String geschlecht) {
		this.geschlecht = geschlecht;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGeburtsdatum() {
		return geburtsdatum;
	}
	public void setGeburtsdatum(String geburtsdatum) {
		this.geburtsdatum = geburtsdatum;
	}
	public String getTelefonnummer() {
		return telefonnummer;
	}
	public void setTelefonnummer(String telefonnummer) {
		this.telefonnummer = telefonnummer;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	@Override
	public String toString() {
		return "BenutzerBean [id=" + id + ", vorname=" + vorname + ", nachname=" + nachname + ", geschlecht="
				+ geschlecht + ", email=" + email + ", geburtsdatum=" + geburtsdatum + ", telefonnummer="
				+ telefonnummer + ", password=" + password + "]";
	}

    

    
    
}
