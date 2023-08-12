<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Erweiterte Suche</title>
    <link type="text/css" rel="stylesheet" href="../css_praktikum/kontaktformular.css">

</head>
<body>


<form action="" method="get">

<div class="container">
  <div style="text-align:center">
    <h1>Eweiterte Suche</h1>
  </div>
  <div class="row">
    <div class="column">
      <img src="../img_praktikum/banner.jpg" style="width:100%">
    </div>
    
      <div class="column">
      <form action="">
<h2>Sucheingabe</h2>

<select name="sucheingabe" >
		<option selected="selected" value="Free">Stichwort</option>
		<option value="Title">Titel</option>
		<option value="SeriesTitle">Reihe</option>
		<option value="Author">Verfasser</option>
		<option value="SubjectType">Interessenkreis</option>
		<option value="ISBNandISSN">ISBN/ISSN</option>
		<option value="Keyword">Schlagwort</option>
		<option value="Systematic">Systematik</option>

	</select> <input type="text" name="" value="" /> <br>
	
<h2>Weitere Suchkriterien</h2>
Jahr :<input type="text" name="" value="" /> <br>
Medienart: <input type="radio" name="" value="" /> Physische Medien
		<input type="radio" name="" value="" /> E-Medien
		<input type="radio" name="" value="" /> Alle <br><br>
		
Mediengruppe: <select name="mediengruppe" >
		<option selected="selected" value="Alle">Alle</option>
		<option value="Bestseller">Bestseller</option>
		<option value="Bib d. Dinge 4Wochen">Bib d. Dinge 4Wochen</option>
		<option value="CD Musik">CD Musik</option>
		<option value="Datenbanken">Datenbanken</option>
		<option value="Digitale Medien">Digitale Medien</option>
		<option value="E-Book-Reader">E-Book-Reader</option>
		<option value="Gesamtwerk">Gesamtwerk</option>
		<option value="Hörbuch">H&ouml;rbuch</option>
		<option value="Medienpaket">Medienpaket</option>
		<option value="Musikfilm / Sachfilm">Musikfilm / Sachfilm</option>
		<option value="Noten">Noten</option>
		<option value="Sachliteratur Erw.">Sachliteratur Erw.</option>
		<option value="SBA">SBA</option>
		<option value="Software">Software</option>
		<option value="Spiele">Spiele</option>
		<option value="Spielfilm">Spielfilm</option>
		<option value="Zeitschriften">Zeitschriften</option>

	</select><br>
	
Sprachen: <select name="sprachen" >

<option selected="selected" value="Deutsch">Deutsch</option>
		<option value="Englisch">Englisch</option>
		<option value="Französisch">Französisch</option>
		<option value="Italienisch">Italienisch</option>
		<option value="Spanisch">Spanisch</option>
		<option value="Türkisch">Türkisch</option>
	</select><br>
	
Verfügbarkeit: <input  type="checkbox" name="" value="Englisch" /><label>verfügbare Medien</label><br><br>

<input type="submit" value="Suchen">

</form>
</div>


</form>
</body>
</html>