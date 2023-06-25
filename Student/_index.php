
<?php
    require_once "../config.php"; 
    date_default_timezone_set('America/Sao_Paulo');
    
    if(isset($_POST["submit"])){
        $name            = isset($_POST["name"])          ? $_POST["name"]          : "";
        $registration    = isset($_POST["registration"])  ? $_POST["registration"]  : "";
        $dateOfBirth     = isset($_POST["date_of_birth"]) ? $_POST["date_of_birth"] : "";
        $momentRegister  = date("Y-m-d H:i:s");

        $sql = $pdo->prepare("INSERT INTO `Students` VALUES (null,?,?,?,?)");
        $sql->execute(array($name, $registration, $dateOfBirth, $momentRegister));
        
        echo "Student $name was registered!";
    }
?>
