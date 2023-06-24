
<?php
    require_once "../model/processStudent.php";
?>

<?php
    $sql = $pdo->prepare("INSERT INTO Students VALUES (null,?,?,?)");
    $sql->execute(array($name,$registration,$date_of_birth));

    if($sql->execute()){
        echo "Student was registered!";
    }
    else{
        echo "Error to register ";
    }
?>
