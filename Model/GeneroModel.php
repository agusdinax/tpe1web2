<?php

class GeneroModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=tpe1web2;charset=utf8', 'root', '');
    }

    function obtenerGeneros(){
        $sentencia = $this->db->prepare( "select * from genero");
        $sentencia->execute();
        $generos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $generos;
    } 

    function obtenerGenero($id){
        $sentencia = $this->db->prepare( "select * from genero WHERE id_genero=?");
        $sentencia->execute(array($id));
        $genero = $sentencia->fetch(PDO::FETCH_OBJ);
        return $genero;
    }
    //SE INSERTA UN NUEVO GENERO Y LO RELACIONA CON LA BASE DE DATOS 
    function insertarGenero($nombre, $descripcion){
        $sentencia = $this->db->prepare("INSERT INTO genero(id_genero, nombre, descripcion) VALUES(?, ?, ?)");
        $sentencia->execute(array($nombre, $descripcion));
    }
//NO BORRA XD
    function deleteGeneroFromDB($id){
        $sentencia = $this->db->prepare("DELETE FROM genero WHERE id_genero=?");
        $sentencia->execute(array($id));
    }



    
  //PODER EDITAR LA TABLA
    // function updateTaskFromDB($id){
    //     $sentencia = $this->db->prepare("UPDATE tareas SET finalizada=1 WHERE id_tarea=?");
    //     $sentencia->execute(array($id));
    // }
    }