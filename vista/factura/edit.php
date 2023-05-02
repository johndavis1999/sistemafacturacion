<?php
    require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlFactura.php");
    $obj = new controladorFactura();
    $num_fact = $_POST['num_fact'];
    $metodo_pago = $_POST['metodo_pago'];;
    $estado = $_POST['estado'];
    $total = $_POST['total'];
    $iva = $_POST['iva'];
    $subtotal = $_POST['subtotal'];
    $obj->updateFact($num_fact, $metodo_pago, $estado, $total, $iva, $subtotal);