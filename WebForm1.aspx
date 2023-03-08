<!DOCTYPE html>

<html>
    <head>
          <meta charset="UTF-8">
	<meta name="viewport" content="initial-scale=1.0">
    <title>GOOGLE API</title>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
      
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfxPD7VdQYeMQCOL5BhBjKSLZSdbvwRCM&callback=initMap"
      async defer></script>
	<style> 
  	  #map {
        height: 100%;
      }
     
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
	</style> 
    </head>
    <body>
        
<!--barra de navegacion -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!--fin barra de navegacion -->
        <!--cajas -->
        <div class="row" style="background:#000000; padding:10px">
     <div class="row">
   <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
         <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
         </div>
        <!--fin cajas-->
        <!--carrusel-->
        <div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/imagp3.jfif" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/imap.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/imgp2.jfif" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
          <!--fin carrusel-->
         <!--mapa-->
        <div id ="map" style="width:100%;background:BLACK; height:70%";padding-top:"2%"></div> 
        <!--fin mapa-->
        <!--SCRIP GOOGLE -->
        
 
       <script>



           // In the following example, markers appear when the user clicks on the map.
           // Each marker is labeled with a single alphabetical character.
           const labels = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
           let labelIndex = 0;

           var map;
           function initMap() {
               map = new google.maps.Map(document.getElementById('map'), {
                   center: { lat: 22.145283, lng: - 101.015192 },
                   zoom: 13,
               });
               var marker = new google.maps.Marker({
                   position: { lat: 22.145283, lng: - 101.015192 },
                   map: map,
                   title: 'Zona Universitaria'
               });
               var infowindow = new google.maps.InfoWindow({
                   content: "<p>Coordenadas:" + marker.getPosition() + "</p>",
               });

               // This event listener calls addMarker() when the map is clicked.
               google.maps.event.addListener(map, "click", (event) => {
                   addMarker(event.latLng, map);
               });
               // Add a marker at the center of the map.
               addMarker(bangalore, map);
           }

           // Adds a marker to the map.
           function addMarker(location, map) {
               // Add the marker at the clicked location, and add the next-available label
               // from the array of alphabetical characters.
               new google.maps.Marker({
                   position: location,
                   label: labels[labelIndex++ % labels.length],
                   map: map,
               });
           }

           window.initMap = initMap;


       </script>

    </body>
 </html>