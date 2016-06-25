<?php
	
/**
* Clase Conexion
*/
class Conexion 
{
	public $conexion;

	function __construct()
	{
		$this->conexion = new mysqli("localhost","root","Jesus8","puntoventalibreria");		
	}
}

/**
* Clase Tienda
*/
class Tienda extends Conexion
{
	public $reportesA = array();
	public $reportesCompras = array();

	function __construct()
	{
		
	}

	public function setNewPassword($idUsuarioActual, $newPassword){
		$newPassEncript = sha1($newPassword);
		$query = "UPDATE usersadmin set password = '$newPassEncript' where idUsuario = $idUsuarioActual";
		parent:: __construct();

		if (!$resultadoSetPassword = $this->conexion->query($query)) {
			printf("Erro ",$this->conexion->error);
			return false;
			$this->conexion->close();
		}
		else{
			$this->conexion->close();
			return true;
		}
	}

	public function evaluaPasswordActual($passwordActual){
		$newPassEncript = sha1($passwordActual);
		$query = "SELECT * from usersadmin where password = '$newPassEncript'";
		parent:: __construct();
		if (!$userAdmin = $this->conexion->query($query)){
			printf("Error %s\n",$this->conexion->error);
			$this->conexion->close();
			return false;			
		}
		else{
			$this->conexion->close();
			$usuarioAdministrador = $userAdmin->fetch_assoc();
			return $usuarioAdministrador['idUsuario'];
		}
	}

	function loginUsuario($usuario, $password, $typeUser){
		if ($typeUser == 1) {
			$query = "SELECT * from usuarios where nombreUsuario = '$usuario' and passwordUsuario = '$password'";
			parent:: __construct();
			$result = $this->conexion->query($query);
			$usuarioEncontrado = $result->num_rows;
			if($usuarioEncontrado > 0)
				return 1;
			else
				false;
		}
		if ($typeUser == 2) {
			$passwordEncript = sha1($password);
			$query = "SELECT * from usersadmin where nombre = '$usuario' and password = '$passwordEncript'";
			parent:: __construct();
			$result = $this->conexion->query($query);
			$usuarioEncontrado = $result->num_rows;
			if($usuarioEncontrado > 0)
				return 2;
			else
				false;
		}
	}

	function updateReporte($id, $cantidadModificar){
		$idDetalle = (int)$id;
		$cant = (int)$cantidadModificar;
		parent:: __construct();
		if (!$this->conexion)
			echo "Error al conectar a la Base de Datos";
		else
		{
			$reportesA = array();
			$query = "call updateCantCompDetalleVenta($idDetalle,$cant)";
			if(!$reportes = $this->conexion->query($query))
				printf("Errormensage %s\n",$this->conexion->error);
			$this->conexion->close();
			while ($reporte = $reportes->fetch_assoc()) {
				$reporteA = array();
				foreach ($reporte as $key => $value) {
					$reporteA[$key] = $value;
				}
				array_unshift($reportesA, $reporteA);
			}
			return $reportesA;
		}
	}

	function updateReporteCompra($id, $cantidadModificar){
		$idDetalle = (int)$id;
		$cant = (int)$cantidadModificar;
		parent:: __construct();
		if (!$this->conexion)
			echo "Error al conectar a la Base de Datos";
		else
		{
			$reportesA = array();
			$query = "call updateDetalleCompra($idDetalle,$cant)";
			$reportes = $this->conexion->query($query);
			$this->conexion->close();
			while ($reporte = $reportes->fetch_assoc()) {
				$reporteA = array();
				foreach ($reporte as $key => $value) {
					$reporteA[$key] = $value;
				}
				array_unshift($reportesA, $reporteA);
			}
			return $reportesA;
		}
	}

	function deleteReporte($id){
		$idDetalle = (int)$id;
		parent:: __construct();
		if (!$this->conexion)
			echo "Error al conectar a la Base de Datos";
		else
		{
			$query = "call deleteDetalleVenta($idDetalle)";
			if(!$reportes = $this->conexion->query($query))
				printf("Errormensage %s\n",$this->conexion->error);
			$this->conexion->close();
			if ($reportes)
				return true;
			else
				return false;
		}
	}
	function deleteReporteCompra($id){
		$idDetalle = (int)$id;
		parent:: __construct();
		if (!$this->conexion)
			echo "Error al conectar a la Base de Datos";
		else
		{
			$query = "call deleteDetalleCompra($idDetalle)";
			if(!$reportes = $this->conexion->query($query))
				printf("Errormensage %s\n",$this->conexion->error);
			$this->conexion->close();
			if ($reportes)
				return true;
			else
				return false;
		}
	}

	function getReporteDiario($fecha){
		parent:: __construct();
		if (!$this->conexion)
			echo "Error al conectar a la Base de Datos";
		else
		{
			$query = "call reporteDia('$fecha')";
			if(!$reportes = $this->conexion->query($query))
				printf("Error: %s\n",$this->conexion->error);
			
			$this->conexion->close();
			while ($reporte = $reportes->fetch_assoc()) {
				$reporteA = array();
				foreach ($reporte as $key => $value) {
					$reporteA[$key] = $value;
				}
				array_unshift($this->reportesA, $reporteA);
			}
		}
		return $this->reportesA;
	}

	function getReporteDiarioCompras($fecha){
		parent:: __construct();
		if (!$this->conexion)
			echo "Error al conectar a la Base de Datos";
		else
		{
			$query = "call getReporteComprasDia('$fecha')";
			$reportes = $this->conexion->query($query);
			$this->conexion->close();
			while ($reporte = $reportes->fetch_assoc()) {
				$reporteA = array();
				foreach ($reporte as $key => $value) {
					$reporteA[$key] = $value;
				}
				array_unshift($this->reportesCompras, $reporteA);
			}
		}
		return $this->reportesCompras;
	}

	function deleteCategoria($idCategoria){
		$query = "DELETE from categoria where idCategorias = $idCategoria";
		parent:: __construct();
		$statusDelete = $this->conexion->query($query);
		$this->conexion->close();
		return $statusDelete;
	}

	function deleteMarca($idMarca){
		$query = "DELETE from marca where idMarcas = $idMarca";
		parent:: __construct();
		$statusDelete = $this->conexion->query($query);
		$this->conexion->close();
		return $statusDelete;
	}

	function deleteProveedor($idProveedor){
		$query = "DELETE from proveedores where idProveedores = $idProveedor";
		parent:: __construct();
		$statusDelete = $this->conexion->query($query);
		$this->conexion->close();
		return $statusDelete;
	}	
}

?>