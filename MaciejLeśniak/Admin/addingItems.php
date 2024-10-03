

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adding Items</title>
    <button><a href="adminView.php">Back</a></button>
</head>
<body>
    <form method="Post">
        <label for="price">Price</label>
        <input type="number" name="price" id="price" min="0" value="0" required> <br>
        <label for="name">Name</label>
        <input type="text" name="name" id="name" required> <br>
        <label for="description">Description</label>
        <textarea name="description" id="description" required></textarea> <br>
        <label for="imageurl">Image</label>
        <input type="text" name="imageurl" id="imageurl" required> <br>
        <select name="categories" id="categories" required>
            <option value="1">RAM</option>
            <option value="2">Płyty główne</option>
            <option value="3">Procesory</option>
            <option value="4">Karta Graficzna</option>
            <option value="5">Dyski Twarde</option>
            <option value="6 ">Urządzenia peryferyjne</option>
            <option value="7">Obudowy</option>
        </select> <br>
        <button type="submit" id="upload" name="upload">Add item!</button>
    </form>
</body>
</html>
<?php
if (isset($_POST['upload'])) {

    $fileurl = $_POST["imageurl"];
    $name = $_POST["name"];
    $desc = $_POST["description"];
    $price = $_POST["price"];
    $category = $_POST["category"];


    $db = mysqli_connect("localhost", "root", "", "sklepbaza");

    $sql = "INSERT INTO products (description, name, image, category, price) VALUES ('$desc','$name','$fileurl','$category','$price')";

    mysqli_query($db, $sql);
}


?>