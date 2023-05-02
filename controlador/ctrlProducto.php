<?php
    class controladorProducto{
        private $model;
        public function __construct()
        {
            require_once("c://xampp/htdocs/sistemafacturacion/modelo/Producto.php");
            $this->model = new Producto();
        }
        public function index(){
            return ($this->model->index()) ? $this->model->index() : false;
        }

        function getPrecioProducto($productoId) {
            $conn = mysqli_connect("localhost", "root", "", "db_dsn_08");
            $sql = "SELECT precio FROM productos WHERE id = $productoId";
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);
            mysqli_close($conn);
            return $row['precio'];
        }
        
    }

?>