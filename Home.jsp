<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Startseite</title>

<link type="text/css" rel="stylesheet" href="../css_praktikum/home.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<form action="" method="get">


		<div class="topnav">
			<a class="active" href="../Views_praktikum/Home.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
			<a href="../Views_praktikum/Login_View.jsp"><i class="fa fa-fw fa-user"></i>Login</a> 
			<a href="#"><i class="fa-regular fa-circle-info"></i>&Uuml;ber uns</a> 
				<a href="../Views_praktikum/Kontaktformular_View.jsp"><i class="fa fa-fw fa-envelope"></i>Kontakt</a>
				
			<div class="search-container">
				<input type="text" name="suche" placeholder="Suche..">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>



<!-- Corps du devoir-->
<div style="text-align:center">
  <h1>WILLKOMMEN ZU UNSERE BIBLIOTHEK</h1>
  <h3>Hier finden Sie alle Interessante Büchern.</h3>
</div>

<!-- The App Section -->
<div class="container">
  <div class="row">
    <div class="column-66">
      <h1 class="xlarge-font"><b>Bibliothek</b></h1>
     
      <p><span style="font-size:16px">Unsere Bibliothek bietet ihren Angehörigen wissenschaftliche Literatur und Fachinformation in analoger und digitaler Form und unterstützt sie bei Studium, Lehre und Forschung.
Als öffentliche Einrichtung steht die Hochschulbibliothek allen Interessierten aus der Region, die sich weiterbilden und informieren möchten, zur Verfügung.

<br><h4>Wir freuen uns auf Ihren Besuch!</h4>
 </p>
<!-- 
 <section>
 <div class="services">

        <div class="services_box">

            <div class="choix">
                <i class="fa-solid fa-circle-user"></i>
                <h3>Mein Konto</h3>
                <p>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. 
                </p>
            </div>

            <div class="choix">
	<i class="fa-regular fa-calendar"></i> 
	               <h3>&Ouml;ffnungszeiten</h3>
                <p>Mo bis Fr:	8 bis 23 Uhr <br> Sa/So/Feiertage:	10 bis 23 Uhr 
                </p>
            </div>

            <div class="choix">
<i class="fa-sharp fa-solid fa-location-dot"></i>                <h3>Adresse und Anfahrt</h3>
                <p>
                   Kammgarn 14 D<br> 35390 Giessen
                </p>
            </div>

            <div class="choix">
<i class="fa-sharp fa-regular fa-comments"></i>                <h3>Kontaktformular</h3>
                <p>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. 
                </p>
            </div>
        </div>
    </div>
 </section>    --> 
    
    </div>
    <div class="column-33">
        <img src="../img_praktikum/banner.jpg" width="335" height="471">
    </div>
  </div>
</div>

<!-- Clarity Section -->
<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <div class="column-33">
      <img src="../img_praktikum/banner1.jpg" alt="App" width="335" height="471">
    </div>
    <div class="column-66">
      <h1 class="xlarge-font"><b>&Uuml;ber uns</b></h1>
      <h1 class="large-font" style="color:red;"><b>Wer sind wir?</b></h1>
      <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Beatae cumque atque dolor corporis 
                architecto. Voluptate expedita molestias maxime officia natus consectetur dolor quisquam illo? 
                Quis illum nostrum perspiciatis laboriosam perferendis? Lorem ipsum dolor sit amet consectetur 
                adipisicing elit. Minus ad eius saepe architecto aperiam laboriosam voluptas nobis voluptates 
                id amet eos repellat corrupti harum consectetur, dolorum dolore blanditiis quam quo.
                </p>
      <button class="button" style="background-color:red">Mehr erfahren</button>
    </div>
  </div>
</div>

<!-- The App Section -->
<div class="container">
  <div class="row">
    <div class="column-66">
      <h1 class="xlarge-font"><b>The App</b></h1>
  
      <p>You should buy this app because lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
      <button class="button">Download Application</button>
    </div>
    <div class="column-33">
        <img src="../img_praktikum/banner1.jpg" width="335" height="471" >
    </div>
  </div>
</div>


<!-- footer -->
<div class="footer">
  <div class="row">
  <div class="column">
    <div class="card">
      <h3>Studierende</h3>
      <p>OpenOlat</p>
      <p>Hochschulportal</p>
      <p>Webmailclient</p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3>Karriere</h3>
      <p>Jobs</p>
      <p>Benefits</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Postanschrift</h3>
      <p>Rheinhauser Str. 103</p>
      <p>68167 Mannheim</p>
    </div>
  </div>
  
  <div class="col-lg-3 item social">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                        <p class="copyright">Company Name © 2018</p>
                    </div>
</div>
</div>

	</form>
</body>
</html>