<?php
require_once "classes/database.php";

class circolare
{
    public $ID;
    public $num;
    public $titolo;
    public $testo;
    public $dataPubblicazione;


    public function __construct($ID, $num, $titolo, $testo, $dataPubblicazione)
    {
        $this->ID = $ID;
        $this->num = $num;
        $this->titolo = $titolo;
        $this->testo = $testo;
        $this->dataPubblicazione = $dataPubblicazione;
    }

    public static function fromNum($num)
    {
        $new = database::getInstance()->Select("SELECT * FROM circolare WHERE num = ?", "i", [$num])[0];
        return new circolare($new['ID'], $new['num'], $new['titolo'], $new['testo'], $new['dataPubblicazione']);
    }

    public static function fromID($ID)
    {
        $new = database::getInstance()->Select("SELECT * FROM circolare WHERE ID = ?", "i", [$ID])[0];
        return new circolare($new['ID'], $new['num'], $new['titolo'], $new['testo'], $new['dataPubblicazione']);
    }
    
    public static function fromRecordSet($recordSet)
    {
        $circolari = [];
        foreach ($recordSet as $record) {
            array_push($circolari, circolare::fromID($record['ID']));
        }

        return $circolari;
    }

    public function outFull()
    {
        $string = "<div>
                        <h5>data di pubblicazione: " . $this->dataPubblicazione . "</h5><br>
                        <h5>circ. n." . $this->num . "</h5><br>
                        <h1>".$this->titolo."</h1><br>
                        <p>" . $this->testo . "</p>
                    </div>";

        return $string;
    }

    public function outPart()
    {
        if (strlen($this->testo) > 200) {
            $testoPart = preg_replace('/\s+?(\S+)?$/', '', substr($this->testo, 0, 201));
        } else {
            $testoPart = $this->testo;
        }

        $string = "<form id='carta' action='dettagli.php' method='post'>
                    <a onclick='this.parentNode.submit();'>
                    <div class='card' name='card'>
                    <div class='container'>
                    <input type='hidden' name='id' value=".$this->ID.">
                    <div><p>circ. n." . $this->num . "</p> <p>data: ". $this->dataPubblicazione."</p></div>
                    <h4>".$this->titolo."</h4>
                    <p>" . $testoPart . "[...]</p>
                    </div>
                    </div>
                    </a>
                    </form>";
        return $string;
    }

}

?>