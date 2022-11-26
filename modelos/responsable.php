<?php
    include_once("../clases/conexion.php");
    class responsable{
        private $idresponsableTuristico;
        private $nombreresponsable;
        private $distrito;
        private $provincia;
        private $departamento;
        public function mostrar() :PDOStatement
        {
        $conn = new Conexion();
        $conexion = $conn->conectar();
        $sql1 = "SELECT * FROM Responsable";
        $resultado = $conexion->query($sql1);
        $conn->cerrar();
        return $resultado;
        }

        public function mostrarDiferente(int $id) :PDOStatement
        {
        $conn = new Conexion();
        $conexion = $conn->conectar();
        $sql1 = "SELECT * FROM Responsable where IdResponsable <> ".$id;
        $resultado = $conexion->query($sql1);
        $conn->cerrar();
        return $resultado;
        }

        public function guardar(String $dni, String $apellidos, String $nombres, String $password)
        {
            $conn = new Conexion();
            $conexion = $conn->conectar();
            $sql1 = "INSERT INTO Responsable (Dni,Apellidos,Nombres,Password)
             VALUES ('".$dni."','".$apellidos."','".$nombres."','".$password."')";
            $resultado = $conexion->exec($sql1);
            $conn->cerrar();
            return $resultado;   
        }

        public function actualizar(int $id, String $dni, String $apellidos, String $nombres, String $password)
        {
            $conn = new Conexion();
            $conexion = $conn->conectar();
            $sql1 = "UPDATE Responsable SET Dni = '".$dni."',Apellidos = '".$apellidos."',
            Nombres = '".$nombres."',Password = '".$password."' WHERE IdResponsable = ".$id;
            $resultado = $conexion->exec($sql1);
            $conn->cerrar();
            return $resultado;   
        }
       
    }

?>