<?php
class circolare {
    private $ID;
    private $numero;
    private $titolo;
    private $testo;
    private $dataPubblicazione;
    private $idIndirizzamento;

    public function __construct($ID, $numero, $titolo, $testo, $dataPubblicazione) {
        $this->ID = $ID;
        $this->numero = $numero;
        $this->titolo = $titolo;
        $this->testo = $testo;
        $this->dataPubblicazione = $dataPubblicazione;
    }

    // Metodi getter

    public function getID() {
        return $this->ID;
    }
    
    public function getNumero() {
        return $this->numero;
    }

    public function getTitolo() {
        return $this->titolo;
    }

    public function getTesto() {
        return $this->testo;
    }

    public function getDataPubblicazione() {
        return $this->dataPubblicazione;
    }

    // Metodi setter

    public function setNumero($numero) {
        $this->numero = $numero;
    }

    public function setTitolo($titolo) {
        $this->titolo = $titolo;
    }

    public function setTesto($testo) {
        $this->testo = $testo;
    }

    public function setDataPubblicazione($dataPubblicazione) {
        $this->dataPubblicazione = $dataPubblicazione;
    }

    public function setID($ID) {
        $this->ID = $ID;
    }

    // Altri metodi utili
    public function render() {
        $render ="";
        $render+= "Numero: " . $this->getNumero() . "<br>";
        $render+= "Titolo: " . $this->getTitolo() . "<br>";
        $render+= "Testo: " . $this->getTesto() . "<br>";
        $render+= "Data di Pubblicazione: " . $this->getDataPubblicazione() . "<br>";
        return $render;
    }
}
?>