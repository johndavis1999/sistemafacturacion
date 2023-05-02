<?php
    class controladorFactura{
        private $model;
        public function __construct(){
            require_once("c://xampp/htdocs/sistemafacturacion/modelo/Factura.php");
            $this->model = new Factura();
        }
        public function index(){
            return ($this->model->index()) ? $this->model->index() : false;
        }
        public function deleteFactura($num_fact){
            return ($this->model->deleteFactura($num_fact)) ? header("Location:index.php") : header("Location:index.php") ;
        }
        public function deleteFacturaLogic($num_fact){
            return ($this->model->deleteFacturaLogic($num_fact)) ? header("Location:index.php") : header("Location:index.php") ;
        }
        
        public function guardarFactura($id_cliente, $metodo_pago, $id_cajero, $estado, $iva, $subtotal, $total){
            $POST = array(
                'id_cliente' => $id_cliente,
                'metodo_pago' => $metodo_pago,
                'id_cajero' => $id_cajero,
                'estado' => $estado,
                'iva' => $iva,
                'subtotal' => $subtotal,
                'total' => $total,
                'producto_id' => $_POST['producto_id'],
                'factura_producto_cantidad' => $_POST['factura_producto_cantidad'],
                'precio_unitario' => $_POST['precio_unitario'],
                'monto_final_item' => $_POST['monto_final_item']
            );
            
            if($_POST['precio_unitario'] == null){
                header('Location:facturacion.php');
                exit;
            } else {
                $this->model->guardarFactura($POST);
                return header("Location:index.php");
            }
        }

        public function getFactura($num_fact){
            // Devuelve el resultado de la consulta
            return $this->model->getFactura($num_fact);
        }

        public function getFacturaItems($num_fact){
            // Devuelve el resultado de la consulta
            return $this->model->getFacturaItems($num_fact);
        }
        public function updateFact($num_fact, $metodo_pago, $estado, $total, $iva, $subtotal){
            // Creando un array POST con los datos actualizados de la cotización y el producto
            $POST = array(
                'num_fact' => $num_fact,
                'metodo_pago' => $metodo_pago,
                'estado' => $estado,
                'total' => $total,
                'iva' => $iva,
                'subtotal' => $subtotal,
                'producto_id' => $_POST['producto_id'],
                'factura_producto_cantidad' => $_POST['factura_producto_cantidad'],
                'precio_unitario' => $_POST['precio_unitario'],
                'monto_final_item' => $_POST['monto_final_item']
            );
            if($_POST['producto_id'] == null){
                header("Location:edit_fact.php?num_fact=$num_fact");
                exit;
            } else {
                $this->model->updateFact($POST);
                return header("Location:index.php");
            }
        }
        
    }
        
?>