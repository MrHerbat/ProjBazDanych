<?php
session_start();
$conn = mysqli_connect("localhost","root","","sklepbaza");
 
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="header">
        <h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1>
        <p>
            <a href="logout.php" class="btn btn-danger ml-3">Sign Out of Your Account</a>
        </p>
        <?php
            if($_SESSION["isAdmin"] == 1)
            {
                echo  '<a href="Admin\adminView.php">Admin view</a>';
            }
        ?>
    </div>
    <div id="main">
            <?php
                $itemssql = "SELECT * FROM products";
                $item = mysqli_query($conn, $itemssql);
                while($row = mysqli_fetch_assoc($item)){
                    echo" 
                    
                        <div id='card' class='".$row['category']."'>
                            <div><img src='".$row['image']."' alt='grafika produktu'></div> <br>
                            <div id='insidetext'>".$row['name']."</div> <br>
                            <div id='insidetext'>".$row['description']."</div> <br>
                            <div id='insidetext' class='price'>".$row['price']."zł</div>
                            <button type='submit' name='add-to-cart'>Dodaj do koszyka</button>
                        </div>
                    ";
                    
                }
            ?>
    </div>
</body>
</html>
<?php
mysqli_close($conn);
?>