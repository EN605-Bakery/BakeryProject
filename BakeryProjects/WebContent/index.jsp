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
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <script src="validation.js"></script>
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
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body data-home-page="Home.html" data-home-page-title="Home" class="u-body"><header class="u-clearfix u-header u-header" id="sec-fd7a"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 10px 20px;" onclick="redirectLink('index.jsp')"> Home</a>
				</li>
				<li class="u-nav-item">
					<button class="dropbtn" onclick="myFunction()">Our Bakery
                  <div class="dropdown-content" id="myDropdown">
                      <a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" onclick="redirectLink('bakeryInfo.jsp#about')">About Us</a>
                      <a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" onclick="redirectLink('bakeryInfo.jsp#contact')">Contact Us</a>
                  </div>
                  </button>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 10px 20px;" onclick="redirectLink('index.jsp#myForm')"> Shop</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/Order" style="padding: 10px 20px;"><i class="material-icons">shopping_cart</i></a>
				</li>
			</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
					<li class="u-nav-item"><a class="u-button-style u-nav-link" href="#" onclick="redirectLink('index.jsp')" style="padding: 10px 20px;">Home</a>
					</li>
					<li class="u-nav-item">
						<button class="dropbtn" onclick="myFunction()">Our Bakery
                  <div class="dropdown-content" id="myDropdown">
                      <a class="u-button-style u-nav-link" href="#" onclick="redirectLink('bakeryInfo.jsp#about')">About Us</a>
                      <a class="u-button-style u-nav-link" href="#" onclick="redirectLink('bakeryInfo.jsp#contact')">Contact Us</a>
                  </div>
                  </button>
                  </li>
                  <li class="u-nav-item">
					<a class="u-button-style u-nav-link" href="#" style="padding: 10px 20px;" onclick="redirectLink('index.jsp#myForm')"> Shop</a>
				</li>
				<li class="u-nav-item">
					<a class="u-button-style u-nav-link" href="/Order" style="padding: 10px 20px;"><i class="material-icons">shopping_cart</i></a>
				</li>
					</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="#" onclick="redirectLink('index.jsp')" class="u-image u-logo u-image-1">
          <img src="images/bakery-logo.png" width="150" height="150px" class="u-logo-image u-logo-image-1">
        </a>
      </div></header>
    <form onsubmit="disableEmptyInputs(this)" id="myForm" action="Order" method="post">
    <section class="u-align-center u-clearfix u-grey-10 u-section-1" id="carousel_9166">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-custom-font u-font-oswald u-text u-text-default u-text-palette-3-base u-text-1">Menu</h1>
        <p class="u-text u-text-2">Freshly Baked Bakery Items available to Buy, Items are baked daily to bring joy to your parties. We have Assorted Cupcake, Assorted Cookies, Breads &amp; Pound Cake available to pick up. Get yous Now BECUASE YOU DESERVE IT</p>
        <div class="u-expanded-width-xs u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-list-item u-repeater-item u-white u-list-item-1">
              <div class="u-container-layout u-similar-container u-valign-top-lg u-valign-top-md u-valign-top-sm u-valign-top-xl u-container-layout-1">
                <img alt="" class="u-expanded-width-xs u-image u-image-default u-image-1" src="images/828813906-01.jpeg" data-image-width="150" data-image-height="100">
                <div class="u-align-left-xs u-container-style u-expanded-width-xs u-group u-video-cover u-group-1">
                  <div class="u-container-layout u-valign-middle-xs u-container-layout-2">
                    <h3  class="u-custom-font u-font-oswald u-text u-text-3">Assorted Cupcakes</h3>
                    <p class="u-text u-text-4">Chocolate, Vanilla &amp; Strawberry</p>
                    <h6  class="u-text u-text-palette-3-base u-text-5">$18.00</h6>
                     <h6 class="u-text u-text-4">Quantity Needed (by the dozen)</h6>
                    <input type="number" name="qty" class="u-btn u-btn-rectangle u-button-style u-grey-10 u-btn-2" min="1"></input>
                    <input type="hidden" name="type" value="AssortedCupCakes" />
                    <input type="hidden" name="typePrice" value="18.00" />
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-2">
              <div class="u-container-layout u-similar-container u-valign-top-lg u-valign-top-md u-valign-top-sm u-valign-top-xl u-container-layout-3">
                <img alt="" class="u-expanded-width-xs u-image u-image-default u-image-2" src="images/828813906-02.jpeg" data-image-width="150" data-image-height="112">
                <div class="u-align-left-xs u-container-style u-expanded-width-xs u-group u-video-cover u-group-2">
                  <div class="u-container-layout u-valign-middle-xs u-container-layout-4">
                    <h3 class="u-custom-font u-font-oswald u-text u-text-6">Assorted Cookies</h3>
                    <p class="u-text u-text-default u-text-7">Chocolate Chip, Sugar, White Macadamia Nuts</p>
                    <h6 class="u-text u-text-palette-3-base u-text-8">$15.00</h6>
                     <h6 class="u-text u-text-4">Quantity Needed (by the dozen)</h6>
                    <input type="number" name="qty" class="u-btn u-btn-rectangle u-button-style u-grey-10 u-btn-2" min="1"></input>
                     <input type="hidden" name="type" value="AssortedCookie" />
                     <input type="hidden" name="typePrice" value="15.00" />
                     
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-3">
              <div class="u-container-layout u-similar-container u-valign-top-lg u-valign-top-md u-valign-top-sm u-valign-top-xl u-container-layout-5">
                <img alt="" class="u-expanded-width-xs u-image u-image-default u-image-3" src="images/828813906-0.jpeg" data-image-width="1500" data-image-height="1000">
                <div class="u-container-style u-expanded-width-xs u-group u-video-cover u-group-3">
                  <div class="u-container-layout u-valign-middle-xs u-container-layout-6">
                    <h3 class="u-custom-font u-font-oswald u-text u-text-9">Bread Loaves</h3>
                    <p class="u-text u-text-default u-text-10">Assorted basket of White, Wheat, Italian Herb &amp; Cheese</p>
                    <h6 class="u-text u-text-palette-3-base u-text-11">$16.00</h6>
                     <h6 class="u-text u-text-4">Quantity Needed (1 basket includes one of each bread type)</h6>
                     <input type="number" name="qty" class="u-btn u-btn-rectangle u-button-style u-grey-10 u-btn-2" min="1"></input>
                    <input type="hidden" name="type" value="BreadLoaves" />
                     <input type="hidden" name="typePrice" value="16.00" />
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-4">
              <div class="u-container-layout u-similar-container u-valign-top-lg u-valign-top-md u-valign-top-sm u-valign-top-xl u-container-layout-7">
                <img alt="" class="u-expanded-width-xs u-image u-image-default u-image-4" src="images/a70833d0085bab88fa8d303f07f9e1475dc6feb9413325ce24baac386f7f6255724abd625af1f869b23880eba9d29a3edff4784f59d073afae23e8_1280.jpg" data-image-width="1280" data-image-height="854">
                <div class="u-container-style u-expanded-width-xs u-group u-video-cover u-group-4">
                  <div class="u-container-layout u-valign-middle-xs u-container-layout-8">
                    <h3 class="u-custom-font u-font-oswald u-text u-text-12">Pound Cake</h3>
                    <p class="u-text u-text-default u-text-13">Marble Flavor</p>
                    <h6 class="u-text u-text-palette-3-base u-text-14">$16.00</h6>
                     <h6 class="u-text u-text-4">Quantity Needed</h6>
                    <input type="number" name="qty" class="u-btn u-btn-rectangle u-button-style u-grey-10 u-btn-2" min="1"></input>
                     <input type="hidden" name="type" value="PoundCake" />
                     <input type="hidden" name="typePrice" value="16.00" />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <br>
        <br>
        <div style="align:center;">
            <input  type="submit" value="Add to Cart" class="submitBtn">
        </div>
      </div>
    </section>
    </form>
  </body>
</html>