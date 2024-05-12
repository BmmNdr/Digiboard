<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digiboard</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" >
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #000; /* Add this line */
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 40px 0; /* Increase the vertical margin */
            color: #fff;
            background-color: #007BFF;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
        <?php include "navbar/navbar.php"; ?>
    <div class="container">
        <!-- dettagli per singola circolare -->
        <?php 
            require_once "classes/circolare.php";

            $circolare = circolare::fromID($_POST["id"]);
            echo $circolare->outFull();
        ?>
        <a class="button" href="index.php">Torna alla home</a>
        <a class="button" href="lista.php">Torna alla lista</a>
    </div>
</body>
</html>