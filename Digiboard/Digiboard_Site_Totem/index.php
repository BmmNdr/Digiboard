<?php
// Includi i file per la connessione al database e la classe circolare
include_once "connection.php";
include_once "circolare.php";
session_start();

// Crea un array vuoto per le circolari
$arrayCircolari = array();

// Prepara e esegui la query SQL per ottenere tutte le circolari relative allo schermo attuale
//schermo->luogo->classe->indirizzamento->circolare

$_SESSION['codSchermo'] = $_GET['cod'];

$stmt = $conn->prepare("SELECT * FROM circolare JOIN indirizzamento ON circolare.ID = indirizzamento.idCircolare
                        JOIN classe ON indirizzamento.idClasse = classe.ID JOIN luogo ON classe.idLuogo = luogo.ID
                        JOIN schermo ON luogo.ID = schermo.idLuogo WHERE schermo.COD = ?");
$stmt->bind_param("s", $_SESSION['codSchermo']); 
$stmt->execute();
$result = $stmt->get_result();

// Per ogni riga restituita dalla query, crea un nuovo oggetto circolare e aggiungilo all'array
while ($row = $result->fetch_assoc()) {
    $circolare = new circolare($row["ID"], $row["num"], $row["titolo"], $row["testo"], $row["dataPubblicazione"]);
    array_push($arrayCircolari, $circolare);
}

// Crea un nuovo array per le circolari che sarà utilizzato in JavaScript
$arrayCircolariJS = array();
foreach ($arrayCircolari as $circolare) {
    $arrayCircolariJS[] = array(
      'numero' => $circolare->getNumero(),
      'titolo' => $circolare->getTitolo(),
      'testo' => $circolare->getTesto(),
      'dataPubblicazione' => $circolare->getDataPubblicazione(),
    );
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Digiboard </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="dataOra.js"></script>
  <link rel="stylesheet" href="divposition.css">
  <!-- <link rel="stylesheet" href="altrocss.css"> -->
</head>
<body onload='setdata()'>

<div class="container-fluid p-5 bg-primary text-yellow text-center" id="div">
  <h1>Digiboard</h1>
  <p>IIS Jean Monnet</p>
</div>

<!-- Animation for the slides -->
<style>
  .circolare {
    position: absolute;
    transform: translateX(100%);
    transition: transform 0.5s ease-out;
    width: 100%;
  }

  .circolare.active {
    transform: translateX(0);
  }

  .circolare.exit {
    transform: translateX(-100%);
  }
</style>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    var index = 0;
    var arrayCircolari = <?php echo json_encode($arrayCircolariJS); ?>;
    var countdownInterval;
    var slideIntervalTime = 50000; // Slide interval time in milliseconds

    function startCountdown() {
      var countdownTime = slideIntervalTime / 1000; // Convert to seconds for display
      document.getElementById('countdown').textContent = countdownTime;

      countdownInterval = setInterval(function() {
        countdownTime--;
        document.getElementById('countdown').textContent = countdownTime;

        if (countdownTime <= 0) {
          clearInterval(countdownInterval);
        }
      }, 1000);
    }

    function updateContent() {
      // If the index is equal to the length of the array, reset it to 0
      if (index === arrayCircolari.length) {
        index = 0;
      }

      // Get the currently active 'circolare' div
      var activeCircolare = document.querySelector('.circolare.active');

      // If there is an active 'circolare' div, remove the 'active' class and add the 'exit' class
      if (activeCircolare) {
        activeCircolare.classList.remove('active');
        activeCircolare.classList.add('exit');

        // After the duration of the exit animation, remove the old 'circolare' div
        setTimeout(function() {
          activeCircolare.parentNode.removeChild(activeCircolare);
        }, 500); // Duration of the exit animation
      }

      // Create a new 'circolare' div
      var newCircolare = document.createElement('div');
      newCircolare.id = 'circolare' + index;
      newCircolare.className = 'circolare';
      newCircolare.innerHTML = '<h3>' + arrayCircolari[index]['titolo'] + '</h3><p>' + arrayCircolari[index]['testo'] + '</p><p>' + arrayCircolari[index]['dataPubblicazione'] + '</p>';

      // Add the new 'circolare' div to the 'demo' div
      document.getElementById('demo').appendChild(newCircolare);

      // After a short delay, add the 'active' class to the new 'circolare' div
      setTimeout(function() {
        newCircolare.classList.add('active');
      }, 100); // Short delay to allow the transition to occur

      // Increment the index
      index++;

      // Reset the countdown timer
      clearInterval(countdownInterval);
      startCountdown();
    }

    //TIMER SLIDER CIRCOLARE
    setInterval(updateContent, slideIntervalTime);
    updateContent();
  });
</script>

<div id="demo" class="col-sm-4" style="text-align: center" ></div>
<div id="mydiv" class='display-time'><p id="date"></p></div>
<div id="countdown" class='mycountdown'></div>
</body>
</html>