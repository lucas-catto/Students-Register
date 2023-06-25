<?php
    require_once "../config.php"; 
    date_default_timezone_set('America/Sao_Paulo');

    if(isset($_POST["submit"])){

        $name           = isset($_POST["name"])  ? $_POST["name"]  : "";
        $email          = isset($_POST["email"]) ? $_POST["email"] : "";
        $momentRegister = date("Y-m-d H:i:s");

        $sql = $pdo->prepare("INSERT INTO `Teachers` VALUES(null,?,?,?)");
        $sql->execute(array($name, $email, $momentRegister));

        echo "Teacher $name was registered.";
    }
?>
