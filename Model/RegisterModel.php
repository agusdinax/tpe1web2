<?php

class registerModel{
    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=tpe1web2;charset=utf8', 'root', '');
    }

    function registrarUsuario($email, $clave){
        $sentencia = $this->db->prepare("INSERT INTO user(email, clave) VALUES(?, ?)");
        $sentencia->execute(
            array($email, $clave)
        );
    }
}