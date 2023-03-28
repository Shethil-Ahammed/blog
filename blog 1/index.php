<!doctype html>
<html lang="en">
  <head>
    <!-- meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


    <!-- CSS Link -->
    <link rel="stylesheet"  href="css/bootstrap.css">
    <link rel="stylesheet"  href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/static/css/main.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.min.js">

    <title>Blog Site</title>
  </head>
  <body>


    <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light ">
      <a class="navbar-brand" href="index.php">BiogSite</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link" href="#">Home</a>
          <a class="nav-item nav-link" href="view/Login.php">LogIn</a>
          <a class="nav-item nav-link" href="view/signup.php">Signup</a>
        </div>
      </div>
    </nav>

    <br> <br>
 


  <?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT title, paragraph FROM blog";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "Title of the blog: " . $row["title"]."<br>";
    echo "paragraph: " . $row["paragraph"]."<br> <br> <br> <br>";
  }
} else {
  echo "0 results";
}
$conn->close();
?>

</div>





    

    <!--JS links -->
    
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/script.js" type="text/javascript"></script>
    
  </body>
</html>