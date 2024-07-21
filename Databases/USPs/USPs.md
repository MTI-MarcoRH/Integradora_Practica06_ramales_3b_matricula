# Procedimientos Almacenados


### PROCEDIMIENTO TRANSACTION

CREATE DEFINER=`root`@`localhost` PROCEDURE `transaction`(in vnombre<br> varchar(50), in vprecio decimal(10,2), in vstock int, in vcategoria<br>
varchar(45), in vestado varchar(45)) <br>
BEGIN<br>
start transaction;<br>
insert into productos(Nombre, Precio, Stock, categoria, estado)<br>
 values (vnombre, vprecio, vstock, vcategoria, vestado);<br>
if (vcategoria='botana') then<br>
commit;<br>
else<br>
rollback;<br>
end if;<br>
END


## PROCEDIMIENTO LLENADO_DE_DATOS_ALEATORIOS

CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar datos aleatorios`(in num_registros int)<br>
BEGIN<br>
-- declaracion de contador desde 0<br>
declare i int default 0;<br>
declare nombre_aleatorio varchar(50);<br>
declare correo_aleatorio varchar(40);<br>
declare telefono_aleatorio varchar(20);<br><br>

while i< num_registros do<br>
set nombre_aleatorio=concat('Nombre', floor(500+rand()*500));<br>
set correo_aleatorio=concat('Usuario', floor(500+rand()*500),<br> '@utxicotepec.edu.mx');<br>
set telefono_aleatorio=concat('7641', floor(500+rand()*500),'-', floor(500+rand()*500));<br>
insert into clientes(Nombre, Correo, Telefono) values (nombre_aleatorio,<br> correo_aleatorio, telefono_aleatorio);<br>

set i=i+1;<br>
end while;<br>

END

