<?php
    include_once("../clases/conexion.php");
    class destino{
        private $idDestinoTuristico;
        private $nombreDestino;
        private $distrito;
        private $provincia;
        private $departamento;
        public function mostrar() :PDOStatement
        {
        $conn = new Conexion();
        $conexion = $conn->conectar();
        $sql1 = "SELECT * FROM Destino_Turistico";
        $resultado = $conexion->query($sql1);
        $conn->cerrar();
        return $resultado;
        }

        public function guardar(String $nombre, String $departamento, String $provincia, String $distrito)
        {
            $conn = new Conexion();
            $conexion = $conn->conectar();
            $sql1 = "INSERT INTO Destino_Turistico(NombreDestino,Distrito,Provincia,Departamento)
             VALUES ('".$nombre."','".$distrito."','".$provincia."','".$departamento."')";
            $resultado = $conexion->exec($sql1);
            $conn->cerrar();
            return $resultado;   
        }
       
    }

?>