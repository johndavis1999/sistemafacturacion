<?php
require_once("c://xampp/htdocs/sistemafacturacion/controlador/ctrlFactura.php");
$obj = new controladorFactura();
$factValues = $obj->getFactura($_GET['num_fact']);
$factItems = $obj->getFacturaItems($_GET['num_fact']);


$output = '';
$output .= '<table width="100%" border="1" cellpadding="5" cellspacing="0">
	<tr>
	<td colspan="2" align="center" style="font-size:18px"><b>FACTURA</b></td>
	</tr>
	<tr>
	<td colspan="2">
	<table width="100%" cellpadding="5">
	<tr>
	<td width="65%">
	PARA,<br />
	<b>Facturado a:</b><br />
	Cliente : ' . $factValues['nombre']  . $factValues['apellido'] .' <br /> 
	Telefono : ' . $factValues['telefono'] . '<br />
	</td>
	<td width="70%">         
	Factura no. : #' . $factValues['num_fact'] . '<br />
	Fecha de la factura : ' . $factValues['fechahora'] . '<br />
	</td>
	</td>
	<td width="70%">         
	IVA:' . $factValues['iva'] . '%'.'<br />
	Total facturado : ' . '$' . $factValues['total'] . '<br />
	</td>
	</tr>
	</table>
	<br />
	<table width="100%" border="1" cellpadding="5" cellspacing="0">
	<tr>
	<th align="left">No.</th>
	<th align="left">Producto</th>
	<th align="left">Cantidad</th>
	<th align="left">Precio U.</th>
	<th align="left">Total</th> 
	</tr>';
$count = 0;
foreach ($factItems as $factItem) {
	$count++;
	$output .= '
	<tr>
	<td align="left">' . $count . '</td>
	<td align="left">' . $factItem["producto"] . '</td>
	<td align="left">' . $factItem["factura_producto_cantidad"] . '</td>
	<td align="left">' . '$'. $factItem["precio_unitario"] . '</td>
	<td align="left">' . '$' . $factItem["monto_final_item"] . '</td>
	</tr>';
}

$output .= '
	</table>
	</td>
	</tr>
	</table>';
// create pdf of invoice	
$invoiceFileName = 'Factura ConfiguroWeb-' . $factValues['num_fact'] . '.pdf';
require_once '../../dompdf/src/Autoloader.php';
Dompdf\Autoloader::register();

use Dompdf\Dompdf;

$dompdf = new Dompdf();
$dompdf->loadHtml(html_entity_decode($output));
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();
$dompdf->stream($invoiceFileName, array("Attachment" => false));
