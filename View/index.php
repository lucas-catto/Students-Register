<?php
            require_once "../config.php";
        ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Testing</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        
        <div class="container">
            <?php
                

                $sql = $pdo->prepare("SELECT * FROM `Students`");
                $sql->execute();
                    
                $exibition = $sql->fetchAll(PDO::FETCH_ASSOC);

                
                foreach ($exibition as $exibition) {
                    echo "<div class='exibition'>";
                        echo "<p class='text'>Id - "             . $exibition["Id"]             . "</p></br>";
                        echo "<p class='text'>NameStudent - "    . $exibition["NameStudent"]    . "</p></br>";
                        echo "<p class='text'>Registration - "   . $exibition["Registration"]   . "</p></br>";
                        echo "<p class='text'>DateOfBirth - "    . $exibition["DateOfBirth"]    . "</p></br>";
                        echo "<p class='text'>MomentRegister - " . $exibition["MomentRegister"] . "</p></br>";
                    echo "</div>";
                }
            ?>
        </div>
    </body>
</html>
