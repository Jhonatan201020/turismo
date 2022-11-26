<?php
    include_once($_SERVER["DOCUMENT_ROOT"] . "/modelos/destino.php");
    class destinocontrolador{

        public function mostrar(): PDOStatement
        {
            $destino = new destino();
            return $destino -> mostrar();
        }

        public function guardar(String $nombre, String $departamento, String $provincia, String $distrito){
            $destino = new destino();
            $resultado = $destino->guardar( $nombre, $departamento, $provincia, $distrito);
            if($resultado!=0){
                return true;
            }else{
                return false;
            }
        }
       
    }

?>