<?php
    class Cliente{
        private $PDO;
        public function __construct()
        {
            require_once("c://xampp/htdocs/sistemafacturacion/base/database.php");
            $con = new database();
            $this->PDO = $con->conexion();
        }
        public function index(){
            $statement = $this->PDO->prepare("SELECT * FROM cliente");
            return ($statement->execute()) ? $statement->fetchAll() : false;
        }
    }
?>