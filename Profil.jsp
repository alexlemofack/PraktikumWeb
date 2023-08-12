<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mein Profil</title>
<link type="text/css" rel="stylesheet" href="../css_praktikum/profil.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="../js_praktikum/profil.js" ></script>
</head>
<body>
<form action="" method="get">

<!-- Side navigation -->
<div class="sidebar">
	
	<a href="#"><i class="fa fa-fw fa-user" style="font-size:80px;"></i><h2>Mein Profil</h2></a>
	<br><br>
  <a href="../Views_praktikum/Home.jsp"><i class="fa fa-fw fa-home"></i>Startseite</a>
  <a href="../Views_praktikum/Suche_View.jsp"><i class="fa fa-search"></i>Erweiterte Suche</a>
  
  
  
     <button class="dropdown-btn"><i class="fa fa-list"></i>Meine Liste 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="">
  
    <a href="#">Ausleihe</a>
    <a href="#">Ausgeliehen</a>
    <a href="#">Vormerkungen</a>
  </div>
  <a href="#"><i class="fa fa-address-book-o"></i>Reservieren</a>
  <a href="#"><i class="fa fa-graduation-cap"></i>Lernraumreservation</a>
  <a href="#"><i class="fa fa-bell-o" ></i>Benachrichtigungen</a>
  <a href="#"><i class="fa fa-thumbs-up"></i>Feedback</a>
  <a href="#"><i class="fa fa-cogs"></i>Einstellungen</a><br><br>
  <div class="ausloggen"><a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i>
Ausloggen</a></div>
</div>

<!-- Page content -->
<div class="main">
  <h2>Willkommen in ihrem Konto. Hier finden Sie alle Informationen über ihr Status.</h2><br>
  <p>Click on the dropdown button to open the dropdown menu inside the side navigation.</p>
  <p>This sidebar is of full height (100%) and always shown.</p>
  <p>Some random text..</p>
</div>

</form>
</body>
</html>