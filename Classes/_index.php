
<?php
    require_once "../config.php"; 
    date_default_timezone_set('America/Sao_Paulo');
    
    if(isset($_POST["submit"])){

        $name           = isset($_POST["name"])    ? $_POST["name"]    : "";
        $period         = isset($_POST["period"])  ? $_POST["period"]  : "";
        $teacherId      = isset($_POST["teacher"]) ? $_POST["teacher"] : "";
        $momentRegister = date("Y-m-d H:i:s");

        $sql = $pdo->prepare("INSERT INTO Classes VALUES(null,?,?,?,?)");
        $sql->execute(array($name, $period, $teacherId, $momentRegister));

        //echo "-> $name <br> -> $period <br> -> $teacherId <br> -> $momentRegister<br>";

        echo "Class $name was registered.";
    }
?>
