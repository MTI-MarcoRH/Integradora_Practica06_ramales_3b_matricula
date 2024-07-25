-- Selecciona todas las columnas de la tabla "usuarios"
SELECT * FROM usuarios;

-- Selecciona solo las columnas "nombre" y "edad" de la tabla "usuarios"
SELECT nombre, edad FROM usuarios

-- Selecciona todos los usuarios con edad mayor a 18
SELECT * FROM usuarios WHERE edad > 18;

-- Selecciona todos los usuarios cuyo nombre sea "Juan"
SELECT * FROM usuarios WHERE nombre = 'Juan';