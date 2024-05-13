<!DOCTYPE html>
<html lang="it">
<?php
    require_once "classes/circolari.php";
    $circolari = circolari::getInstance();
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digiboard</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" >
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php include "navbar/navbar.php"; ?><br>

    
    <h2 class="text-center pl-3">Le ultime uscite</h2><br>

    <div id='cards' class='cards' >
        <!-- Cards will be inserted here by JavaScript -->
    </div>

    <script>
        var circolariArray = <?php echo json_encode($circolari->outRecentCircolari()); ?>;
        var currentIndex = 0;

        function displayCircolari() {
            
            var cards = document.getElementsByClassName('card');
            for (var i = 0; i < cards.length; i++) {
                    cards[i].classList.add('animate');
                if (i === cards.length - 1) {
                    // Apply 'fadeIn' animation to the last card
                    cards[i].style.animation = 'fadeIn 1s ease-in forwards, slideIn 1s ease-out';
                }
                if (i === 0) {
                    // Apply 'fadeOut' animation to the first card
                    cards[i].style.animation = 'fadeOut 1s ease-out forwards, slideIn 1s ease-out';
                }
            }

            setTimeout(() => {
                document.getElementById('cards').innerHTML = '';
        
                // Display the next three cards
                for (var i = 0; i < 4; i++) {
                    var circolare = circolariArray[(currentIndex + i) % circolariArray.length];

                    // If it's the last iteration, add inline style to set the opacity to 0 and push it to the right
                    if (i === 3) {
                        circolare = circolare.replace("<div class='card' name='card'>", "<div class='card' name='card' style='opacity: 0; margin-left: auto;'>");
                    }

                    document.getElementById('cards').innerHTML += circolare;
                }
                currentIndex = (currentIndex + 1) % circolariArray.length;
            }, 950);
        }
        
        displayCircolari(); // Display the first three circolari immediately
        setInterval(displayCircolari, 5000);

    </script>
    <div class="row">
        <div class="col-md-12 text-center">
            <a href="lista.php" class="styled-link pl-3">Visualizza altre circolari</a>
        </div>
    </div>

    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>