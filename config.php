
<style>html.pre{background-color:gray;}</style>

<html>
    <pre>
        <?php
    
            $host     = "localhost";
            $dbname   = "School";
            $username = "root";
            $password = "130830";
    
            try{
                $pdo = new PDO("mysql:host=$host;dbname=$dbname",$username,$password);
            }
            catch(PDOException $error){
                echo "Error: " . $error;
            }
        ?>
    </pre>
</html>
