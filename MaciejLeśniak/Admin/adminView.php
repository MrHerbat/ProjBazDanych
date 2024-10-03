<?php
ini_set('display_errors', 0);
if($_SESSION["isAdmin"]==1)
{
  header("Location: ../index.php");
}

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <h1>ADMIN VIEW TEST</h1>
    <p>
        <a href="../logout.php" class="btn btn-danger ml-3">Sign Out of Your Account</a>
        <a href="../index.php" class="btn btn-danger ml-3">Go Back to Normal View</a>
    </p>
    <button><a href="addingItems.php">Add item</a></button>
  </body>
</html>
