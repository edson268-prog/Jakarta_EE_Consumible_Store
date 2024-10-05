/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function agregarProducto() {
    var producto = document.getElementsByName("producto")[0];
    var nombreProducto = producto.options[producto.selectedIndex].text.split(" - ")[0];
    var precioProducto = parseFloat(producto.options[producto.selectedIndex].text.split(" - ")[1].substring(3));
    var cantidad = document.getElementById("cantidad").value;

    var tabla = document.getElementById("tablaProductos");
    var fila = tabla.insertRow();

    var celdaNombre = fila.insertCell(0);
    var celdaPrecio = fila.insertCell(1);
    var celdaCantidad = fila.insertCell(2);
    var celdaTotal = fila.insertCell(3);

    celdaNombre.innerHTML = nombreProducto;
    celdaPrecio.innerHTML = precioProducto;
    celdaCantidad.innerHTML = cantidad;
    celdaTotal.innerHTML = precioProducto * cantidad;
}
