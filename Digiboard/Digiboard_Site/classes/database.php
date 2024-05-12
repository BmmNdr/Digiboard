<?php

class database
{     
    private $_connection;
    private static $_instance;
    private  $dbhost = "127.0.0.1";
    private  $username = "root";
    private  $password = "";
    private  $dbname = "digiboard";
    /*private  $dbhost = "db.springmc.net";
    private  $port = "3307";
    private  $username = "digiboard";
    private  $password = "digiboard";
    private  $dbname = "digiboard";*/


    public static function getInstance()
    {
        if (!self::$_instance) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    private function __construct()
    {
        $this->_connection = new mysqli($this->dbhost, /*$this->port,*/ $this->username,  $this->password, $this->dbname);
        
        // Error handling
        if (mysqli_connect_errno()) {
            throw new Exception("Could not connect to database.");
        }
    }

    public function getConnection()
    {
        return $this->_connection;
    }


    // Insert a row/s in a Database Table
    public function Insert($query = "", $types = "", $params = [])
    {
        try {

            $stmt = $this->executeStatement($query, $types, $params);
            $stmt->close();

            return $this->_connection->insert_id;
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }

    // Select a row/s in a Database Table
    public function Select($query = "", $types  = "", $params = [])
    {
        try {

            $stmt = $this->executeStatement($query, $types, $params);

            $result = $stmt->get_result()->fetch_all(MYSQLI_ASSOC); //restituisce array
            $stmt->close();

            return $result;
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }

    // Update a row/s in a Database Table
    public function Update($query = "", $types  = "", $params = [])
    {
        try {

            $this->executeStatement($query, $types, $params)->close();
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }

        return false;
    }

    // Remove a row/s in a Database Table
    public function Remove($query = "", $types  = "", $params = [])
    {
        try {

            $this->executeStatement($query, $types, $params)->close();
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }

        return false;
    }

    // execute statement
    private function executeStatement($query = "", $types  = "", $params = [])
    {

        try {
            $stmt = $this->_connection->prepare($query);

            if ($stmt === false) {
                throw new Exception("Unable to do prepared statement: " . $query);
            }

            if ($params && $types) {
                //call_user_func_array(array($stmt, 'bind_param'), $params);

                $stmt->bind_param($types, ...$params);
            }

            $stmt->execute();

            return $stmt;
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }
}