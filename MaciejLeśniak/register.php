<?php
session_start();
$msgErr = " ";
$db = mysqli_connect("localhost", "root", "", "sklepbaza");
if(isset($_POST['register']))
{
    $user = $_POST["name"];
    $pass = $_POST["password"];
    $pass1 = $_POST["password1"];
    if($pass!=$pass1){
        $msgErr = "Hasła nie są takie same";
    }else{
        $sql = "SELECT login FROM users WHERE login = '$user'";
        

        $userCheck = mysqli_query($db, $sql);
        if(mysqli_num_rows($userCheck) > 0){
            $msgErr = "Użytkownik już istnieje";
        }else{
            $sql2 = "INSERT INTO users (login,password) VALUES ('$user', '$pass')";
            mysqli_query($db, $sql2);
            header("location: login.php");
        }
    }
}
mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>
<body>
    <center>
        <h1>Register</h1>
        <form method="post">
            <input type="text" name="name" id="name">
            <input type="password" name="password" id="password">
            <input type="password" name="password1" id="password1">
            <button type="submit" id="register" name="register">Zarejestruj</button> <br>
            <?php

            echo "<div>".$msgErr."<div>";

            ?>
        </form>
    </center>
</body>
</html>