<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kontaktformular</title>
	<link type="text/css" rel="stylesheet" href="../css_praktikum/kontaktformular.css" />
    

</head>
<body>
<form>

<div class="container">
  <div style="text-align:center">
    <h2>Kontaktformular</h2>
    <p>Hinterlassen Sie uns eine Nachricht:</p>
  </div>
  <div class="row">
    <div class="column">
      <img src="../img_praktikum/banner.jpg" style="width:100%">
    </div>
    <div class="column">
      <form action="">
        <label for="fname">Vorname</label>
        <input type="text" id="fname" name="vorname" placeholder="Vorname..">
        <label for="lname">Nachname</label>
        <input type="text" id="lname" name="nachname" placeholder="Nachname..">
        <label for="lname">Email</label>
        <input type="text" id="lname" name="email" placeholder="Email..">
        <label for="betreff">Betreff</label>
        <select id="betreff" name="betreff">
          <option value="ausleihkonto">Bibliotheksausweis / Ausleihkonto / Anmeldung</option>
          <option value="kritik">Lob / Anregungen / Kritik</option>
          <option value="reparatur">Reparatur</option>
          <option value="probleme">Technische Probleme</option>
          <option value="medienverlust">Medienverlust</option>
          <option value="sonstiges">Sonstiges</option>
        </select>
        <label for="subject">Nachricht</label>
        <textarea id="subject" name="subject" placeholder="Schreib etwas.." style="height:170px"></textarea>
        <input type="submit" value="Senden">
      </form>
    </div>
  </div>
</div>


</form>
</body>
</html>