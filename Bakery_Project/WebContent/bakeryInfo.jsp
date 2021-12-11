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
    <section class="u-align-center u-clearfix u-grey-10 u-section-2" id="about">
      <div class="u-clearfix u-sheet u-align-left u-sheet-1">
        <h1 class="u-custom-font u-font-oswald u-text u-text-default u-text-palette-3-base u-text-1">About Us</h1>
        <p class="u-text u-text-2">Baked Right is a local family run bakery that 
            specializes in provided freshly baked good assortments that are great for any event!
            What started as a home side business has grown to a storefront meant to serve you delicious goods each and every day.
            We regularly rotate out the flavors and selections that are provided, giving the customers fresh and exciting selections every few months.
            We also offer full-service catering for any event, large or small. Contact us below for more information.</p>
            <p>Baked Right was established in 2020 and is currently based in Baltimore, MD. </p>
        <br>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-grey-10 u-section-2" id="contact">
      <div class="u-clearfix u-sheet u-align-left u-sheet-1">
        <h1 class="u-custom-font u-font-oswald u-text u-text-default u-text-palette-3-base u-text-1">Contact Us</h1>
        <p class="u-text u-text-2">If you have any questions or are interested in catering services for an event, fill out the contact form below.</p>
        <form id="contact-form">
            <p><input class="w3-input w3-padding-16" type="text" placeholder="Name" required name="Name"></p>
            <p><input class="w3-input w3-padding-16" type="number" placeholder="How many people" required name="People"></p>
            <p><input class="w3-input w3-padding-16" type="datetime-local" placeholder="Date and time" required name="date" id="contact-date" value="2020-11-16T20:00"></p>
            <p><input class="w3-input w3-padding-16" type="email" placeholder="Email" required name="Email"></p>
            <p><textarea class="w3-input w3-padding-16" type="text" placeholder="Message \ Special requirements" required name="Message"></textarea></p>
            <p><button class="w3-button w3-light-grey w3-section" type="submit" class="submitBtn">Send Message</button></p>
        </form>
        <br>
      </div>
    </section>
    </form>
  </body>
</html>