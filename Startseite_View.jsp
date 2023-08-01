<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Startseite</title>
    <link rel="stylesheet" href="../css/startseite.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    
    <section>

        <nav>

            <div class="logo">
                <img src="../image/logo.jpg">
            </div>
            <div>
            <input type="text" name="suche" id="suche" placeholder="Suche">
			<button type="Submit"><i class="fa fa-search"></i></button>
			</div>

            <ul>
                <li><a href="">Login</a></li>
                <li><a href="">Services</a></li>
                <li><a href="">Kontakt</a></li>
                <li><a href="">Suche</a></li>
                <li><a href="#"><i class="fab fa-facebook"></i></a>
			<a href="#"><i class="fab fa-twitter"></i></a>
			<a href="#"><i class="fab fa-instagram"></i></a>
			</li>
            </ul>
            
          <div class="menu">
          <label for="chek1">
          <i class="fa fa-bars"></i>
          </label>
          </div>
			
        </nav>

        <div class="main">

            <div class="main_tag">
                <h1>WILLKOMMEN ZU UNSERE<br><span>BIBLIOTHEK</span></h1>

                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda molestias atque laborum 
                    non fuga ex deserunt. Exercitationem velit ducimus praesentium, obcaecati hic voluptate id 
                    tenetur fuga illum quidem omnis? Rerum?
                </p>
                <a href="#" class="main_btn">Learn More</a>

            </div>

            <div class="main_img">
                <img src="../image/table.png">
            </div>
        </div>

    </section>

    <!--Services-->

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

    <!--About-->

    <div class="about">

        <div class="about_image">
            <img src="../image/about.png">
        </div>
        <div class="about_tag">
            <h1>&Uuml;ber uns</h1>
            <p>
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Beatae cumque atque dolor corporis 
                architecto. Voluptate expedita molestias maxime officia natus consectetur dolor quisquam illo? 
                Quis illum nostrum perspiciatis laboriosam perferendis? Lorem ipsum dolor sit amet consectetur 
                adipisicing elit. Minus ad eius saepe architecto aperiam laboriosam voluptas nobis voluptates 
                id amet eos repellat corrupti harum consectetur, dolorum dolore blanditiis quam quo.
            </p>
            <a href="#" class="about_btn">Learn More</a>
        </div>
    </div>

</body>
</html>