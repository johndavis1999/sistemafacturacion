<?php
    class controladorMetodoPago{
        private $model;
        public function __construct()
        {
            require_once("c://xampp/htdocs/sistemafacturacion/modelo/MetodoPago.php");
            $this->model = new metodoPago();
        }
        public function index(){
            return ($this->model->index()) ? $this->model->index() : false;
        }
    }

?>