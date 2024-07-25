# Triggers ![MySql](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

En esta sección se concentrarán los triggers de la base de datos en leguage SQL.

Un disparador (trigger) es un objeto de base de datos que se asocia con una tabla y se ejecuta automáticamente cuando ocurre un evento específico, como una inserción, actualización o eliminación de datos. 
Los triggers ayudan a agilizar las tareas, garantizar la integridad de los datos y aplicar reglas de negocio sin necesidad de intervención manual. Se pueden configurar para ejecutarse antes (`BEFORE`) o después (`AFTER`) de que se realice el evento en la tabla.

Los trigger los podemos urilizar de muchas  maneras, como registrar cambios en las tablas, validar datos antes de su inserción o actualización, y mantener la integridad referencial de los datos. Por ejemplo, podrías crear un trigger que registre cada inserción en una tabla para realizar un seguimiento de las operaciones realizadas en una tabla principal. 

Sin embargo, es importante usar triggers con cuidado, ya que pueden afectar el funcionanmiento de la base de datos si realizan operaciones complejas o se activan con frecuencia. Además, la depuración de triggers puede ser complicada, ya que se ejecutan automáticamente en segundo plano.

Unos de los ejemplos que te podemos dar son los siguientes:

**Ejemplo 1**
Este trigger nos muestra que se ejecutara inmediatamente despuesde que se haya insertado un nuevo registro a la tabla de *ventas*.

CREATE DEFINER=`root`@`localhost` TRIGGER `ventas_AFTER_INSERT` 
AFTER INSERT ON `ventas` FOR EACH ROW BEGIN
INSERT INTO historial_venta (venta_id,cliente_id,fecha_venta,total,accion) VALUE (new.venta_id, new.cliente_id, new.fecha_venta, new.total, 'after insert');
END

**Ejemplo 2**
El trigger se ejecuta antes de insertar un nuevo registro en la tabla `detallesventa`. Primero te redusira el stock del producto correspondiente en la tabla `productos` con forme a la cantidad del nuevo detalle de venta. Luego, verifica si el stock del producto se ha vuelto negativo, genera un error con el mensaje "Stock insuficiente para el producto" y detiene la inserción, para que no se puedan registrar ventas de productos con stock insuficiente.

CREATE DEFINER=`root`@`localhost` TRIGGER `detallesventa_BEFORE_INSERT` BEFORE INSERT ON `detallesventa` FOR EACH ROW BEGIN
UPDATE productos
set stock=stock-New.cantidad
where Producto_id=New.Producto_id;
if (select stock from productos where Producto_id=New.Producto_id)<0 then 
Signal sqlstate '45000'
SET message_text= "stock insuficiente para el producto";
end if;
END


### Estrctura de Archivos 

>| - Backend <br>
>**| - Database** <br>
>&nbsp;&nbsp;| - Backups <br>
>&nbsp;&nbsp;| - Scripts  <br>
>&nbsp;&nbsp;| - Data_Dictionary <br>
>&nbsp;&nbsp;| - Diagrams <br>
>&nbsp;&nbsp;| - Queries <br>
>&nbsp;&nbsp;**| - Triggers**<br>
>&nbsp;&nbsp;| - USPs <br>
>| - Documentation <br>
>| - FrontEnd 


## Equipo de Desarrollo

Integrante|Contacto|Rol|Observaciones|
|----------|--------|-----------|----------|
|M.T.I Marco Antonio Ramírez Hernández|[@MTI-MarcoRH](https://github.com/MTI-MarcoRH)|Lider del Proyecto |✅ Revisado y Aprobado|
|Abril Guzmán Barrera|[@Abrilgb](https://github.com/Abrilgb)|Desarrollador de Bases de Datos| ✅ Revisado y Aprobado |


