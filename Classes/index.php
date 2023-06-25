<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register of Classes</title>
    </head>
    <body>
        <h1>Register of Classes</h1>
        <form action="_index.php" method="post">

            Name:   <input type="text" name="name"    required alt> <br>
            Period: <input type="text" name="period"  required alt>

            <?php
                    require_once "../config.php";
                    $sql = $pdo->prepare("SELECT Id, NameTeacher FROM Teachers");
                    $sql->execute();

                    $vetor = $sql->fetchAll(PDO::FETCH_ASSOC);

            ?>

            <label for="teacher">Teacher</label>
            <select name="teacher" id="teacher">
                <option selected disabled>Select a Teacher</option>
                <?php
                    foreach ($vetor as $vetor) {
                        echo "<option value=".$vetor['Id'].">".$vetor['NameTeacher']."</option>";
                    }
                ?>
            </select>
            
            <input type="submit" name="submit" value="Register">
        </form>
    </body>
</html>
