<pre>
    <?php
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
    ?>
    <?php
        require_once "../config.php";

        $sql = $pdo->prepare("SELECT * FROM `Students`");
        $sql->execute();
        
        $exibition = $sql->fetchAll(PDO::FETCH_ASSOC);

        foreach ($exibition as $exibition) {
            echo "Id ------------- " . $exibition["Id"]            . "</br>";
            echo "NameStudent ---- " . $exibition["NameStudent"]   . "</br>";
            echo "Registration --- " . $exibition["Registration"]   . "</br>";
            echo "DateOfBirth ---- " . $exibition["DateOfBirth"]    . "</br>";
            echo "MomentRegister - " . $exibition["MomentRegister"] . "</br>";
            echo "</br>";
        }
    ?>
</pre>
