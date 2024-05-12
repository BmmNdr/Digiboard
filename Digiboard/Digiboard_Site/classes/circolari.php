<?php
require_once "classes/circolare.php";

class circolari
{
    private $circolari;
    private static $_instance = null;

    public static function getInstance(){
        if(!self::$_instance){
            $instance = new circolari();
        }

        return $instance;
    }

    private function __construct()
    {
        $this->circolari = circolare::fromRecordSet(database::getInstance()->Select("SELECT * FROM circolare"));
    }

    public function selectedCircolari($query, $types, $params = []) {
        return database::getInstance()->Select($query, $types, $params);
    }

    public function outCircolari()
    {
        $string = "<div class='cards'>";

        for ($i=sizeof($this->circolari)-1; $i>=0 ; $i--) { 
            $string .= $this->circolari[$i]->outPart();
        }

        $string .= "</div>";

        return $string;
    }

    public function outRecentCircolari()
    {
        $array = [];

        //da rivedere forse
        for ($i=sizeof($this->circolari)-1; $i>=sizeof($this->circolari)-6 ; $i--) { 
            array_push($array, $this->circolari[$i]->outPart());
        }

        return $array;
    }
}

?>