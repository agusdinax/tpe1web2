<?php

class userModel{
//DEFINIMOS BASE DE DATOS 
    private $db;
    function __construct(){
         $this->db = new PDO('mysql:host=localhost;'.'dbname=tpe1web2;charset=utf8', 'root', '');
    }
//OBTIENE LOS USUARIOS ALMACENADOS EN LA BASE DE DATOS 
    function obtenerUsuario($email){
        $query = $this->db->prepare('SELECT * FROM user WHERE email = ?');
        $query->execute([$email]);
        return $query->fetch(PDO::FETCH_OBJ);
    }


}
