<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>MovieBuy</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 50%;
    height: 10%;
  }
  </style>
</head>

<body>
 <div class="form-group">

   <h2 style="color:Tomato;">MovieBuy</h2>

    ${message}
  <form action="MovieBuy" method="post">  <!-- get is default and can be seen on url but if we use post, it will be hidden in url -->
  <div id="demo" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
       <img alt="toystory image" src="https://wallpapercave.com/wp/wp2075267.jpg" width="1100" height="100">
    </div>
    <div class="carousel-item">
    <img alt="lionking image" src="https://th.bing.com/th/id/R.b8d9a94555ff87f1439393357e257d78?rik=C7p6dRdvdfnpcQ&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f06%2fSimba-Lion-King-HD-Backgrounds.jpg&ehk=p3wY4miOE5TpxjUpCGgj4M7bDeKxDiyKw9t1FxdHrg4%3d&risl=&pid=ImgRaw&r=0" width="1100" height="100">
    </div>
    <div class="carousel-item">
      <img alt="terminator image" src="https://image.tmdb.org/t/p/original/9jTRX1H4wVfenbmvM09hrTVLau5.jpg" width="1100" height="100">
    </div>
    <div class="carousel-item">
      <img alt="chucky image" src="https://th.bing.com/th/id/R.705859b02b57ec4614a251263560795d?rik=2DHI9slS6Fq0KA&pid=ImgRaw&r=0" width="1100" height="100">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
   </div>

 
 
    
      <label for="moviename">Enter the movie title you want to purchase:</label>
      <input type="text" class="form-control" id="movie" placeholder="Enter Movie Title" name="moviename">
   
  
  
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="reset" class="btn btn-danger">Reset</button>
  </form>
</div>
</body>
</html>