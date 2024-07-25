
/* 

Ejemplo 1 
Este trigger nos muestra que se ejecutara inmediatamente despuesde que se haya insertado un nuevo registro a la tabla de *ventas*.

*/
CREATE DEFINER=`root`@`localhost` TRIGGER `ventas_AFTER_INSERT` 
AFTER INSERT ON `ventas` FOR EACH ROW BEGIN
INSERT INTO historial_venta (venta_id,cliente_id,fecha_venta,total,accion) VALUE (new.venta_id, new.cliente_id, new.fecha_venta, new.total, 'after insert');
END

/*

Ejemplo 2*
El trigger se ejecuta antes de insertar un nuevo registro en la tabla `detallesventa`. Primero te redusira el stock del producto correspondiente en la tabla `productos` con forme a la cantidad del nuevo detalle de venta. Luego, verifica si el stock del producto se ha vuelto negativo, genera un error con el mensaje "Stock insuficiente para el producto" y detiene la inserción, para que no se puedan registrar ventas de productos con stock insuficiente.

*/
CREATE DEFINER=`root`@`localhost` TRIGGER `detallesventa_BEFORE_INSERT` BEFORE INSERT ON `detallesventa` FOR EACH ROW BEGIN
UPDATE productos
set stock=stock-New.cantidad
where Producto_id=New.Producto_id;
if (select stock from productos where Producto_id=New.Producto_id)<0 then 
Signal sqlstate '45000'
SET message_text= "stock insuficiente para el producto";
end if;
END