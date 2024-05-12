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
    <style>
        @keyframes slideIn {
            from { 
                transform: translateX(0); 
            }
            to { 
                transform: translateX(calc(-100% - 20px));
            }
        }

        @keyframes fadeOut {
            from { 
                opacity: 1;
            }
            to { 
                opacity: 0;
            }
        }

        @keyframes fadeIn {
            from { 
                opacity: 0;
            }
            to { 
                opacity: 1;
            }
        }

        .animate {
            animation: slideIn 1s ease-out;
        }
    </style>
</head>
<body>
    <?php include "navbar/navbar.php"; ?>

    <a href="lista.php" class="styled-link">Visualizza altre circolari</a>

    <h2>Le ultime uscite</h2>

    <div id='cards' class='cards'>
        <!-- Cards will be inserted here by JavaScript -->
    </div>

    <script>
        var circolariArray = <?php echo json_encode($circolari->outRecentCircolari()); ?>;
        var currentIndex = 0;

        function displayCircolari() {
            // Get the first card
            var firstCard = document.querySelector('.card');
        
            // If a card exists, animate it out
            /*if (firstCard) {
                firstCard.style.animation = 'fadeOutLeft 1s ease-out forwards';
        
                // Remove the first card after the animation completes
                setTimeout(function() {
                    firstCard.remove();
                }, 1000);
            }*/
            
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
    
            // Remove the animation class after it completes
            /*setTimeout(function() {
                cards = document.getElementsByClassName('card');
                for (var i = 0; i < cards.length; i++) {
                    cards[i].classList.remove('animate');
                }
            }, 1000);*/
        }
        
        displayCircolari(); // Display the first three circolari immediately
        setInterval(displayCircolari, 5000);
    </script>
</body>
</html>