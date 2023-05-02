<?php
    class Factura{
        private $PDO;
        //Atributos factura
        private $id_cliente;
        private $metodo_pago;
        private $id_cajero;
        private $estado;
        private $iva;
        private $subtotal;
        private $total;
        //atributos detalle
        private $factura_id;
        private $producto_id;
        private $factura_producto_cantidad;
        private $precio_unitario;
        private $monto_final_item;

        public function __construct()
        {
            require_once("c://xampp/htdocs/sistemafacturacion/base/database.php");
            $con = new database();
            $this->PDO = $con->conexion();
        }
        
        public function guardarFactura($POST) {
            $this->id_cliente = $POST['id_cliente'];
            $this->metodo_pago = $POST['metodo_pago'];
            $this->id_cajero = $POST['id_cajero'];
            $this->estado = $POST['estado'];
            $this->iva = $POST['iva'];
            $this->subtotal = $POST['subtotal'];
            $this->total = $POST['total'];

            $stament = $this->PDO->prepare("INSERT INTO factura (id_cliente, metodo_pago, id_cajero, estado, iva, subtotal, total) 
                        VALUES (:id_cliente, :metodo_pago, :id_cajero, :estado, :iva, :subtotal, :total)");
            $stament->bindParam(':id_cliente', $this->id_cliente);
            $stament->bindParam(':metodo_pago', $this->metodo_pago);
            $stament->bindParam(':id_cajero', $this->id_cajero);
            $stament->bindParam(':estado', $this->estado);
            $stament->bindParam(':iva', $this->iva);
            $stament->bindParam(':subtotal', $this->subtotal);
            $stament->bindParam(':total', $this->total);
            $stament->execute();
            $lastInsertId = $this->PDO->lastInsertId();
            $this->guardarDetalleFactura($lastInsertId, $POST);
            return $lastInsertId;
        }

        private function guardarDetalleFactura($lastInsertId, $POST) {
            for ($i = 0; $i < count($POST['producto_id']); $i++) {
                $statement = $this->PDO->prepare("INSERT INTO detalle_factura_item (factura_id, producto_id, factura_producto_cantidad, precio_unitario, monto_final_item) 
                                VALUES (:factura_id, :producto_id, :factura_producto_cantidad, :precio_unitario, :monto_final_item)");
                $statement->bindParam(':factura_id', $lastInsertId);
                $statement->bindParam(':producto_id', $POST['producto_id'][$i]);
                $statement->bindParam(':factura_producto_cantidad', $POST['factura_producto_cantidad'][$i]);
                $statement->bindParam(':precio_unitario', $POST['precio_unitario'][$i]);
                $statement->bindParam(':monto_final_item', $POST['monto_final_item'][$i]);
                $statement->execute();
            }
        }
        
        public function index(){
            $statement = $this->PDO->prepare("SELECT f.*, c.nombre as c_nombre, c.apellido as c_apellido, cj.nombres as cajero, mp.nombre as metodo  
                                                FROM factura f 
                                                LEFT JOIN cliente c ON f.id_cliente = c.id_cliente
                                                LEFT JOIN cajero cj ON f.id_cajero = cj.id_cajero
                                                LEFT JOIN metodo_pago mp ON f.metodo_pago = mp.id_num
                                                WHERE f.estado != 99
                                                ORDER BY f.num_fact  DESC");
            return ($statement->execute()) ? $statement->fetchAll() : false;    
        }

        public function deleteFactura($num_fact){
            require_once("c://xampp/htdocs/sistemafacturacion/base/database.php");
            $con = new database();
            $PDO = $con->conexion();
        
            $stament = $PDO->prepare("DELETE FROM factura WHERE num_fact = :num_fact");
            $stament->bindParam(":num_fact",$num_fact);
            if ($stament->execute()) {
                // Llamada a la función deleteOrdenItems()
                $this->deleteFacturaItems($num_fact, $PDO);
                return true;
            } else {
                return false;
            }
        }

        public function deleteFacturaLogic($num_fact){
            require_once("c://xampp/htdocs/sistemafacturacion/base/database.php");
            $con = new database();
            $PDO = $con->conexion();
            $stament = $PDO->prepare("UPDATE factura SET estado = 99 WHERE num_fact = :num_fact");
            $stament->bindParam(":num_fact",$num_fact);
            if ($stament->execute()) {
                // Llamada a la función deleteOrdenItems()
                return true;
            } else {
                return false;
            }
        }
        
        public function deleteFacturaItems($num_fact, $PDO)
        {
            $stament = $PDO->prepare("
                DELETE FROM detalle_factura_item
                WHERE factura_id = :num_fact");
            $stament->bindParam(":num_fact",$num_fact);
            $stament->execute();
        }
        
        public function getFactura($num_fact){
            $statement = $this->PDO->prepare("SELECT f.*, c.nombre as nombre, c.apellido  as apellido, c.telefono  as telefono
                                                FROM factura f 
                                                LEFT JOIN cliente c ON f.id_cliente = c.id_cliente 
                                                WHERE f.num_fact =:num_fact;");
            $statement->bindParam(":num_fact",$num_fact);
            $statement->execute();
            return $statement->fetch(PDO::FETCH_ASSOC);
        }

        public function getFacturaItems($num_fact){
            $statement = $this->PDO->prepare("SELECT detalle_factura_item.*, producto.nombre as producto
                                                    FROM detalle_factura_item 
                                                    LEFT JOIN producto ON detalle_factura_item.producto_id = producto.id
                                                    WHERE factura_id = :factura_id");
            $statement->bindParam(":factura_id", $num_fact);
            $statement->execute();
            return $statement->fetchAll(PDO::FETCH_ASSOC);
        }
        
        public function updateFact($POST){
            
            $con = new database();
            $PDO = $con->conexion();
            $this->metodo_pago = $POST['metodo_pago'];
            $this->estado = $POST['estado'];
            $this->total = $POST['total'];
            $this->iva = $POST['iva'];
            $this->subtotal = $POST['subtotal'];
            $num_fact = $POST['num_fact'];
        
            // Preparar la consulta SQL para actualizar la cotización en la base de datos
            $stament = $this->PDO->prepare("UPDATE factura SET 
                metodo_pago = :metodo_pago, estado = :estado, total = :total, iva = :iva, subtotal = :subtotal
                WHERE num_fact = :num_fact");
        
            // Vincular los parámetros con los valores correspondientes
            $stament->bindParam(':metodo_pago', $POST['metodo_pago']);
            $stament->bindParam(':estado', $POST['estado']);
            $stament->bindParam(':total', $POST['total']);
            $stament->bindParam(':iva', $POST['iva']);
            $stament->bindParam(':subtotal', $POST['subtotal']);
            $stament->bindParam(':num_fact', $num_fact);
            $this->deleteFacturaItems($num_fact, $PDO);
            // Ejecutar la consulta SQL
            $stament->execute(); 
            //seccion para manipular detalles
            for ($i = 0; $i < count($POST['producto_id']); $i++) {
                $stament = $this->PDO->prepare("INSERT INTO detalle_factura_item (factura_id, producto_id, factura_producto_cantidad, precio_unitario, monto_final_item) 
                VALUES ('" . $POST['num_fact'] . "', '" . $POST['producto_id'][$i] . "', '" . $POST['factura_producto_cantidad'][$i] . "', '" . $POST['precio_unitario'][$i] . "', '" . $POST['monto_final_item'][$i] . "')");
                
                $stament->execute();
            }
        }
    }
?>