# Procedimientos Almacenados


### PROCEDIMIENTO TRANSACTION

CREATE DEFINER=`root`@`localhost` PROCEDURE `transaction`(in vnombre varchar(50), in vprecio decimal(10,2), in vstock int, in vcategoria varchar(45), in vestado varchar(45))
BEGIN
start transaction;
insert into productos(Nombre, Precio, Stock, categoria, estado)
 values (vnombre, vprecio, vstock, vcategoria, vestado);
if (vcategoria='botana') then
commit;
else
rollback;
end if;


## PROCEDIMIENTO LLENADO_DE_DATOS_ALEATORIOS

CREATE DEFINER=`root`@`localhost` PROCEDURE `llenar datos aleatorios`(in num_registros int)
BEGIN
-- declaracion de contador desde 0
declare i int default 0;
declare nombre_aleatorio varchar(50);
declare correo_aleatorio varchar(40);
declare telefono_aleatorio varchar(20);

while i< num_registros do
set nombre_aleatorio=concat('Nombre', floor(500+rand()*500)); 
set correo_aleatorio=concat('Usuario', floor(500+rand()*500), '@utxicotepec.edu.mx');
set telefono_aleatorio=concat('7641', floor(500+rand()*500),'-', floor(500+rand()*500));
insert into clientes(Nombre, Correo, Telefono) values (nombre_aleatorio, correo_aleatorio, telefono_aleatorio);

set i=i+1;
end while;

END

