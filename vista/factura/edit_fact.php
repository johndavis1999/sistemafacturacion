<?php
require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlCliente.php");
$obj = new controladorCliente(); 
$clientes = $obj->index();

require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlProducto.php");
$obj = new controladorProducto(); 
$productos = $obj->index();

require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlMetodoPago.php");
$obj = new controladorMetodoPago(); 
$metodos = $obj->index();
require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlFactura.php");
$obj = new controladorFactura();
$factValues = $obj->getFactura($_GET['num_fact']);
$factItems = $obj->getFacturaItems($_GET['num_fact']);
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
  <style>
    .form-inline label {
        font-weight: bold;
        margin-right: 10px;
    }
    
    .form-inline .input-group-addon {
        background-color: #f5f5f5;
        border-color: #ccc;
        color: #555;
    }
    
    .form-inline .form-group {
        margin-right: 20px;
    }
    
    .form-inline .form-control {
        border-color: #ccc;
        border-radius: 4px;
        box-shadow: none;
        height: 40px;
    }
    
    .form-inline .form-select {
        border-color: #ccc;
        border-radius: 4px;
        box-shadow: none;
        height: 40px;
        width: 100%;
    }
    
    .currency {
        background-color: #f5f5f5;
        border-color: #ccc;
        color: #555;
        font-weight: bold;
        padding: 9px 12px;
        border-radius: 4px 0 0 4px;
    }
    
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
    
    input[type="number"] {
        -moz-appearance: textfield;
    }
</style>

</head>

<body>
    
<div class="container">
    <form action="edit.php" id="factura-form" method="post" class="factura-form" role="form">
        <div class="row mt-4">
            <div class="col-md">
                <input type="hidden" name="num_fact" value="<?= $factValues['num_fact'] ?>">
                <div class="form-group row mb-3">
                <label for="CodigoFactura" class="col-lg-3 col-form-label">Número de factura: </label>
                <div class="col-lg-3">
                    <input type="text" disabled class="form-control" id="CodigoFactura" value="<?= $factValues['num_fact'] ?>">
                </div>
                </div>

                <input type="hidden" value="1" name="id_cajero">

                <div class="form-group row mb-3">
                <label for="Fecha" class="col-lg-3 col-form-label">Fecha de emisión:</label>
                <div class="col-lg-3">
                    <?php
                    $fecha = date('Y-m-d', strtotime($factValues['fechahora']));
                    ?>
                    <input type="date" class="form-control" id="Fecha" value="<?= $fecha ?>" readonly>
                </div>

                </div>

                <div class="form-group row mb-3">
                    <label for="CodigoCliente" class="col-lg-3 col-form-label">Cliente:</label>
                    <div class="col-lg-3">
                        
                        <input type="text" class="form-control" value="<?= $factValues['nombre'] . ' ' . $factValues['apellido']?>" disabled    >
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <label for="CodigoCliente" class="col-lg-3 col-form-label">Forma de pago:</label>
                    <div class="col-lg-3">
                        <select class="form-select" name="metodo_pago" id="metodo_pago" aria-label="Disabled select example" required>
                            <?php foreach ($metodos as $metodo):    
                                if($metodo['id_num'] == $factValues['metodo_pago']){?>
                                    <option value="<?php echo $metodo['id_num']; ?>" selected><?php echo $metodo['nombre']; ?></option>
                                <?php
                                } else{
                                ?>
                                    <option value="<?php echo $metodo['id_num']; ?>"><?php echo $metodo['nombre']; ?></option>
                                <?php
                                }
                                ?>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <label for="CodigoCliente" class="col-lg-3 col-form-label">Estado:</label>
                    <div class="col-lg-3">
                        <select class="form-select" name="estado" id="estado" aria-label="Disabled select example" required>
                            <option value="1" <?= $factValues['estado']=='1'? 'selected' : ''?>>Autorizado</option>
                            <option value="2" <?= $factValues['estado']=='2'? 'selected' : ''?>>Anulado</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <!-- detalle -->
        <div class="row mt-4">
            <div class="col-md">
                <?php
                    $optionsHtml = '';
                    foreach ($productos as $producto) {
                        $optionsHtml .= '<option value="' . $producto['id'] . '">' . $producto['nombre'] . '</option>';
                    }
                ?>
                <table class="table table-bordered table-hover" id="facturaItems">
                    <div class="row">
                        <div class="">
                            <button class="btn btn-danger delete" id="removeRows" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                </svg></button>
                            <button class="btn btn-success" id="addRows" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg></button>
                        </div>
                    </div>
                    <tr>
                        <th><input id="checkAll" class="formcontrol" type="checkbox"></th>
                        <th>Producto</th>    
                        <th>Cantidad</th>  
                        <th>Precio Unitario</th>
                        <th>Total producto/s</th>
                    </tr>
                    <small id="mensaje-error" style="color:red;">Importante; debe seleccionar al menos un producto para guardar el documento</small>
                    
                    <?php
                    // Iteramos a través de la lista de elementos de la orden
                    
                    $count = 0;
                    foreach ($factItems as $factItem) {
                        $count++;
                        $producto_id = $factItem["producto_id"];
                        $factura_producto_cantidad = $factItem["factura_producto_cantidad"];
                        $precio_unitario = $factItem["precio_unitario"];
                        $monto_final_item = $factItem["monto_final_item"];
                    ?>
                    <tr>
                        <td><input class="itemRow" type="checkbox"></td>
                        <td>
                            <!-- Creamos un menú desplegable para seleccionar el producto -->
                            <select class="form-select" name="producto_id[]" id="producto_id_<?php echo $count; ?>" aria-label="Disabled select example" required>
                                <option value="" selected>Seleccionar producto</option>
                                <!-- Iteramos a través de la lista de productos y creamos una opción para cada uno -->
                                <?php foreach ($productos as $producto): ?>
                                <option value="<?php echo $producto['id']; ?>" <?php if ($producto_id == $producto['id']) { echo 'selected'; } ?>><?php echo $producto['nombre']; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </td>
                        <!-- Creamos un campo de entrada para la cantidad de producto -->
                        <td><input type="number" value="<?php echo $factura_producto_cantidad;?>" name="factura_producto_cantidad[]" id="factura_producto_cantidad_<?php echo $count; ?>" class="form-control factura_producto_cantidad" autocomplete="off" pattern="[0-9]" min="1" required></td>
                        <td><input type="number" value="<?= $factItem["precio_unitario"];?>" #monto_final_item_name="precio_unitario[]" id="precio_unitario_<?php echo $count; ?>" class="form-control precio_unitario" autocomplete="off"></td>
                        <td><input type="number" value="<?php echo $monto_final_item;?>" name="monto_final_item[]" id="monto_final_item_<?php echo $count; ?>" class="form-control monto_final_item" autocomplete="off" readonly></td>
                    </tr>
                    <?php } ?>
                </table>

                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <span class="form-inline">
                        <div class="form-group">
                            <label for="subtotal">Subtotal:</label>
                            <div class="input-group">
                                <div class="input-group-addon currency">$</div>
                                <input value="<?= $factValues['subtotal']?>" type="number" class="form-control" name="subtotal" id="subtotal" placeholder="Subtotal" readonly required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="iva">IVA:</label>
                            <div class="col-lg-3">
                                <select class="form-select" name="iva" id="iva" aria-label="Disabled select example" required>
                                    <option value="12" <?= $factValues['iva']=='12'? 'selected' : ''?>>12%</option>
                                    <option value="0" <?= $factValues['iva']=='0'? 'selected' : ''?>>0%</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="total">Total:</label>
                            <div class="input-group">
                                <div class="input-group-addon currency">$</div>
                                <input value="<?= $factValues['total']?>" type="number" class="form-control" name="total" id="total" placeholder="Total" readonly required>
                            </div>
                        </div>
                    </span>
                </div>
                <button type="submit" id="" class="btn btn-success">Emitir Factura</button>
                <button type="button" data-bs-toggle="modal" data-bs-target="#btnTerminarFactura" class="btn btn-danger">Terminar Factura</button>
            </div>
        </div>
    </form>
</div>


    <!-- ModalFinFactura -->
    <div class="modal fade" id="btnTerminarFactura" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1>Acciones</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-footer">
                    <button type="button" data-bs-dismiss="modal"  class="btn btn-danger">Cancelar</button>
                    <a type="button" id="btnConfirmarDescartarFactura" class="btn btn-success" href="/sistemafacturacion/">Descartar la Factura</a>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
<script>
    $(document).ready(function(){
	$(document).on('click', '#checkAll', function() {          	
		$(".itemRow").prop("checked", this.checked);
	});	
	$(document).on('click', '.itemRow', function() {  	
		if ($('.itemRow:checked').length == $('.itemRow').length) {
			$('#checkAll').prop('checked', true);
		} else {
			$('#checkAll').prop('checked', false);
		}
	});  
	var count = $(".itemRow").length;
    var optionsHtml = '<?php echo $optionsHtml; ?>';

    $(document).on('click', '#addRows', function() { 
    count++;
    var htmlRows = '';
    htmlRows += '<tr>';
    htmlRows += '<td><input class="itemRow" type="checkbox"></td>';          
    htmlRows += '<td><select class="form-select" name="producto_id[]" id="producto_id_'+count+'" aria-label="Disabled select example" required>';
    htmlRows += '<option value="" selected>Seleccionar producto</option>' + optionsHtml;
    htmlRows += '</select></td>';            
    htmlRows += '<td><input type="number" name="factura_producto_cantidad[]" id="factura_producto_cantidad_'+count+'" class="form-control factura_producto_cantidad" autocomplete="off" required step="1" min="1"></td>';           
    htmlRows += '<td><input type="number" name="precio_unitario[]" id="precio_unitario_'+count+'" class="form-control precio_unitario" autocomplete="off"></td>'; 
    htmlRows += '<td><input type="number" name="monto_final_item[]" id="monto_final_item_'+count+'" class="form-control monto_final_item" autocomplete="off" readonly></td>'; 
    htmlRows += '</tr>';
    $('#facturaItems').append(htmlRows);
    
    // Obtener el elemento de selección de productos de la fila dinámica
    var productoSelect = document.getElementById("producto_id_" + count);
    
    // Agregar un evento de cambio al elemento de selección de productos de la fila dinámica
    productoSelect.addEventListener("change", function() {
        
        // Obtener el valor seleccionado
        var productoId = this.value;
        
        // Obtener el precio del producto seleccionado
        var precio = obtenerPrecioProducto(productoId);
        
        // Asignar el precio al campo de precio unitario
        var precioUnitario = document.getElementById("precio_unitario_" + count);
        precioUnitario.value = precio;
        
        // Calcular y asignar el monto final del item
        calcularMontoFinalItem(count);
    });
});

// Función para obtener el precio de un producto por su ID
function obtenerPrecioProducto(productoId) {
    // Recorrer la lista de productos y buscar el precio del producto con el ID especificado
    var productos = <?php echo json_encode($productos); ?>;
    for (var i = 0; i < productos.length; i++) {
        if (productos[i].id == productoId) {
            return productos[i].precio;
        }
    }
    return 0; // Devolver cero si no se encontró el producto
}

// Función para calcular y asignar el monto final del item
function calcularMontoFinalItem(row) {
    var precioUnitario = document.getElementById("precio_unitario_" + row).value;
    var cantidad = document.getElementById("factura_producto_cantidad_" + row).value;
    var montoFinalItem = document.getElementById("monto_final_item_" + row);
    montoFinalItem.value = precioUnitario * cantidad;
}

	$(document).on('click', '#removeRows', function(){
		$(".itemRow:checked").each(function() {
			$(this).closest('tr').remove();
		});
		$('#checkAll').prop('checked', false);
		calculateTotal();
	});		
	$(document).on('blur', "[id^=factura_producto_cantidad_]", function(){
		calculateTotal();
	});	
	$(document).on('blur', "[id^=precio_unitario_]", function(){
		calculateTotal();
	});	
	$(document).on('blur', "#iva", function(){		
		calculateTotal();
	});	
});	


function calculateTotal(){
	var montoTotal = 0; 
	$("[id^='precio_unitario_']").each(function() {
		var id = $(this).attr('id');
		id = id.replace("precio_unitario_",'');
		var priceU = $('#precio_unitario_'+id).val();
		var cantidad  = $('#factura_producto_cantidad_'+id).val();
		if(!cantidad) {
			cantidad = 1;
		}
		var total = priceU*cantidad;
		$('#monto_final_item_'+id).val(parseFloat(total));
		montoTotal += total;			
	});
	$('#subtotal').val(parseFloat(montoTotal));	
	var iva = $("#iva").val();
	var subtotal = $('#subtotal').val();	
	if(subtotal) {
		var montoIva = subtotal*iva/100;
		subtotal = parseFloat(subtotal)+parseFloat(montoIva);
		$('#total').val(subtotal);		
		var amountPaid = $('#amountPaid').val();
		var total = $('#total').val();	
		if(amountPaid && total) {
			total = total-amountPaid;			
			$('#amountDue').val(total);
		} else {		
			$('#amountDue').val(subtotal);
		}
	}
}
</script>