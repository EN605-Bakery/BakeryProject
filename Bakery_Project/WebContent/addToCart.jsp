<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Menu">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Home.css" media="screen">
    <meta name="generator" content="Nicepage 3.30.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
  <script src="validation.js"></script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header u-grey-10" id="sec-fd7a"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="header-menu">
        <a href="#" onclick="redirectLink('index.jsp')" class="u-image u-logo u-image-1">
            <img src="images/bakery-logo.png" width="150" height="75px">
        </a>
        <ul class="menu-bar">
            <li><a href="#" onclick="redirectLink('index.jsp')"> Home</a></li>
            <li><button class="dropbtn" onclick="myFunction()">Our Bakery
                  <div class="dropdown-content" id="myDropdown">
                      <a href="#" onclick="redirectLink('bakeryInfo.jsp#about')">About Us</a>
                      <a href="#" onclick="redirectLink('bakeryInfo.jsp#contact')">Contact Us</a>
                  </div>
            </li>
            <li><a href="#" onclick="redirectLink('index.jsp#myForm')">Shop</a></li>
            <li><a href="/Order"><i class="material-icons">shopping_cart</i></a></li>
        </ul>
      </header>
    <section class="u-align-center u-clearfix u-grey-10 u-section-1" id="carousel_9166">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-custom-font u-font-oswald u-text u-text-default u-text-palette-3-base u-text-1">Cart Items</h1>
        <p class="u-text u-text-2"> Please check the list below, before proceeding to checkout</p>
         <div class="u-container-style u-list-item u-repeater-item u-white u-list-item-1">
              <div class="u-container-layout u-similar-container u-valign-top-lg u-valign-top-md u-valign-top-sm u-valign-top-xl u-container-layout-1">
				${orderList}
			</div>
		</div>
        <br>
        <br>
        <form id="" action="Payments" method=POST>
        <div style="align:center;">
            <input  type="submit" value="Proceed to Payment" class="submitBtn" ${orders.size() > 0 ? '' : 'disabled'}>
        </div>
        </form>
      </div>
    </section>
  </body>
</html>