<?php
    class controladorCliente{
        private $model;
        public function __construct()
        {
            require_once("c://xampp/htdocs/sistemafacturacion/modelo/Cliente.php");
            $this->model = new Cliente();
        }
        public function index(){
            return ($this->model->index()) ? $this->model->index() : false;
        }
    }

?>