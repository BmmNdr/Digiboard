<!DOCTYPE html>
<html lang="en">
<?php
    require_once "classes/database.php";
    require_once "classes/circolari.php";
    $circolari = circolari::getInstance();
    $circolariFiltrate = [];
    $filtering = false;
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" >
    <!-- filtro(search) js -->
    
    <style>
        .card {
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            transition: 0.3s;
            width: 100%;
            border-radius: 5px;
        }

        .cards {
            margin: 0 auto;
            max-width: 1000px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            font-family: sans-serif;
        }

    </style>
</head>
<body>
    <?php include "navbar/navbar.php"; ?>
    <a href="index.php" class="redirect-button">
        <img src="img/arrow.png" alt="Go to index" />
    </a>
    <div class="center-div">
        <form action="lista.php" method="post">
            <!-- filtro(search) html -->
            <input type="text" id="filtro" name="filtro" placeholder="Cerca il titolo" <?php if (isset($_POST["filtro"])){echo "value='".$_POST["filtro"]."'";}?>>
            <!-- filtro(a tendina) classe, corso, sezione, data -->

            <?php 
                //prende le classi dal DB e le mette in un array
                
                $elementi = database::getInstance()->Select("SELECT * FROM classe");

                $classi = [];
                foreach ($elementi as $record) {
                    $new = database::getInstance()->Select("SELECT * FROM classe WHERE ID = ?", "s", [$record['ID']])[0];
                    array_push($classi, $new['ID']);
                }

                //filtraggio
                $arrFiltro = [];
                $filtering = false;
                if((isset($_POST["filtro"]) && $_POST["filtro"] != "") || (isset($_POST["num"]) && $_POST["num"] != "")
                || (isset($_POST["sez"]) && $_POST["sez"] != "") || (isset($_POST["cor"]) && $_POST["cor"] != "")
                || (isset($_POST["dal"]) && $_POST["dal"] != "") || (isset($_POST["al"]) && $_POST["al"] != "")) {

                    $filtering = true;
                    $params = [];
                    $count = 0;
                    $query = "SELECT DISTINCT circolare.* FROM circolare JOIN indirizzamento ON circolare.ID = indirizzamento.idCircolare WHERE ";
                    if(isset($_POST["filtro"]) && $_POST["filtro"] != ""){$query .= "circolare.titolo LIKE ? AND "; $count++; array_push($params, "%".$_POST["filtro"]."%");}
                    if(isset($_POST["num"]) && $_POST["num"] != "") {$query .= "indirizzamento.idClasse LIKE ? AND "; $count++; array_push($params, $_POST["num"]."%");}
                    if(isset($_POST["sez"]) && $_POST["sez"] != "") {$query .= "indirizzamento.idClasse LIKE ? AND "; $count++; array_push($params, "_".$_POST["sez"]."%");}
                    if(isset($_POST["cor"]) && $_POST["cor"] != "") {$query .= "indirizzamento.idClasse LIKE ? AND "; $count++; array_push($params, "%".$_POST["cor"]);}
                    if(isset($_POST["dal"]) && $_POST["dal"] != "") {$query .= "circolare.dataPubblicazione >= ? AND "; $count++; array_push($params, $_POST["dal"]);}
                    if(isset($_POST["al"]) && $_POST["al"] != "") {$query .= "circolare.dataPubblicazione <= ? AND "; $count++; array_push($params, $_POST["al"]);}

                    $query = rtrim($query, "AND ");
                    $query.= ";";

                    $types = "";
                    for ($i=0; $i < $count; $i++) { 
                        $types.="s";
                    }
                    $records = [];
                    
                    $records = $circolari->selectedCircolari($query, $types, $params);
                    $circolari = [];
                    foreach ($records as $new) {
                        array_push($circolari, new circolare($new['ID'], $new['num'], $new['titolo'], $new['testo'], $new['dataPubblicazione']));
                    }
                    
                }
                
                //variabili + inizio select
                $stringNum = "<select id='num' name='num'><option></option>";
                $stringSezione = "<select id='sez' name='sez'><option></option>";
                $stringCorso = "<select id='cor' name='cor'><option></option>";
                $num = []; $sezione = []; $corso = [];

                //divido i valori in più sottoarray (ES: '5AMEC' -> '5','A','MEC')
                foreach ($classi as $classe) {
                    array_push($num, $classe[0]);
                    array_push($sezione, $classe[1]);
                    array_push($corso, substr($classe, 2));
                }

                //riordino i valori
                sort($num);
                sort($sezione);
                sort($corso);

                //rimuovo i doppioni e inserisco le opzioni nei select
                foreach (array_unique($num) as $value) {
                    $stringNum .= "<option ";
                    if(isset($_POST["num"]) && $_POST["num"] == $value){ $stringNum .= "selected"; }
                    $stringNum .= ">".$value."</option>";
                }
                foreach (array_unique($sezione) as $value) {
                    $stringSezione .= "<option ";
                    if(isset($_POST["sez"]) && $_POST["sez"] == $value){ $stringSezione .= "selected"; }
                    $stringSezione .= ">".$value."</option>";
                }
                foreach (array_unique($corso) as $value) {
                    $stringCorso .= "<option ";
                    if(isset($_POST["cor"]) && $_POST["cor"] == $value){ $stringCorso .= "selected"; }
                    $stringCorso .= ">".$value."</option>";
                }
                //completo le select
                $stringNum .= "</select>"; $stringSezione .= "</select>"; $stringCorso .= "</select>";

                //stampo
                echo "<div class='class-info'>";
                echo "<p>Numero della classe: <span>" . $stringNum . "</span></p>";
                echo "<p>Sezione della classe: <span>" . $stringSezione . "</span></p>";
                echo "<p>Corso della classe: <span>" . $stringCorso . "</span></p>";
                echo "</div>";

                //TO DO: se per tutto l'istituto o per classi specifiche chkbox
                //       pagini per maggiore velocità
            ?>
            <!-- es: dal 17/10/2023 al 20/02/2024 (si può inserire anche una sola data)-->
            <div class="date-inputs">
                <h4>
                    Dal (inserire data minore)
                    <input type="date" id="dal" name="dal"> 
                    al (inserire data maggiore)
                    <input type="date" id="al" name="al">
                </h4>
            </div>

            <div class="search-button">
                <button type="submit">
                    <img src="img/icons/search.ico" width="20px" height="20px">
                </button>
            </div>
        </form>
    </div>

    <!-- visualizzare tutte le circolari dalla più nuova-->
    <!-- funzione come ecommerce dello scroll infinito -->
    <?php if(!$filtering){echo $circolari->outCircolari();} else {echo "<div class='cards'>";foreach($circolari as $circolare){echo $circolare->outPart();}echo "</div>";} ?>

</body>
</html>