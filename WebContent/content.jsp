<%@page session="false" %>
<head>
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<div id="content">

<div id="imageslide" align="center">
<img class="mySlides" src="image/banner/ban12.jpg" height="400" width="700">
<img class="mySlides" src="image/banner/ban13.jpg" height="400"width="700">
<img class="mySlides" src="image/banner/ban14.jpg" height="400"width="700">
<img class="mySlides" src="image/banner/ban15.jpg" height="400"width="700">
<img class="mySlides" src="image/banner/ban9.jpg" height="400"width="700">
<img class="mySlides" src="image/banner/ban10.jpg" height="400"width="700">
<img class="mySlides" src="image/banner/ban11.jpg" height="400"width="700">
<button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
<div align="center">
<div align="center" style="width: 700px;background-image: url('image/giphy.gif');">
<marquee direction="left" ><h1 style="color:white; "><i><img src="image/police.png" width="50" height="50"></i>Welcome to Clean India.</h1></marquee>
</div>
</div>
</div>