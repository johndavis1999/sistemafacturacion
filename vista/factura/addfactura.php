<?php
    require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlFactura.php");
    $obj = new controladorFactura();
    $id_cliente = $_POST['id_cliente'];
    $metodo_pago = $_POST['metodo_pago'];
    $id_cajero = $_POST['id_cajero'];
    $estado = $_POST['estado'];
    $iva = $_POST['iva'];
    $subtotal = $_POST['subtotal'];
    $total = $_POST['total'];
    $obj->guardarFactura($id_cliente, $metodo_pago, $id_cajero, $estado, $iva, $subtotal, $total);
?>
 