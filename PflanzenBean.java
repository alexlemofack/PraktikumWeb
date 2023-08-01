package de.hwg_lu.bw4s.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import de.hwg_lu.bwi.jdbc.NoConnectionException;
import de.hwg_lu.bwi.jdbc.PostgreSQLAccess;

public class PflanzenBean {

	String Name;
	
	
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

	public PflanzenBean() {
		// TODO Auto-generated constructor stub
	}

}
