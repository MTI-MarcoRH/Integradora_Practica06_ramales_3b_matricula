// Crear conexión
$conn = new mysqli($host, $username, $password, $dbname);
// Verificar conexión
if ($conn->connect_error) {
 die("Conexión fallida: " . $conn->connect_error);
}
echo "Conexión exitosa";
?>

NOTA:
o Se utiliza la extensión MySQLi para conectarse a la base de datos 
MySQL.
o Se crea una instancia de mysqli con los parámetros de conexión 
(host, nombre de usuario, contraseña y nombre de la base de datos).
o Se verifica la conexión usando la propiedad connect_error de la 
instancia de mysqli.
Nota: Asegúrate de reemplazar nombre_basedatos, usuario, y contraseña con 
los valores específicos que configuraste en tu entorno de MySQL Workbench
