<!DOCTYPE html>
<html lang="en">
<title>My Leagues</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>

<?php
    session_start();
    if(!isset($_SESSION['username'])){
        header('Location: login.php');
        exit;
    } else {
        // Show users the page!
    }
?>

<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="./index.php" class="w3-bar-item w3-button w3-padding-large w3-hover-white">Home</a>
    <a href="./nfl.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">NFL Stats</a>
    <a href="./nba.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">NBA Stats</a>
    <a href="./mlb.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">MLB Stats</a>
    <a href="./mls.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">MLS Stats</a>
    <a href="./myleagues.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-white">My Leagues</a>
    <a href="./logout.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Log Out</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="./nfl.php" class="w3-bar-item w3-button w3-padding-large">NFL</a>
    <a href="./nba.php" class="w3-bar-item w3-button w3-padding-large">NBA</a>
    <a href="./mlb.php" class="w3-bar-item w3-button w3-padding-large">MLB</a>
    <a href="./mls.php" class="w3-bar-item w3-button w3-padding-large">MLS</a>
    <a href="./myleagues.php" class="w3-bar-item w3-button w3-padding-large">My Leagues</a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">My Leagues</h1>
  <p class="w3-xlarge">Tools to create and manage a league</p>
  
  <img src="https://www.pikpng.com/pngl/b/52-520496_png-soccer-ball-soccer-ball-logo-png-clipart.png" width="150px" class="w3-padding-large w3-large w3-margin-top" alt="Png Soccer Ball - Soccer Ball Logo Png Clipart@pikpng.com">
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>Create your own standings with this tool (To be updated later)</h1>
      <h5 class="w3-padding-32">Coming soon: With this feature, you can add a custom league, teams and results to our database. This way you can keep track of your own league.</h5>
    </div>

    <div class="w3-third w3-center">
      <i class="fa fa-pie-chart w3-padding-64 w3-text-red" style="font-size:180px"></i>
    </div>
  </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-database w3-padding-64 w3-text-red w3-margin-right" style="font-size:180px"></i>
    </div>

    <div class="w3-twothird">
      <h1>Create your own standings</h1>
      <h5 class="w3-padding-32">Standings Creator Tool</h5>

      <form method="POST">
            <input type="text" name="teamname" value="<?php echo $data['teamname'] ?>" placeholder="Enter name of team" Required>
            <input type="number" name="wins" value="<?php echo $data['wins'] ?>" placeholder="Enter number of wins" Required>
            <input type="number" name="losses" value="<?php echo $data['losses'] ?>" placeholder="Enter number of losses" Required>
            <input type="submit" name="update" value="update">
        </form>
      
      <p class="w3-text-grey">More features to be added.</p>

      <table class="w3-table w3-striped">
          <tr>
            <th>Team</th>
            <th>Wins</th>
            <th>Losses</th>
            <th>Remove</th>
          </tr>

          <?php
          require('dbConn.php');
          $tableowner = $_SESSION['username'];
          if(isset($_POST['update'])){
            $sql = "INSERT INTO userstandings (owner,teamname, wins, losses) VALUES (?,?,?,?);";
            $stmt = $db->prepare($sql);
            $stmt->bind_param("ssss",$tableowner, $_POST['teamname'], $_POST['wins'], $_POST['losses']);
            $stmt->execute();
          }
          $query1 = "SELECT id,teamname, wins, losses FROM userstandings WHERE owner='" . $tableowner . "' ORDER BY wins DESC;";
          $result1 = mysqli_query($db,$query1) or die(mysql_error());
          while ($row = mysqli_fetch_array($result1)) {
            echo "<tr>";
            echo "<td>" . $row['teamname'] . "</td>";
            echo "<td>" . $row['wins'] . "</td>";
            echo "<td>" . $row['losses'] . "</td>";
            echo "<td><a href='delete.php?id=" . $row['id'] . "'>Delete</a></td>";
            echo "</tr>";
          }
          ?>


      </table>
    </div>
  </div>
</div>

<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
  <?php
          //require('dbConn.php');
          //session_start();
          $randFact = rand(1, 25);
          $query = "SELECT fact FROM facts WHERE id = " . $randFact . ";";
          $result = mysqli_query($db,$query) or die(mysql_error());
          $row = mysqli_fetch_array($result);
          echo "<h1> Fun Fact: " . $row['fact'] . "</h1>";
  ?>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
 </div>
</footer>

<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>
