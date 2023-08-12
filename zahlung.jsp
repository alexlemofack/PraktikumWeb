<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Zahlung</title>
<link type="text/css" rel="stylesheet" href="../css_praktikum/zahlung.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>

<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="">

        <div class="row">
          <div class="col-50">
            <h1>Kontaktdaten</h1>
            <label for="fname"><i class="fa fa-user"></i>Name</label>
            <input type="text" id="fname" name="name" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Addresse</label>
            <input type="text" id="adr" name="addresse" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> Land</label>
            <input type="text" id="city" name="land" placeholder="Deutschland">

            <div class="row">
              <div class="col-50">
                <label for="state">Stadt</label>
                <input type="text" id="state" name="stadt" placeholder="Ludwigshafen">
              </div>
              <div class="col-50">
                <label for="zip">Nummer</label>
                <input type="text" id="zip" name="nummer" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h1>Bezahlung</h1>
            <label for="fname">Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Kontoinhaber</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Kreditkartennummer</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
          </div>

        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Lieferadresse gleich wie Rechnungsadresse
        </label>
        <input type="submit" value="Senden" class="btn">
      </form>
    </div>
  </div>

</div>


</body>
</html>