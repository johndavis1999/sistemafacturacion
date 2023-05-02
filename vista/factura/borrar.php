<?php
    require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlFactura.php");
    $obj = new controladorFactura();
    //$obj->deleteFactura($_GET['num_fact']);
    $obj->deleteFacturaLogic($_GET['num_fact']);
?>