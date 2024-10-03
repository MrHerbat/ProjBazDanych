<?php
session_start();

$msgErr = "";
 
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: index.php");
    exit;
}
if(isset($_POST["zaloguj"]))
{
    $conn = mysqli_connect("localhost","root","","sklepbaza");

    $login = $_POST["login"];
    $pass = $_POST["pass"];

    $logowaniesql = "SELECT * FROM users WHERE login = '$login' AND password = '$pass'";
    $logowanie = mysqli_query($conn, $logowaniesql);
    $row = mysqli_fetch_assoc($logowanie);
    if(mysqli_num_rows($logowanie)<=0){
        $msgErr = "Login lub hasło jest błędne";
    }else{
        $_SESSION["loggedin"] = true;
        $_SESSION["username"] = $login;
        if($row['isAdmin']==1){
            $_SESSION['isAdmin'] = true;
        }
        header("location: index.php");
    }
   

    mysqli_close($conn);
}

?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <div class="wrapper">
        <h2>Login</h2>
        <p>Please fill in your credentials to login.</p>

        <?php 
        if(!empty($login_err)){
            echo '<div class="alert alert-danger">' . $login_err . '</div>';
        }        
        ?>

        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="login" id="login" required>
            </div>    
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="pass" id="pass" required>
            </div>
            <button type="submit" name="zaloguj" id="zaloguj">Zaloguj</button>
        </form>
        <button><a href="register.php">Zarejestruj</a></button>
        <?php echo "<div>".$msgErr."</div>"; ?>
    </div>
</body>
</html>