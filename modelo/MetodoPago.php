<?php
    class metodoPago{
        private $PDO;
        public function __construct()
        {
            require_once("c://xampp/htdocs/sistemafacturacion/base/database.php");
            $con = new database();
            $this->PDO = $con->conexion();
        }
        public function index(){
            $statement = $this->PDO->prepare("SELECT * FROM metodo_pago");
            return ($statement->execute()) ? $statement->fetchAll() : false;
        }
    }
?>