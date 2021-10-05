<?php

class ModeloUsuario{

    private $db;
    function __construct(){
         $this->db = new PDO('mysql:host=localhost;'.'tpe1web2;charset=utf8', 'root', '');
    }

    function obtenerUsuario($email){
        $query = $this->db->prepare('SELECT * FROM user WHERE email = ?');
        $query->execute([$email]);
        return $query->fetch(PDO::FETCH_OBJ);
    }


}
