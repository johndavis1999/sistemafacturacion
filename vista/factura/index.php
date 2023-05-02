<?php
require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlFactura.php");
$obj = new controladorFactura(); 
$facturas = $obj->index();
?>

<!doctype html>
<html lang="es">

<head>
  <title>Facturacion</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
  <div class="">
    <ul class="nav mt-2">
      <li class="nav-item">
        <a class="nav-link" href="#">Facturación</a>
      </li>
    </ul>
    <h1>Facturas emitidas</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Factura</th>
          <th>Cliente</th>
          <th>Fecha</th>
          <th>Vendedor</th>
          <th>F. Pago</th>
          <th>IVA</th>
          <th>Total</th>
          <th>Estado</th>
          <th>Opciones</th>
        </tr>
      </thead>
      <tbody>
        <?php if($facturas): ?>
        <?php
          foreach ($facturas as $factura) {
          ?>
          <tr>
            <td><?php echo $factura['num_fact'] ?></td>
            <td><?php echo $factura['c_nombre'] . ' ' . $factura['c_apellido']?></td>
            <td><?php echo $factura['fechahora'] ?></td>
            <td><?php echo $factura['cajero'] ?></td>
            <td><?php echo $factura['metodo'] ?></td>
            <td><?php echo $factura['iva'] ?>%</td>
            <td>$<?php echo $factura['total'] ?></td>
            <td><?php echo $factura['estado']==1 ? 'Autorizado': 'Anulado' ?></td>
            <td>
              <?php if ($factura['estado'] == 1): ?>
                <a class="btn btn-primary btn-sm botonimprimir" role="button" href="edit_fact.php?num_fact=<?=$factura['num_fact']?>">Editar?</a>
              <?php elseif ($factura['estado'] == 2): ?>
                <button class="btn btn-secondary btn-sm botonimprimir" type="button">Editar?</button>
              <?php endif; ?>
              <a class="btn btn-primary btn-sm botonimprimir" role="button" href="pdf.php?num_fact=<?=$factura["num_fact"]?>">Imprimir?</a>
              <button type="button" class="btn btn-primary btn-sm botonborrar" data-bs-toggle="modal" data-bs-target="#num_fact<?=$factura['num_fact']?>" id="<?= $factura["num_fact"]?>">
                Borrar?
              </button>
              <!-- ModalConfirmarBorrar -->
              <div class="modal fade"  id="num_fact<?=$factura['num_fact']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="max-width: 600px" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h1>¿Realmente quiere borrar la factura #<?=$factura['num_fact']?>?</h1>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-footer">
                      <a href="borrar.php?num_fact=<?= $factura['num_fact']?>" class="btn btn-success">Confirmar</a>
                      <button type="button" data-bs-dismiss="modal" class="btn btn-success">Cancelar</button>
                    </div>
                  </div>
                </div>
              </div>
            </td>
          </tr>
        <?php
        }
        ?>
        <?php else: ?>
            <tr>
                <td colspan="12" class="text-center">No hay documentos</td>
            </tr>
        <?php endif; ?>
      </tbody>
    </table>
    <a type="button" id="btnNuevaFactura" class="btn btn-success" href='/sistemafacturacion/vista/factura/facturacion.php'>Emitir factura</a>
  </div>

</body>
</html>