<?php

class JuegosModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=tpe1web2;charset=utf8', 'root', '');
    }

    function obtenerJuegos(){
        $sentencia = $this->db->prepare( "select * from juegos");
        $sentencia->execute();
        $juegos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $juegos;
    } 
    function obtenerJuego($id){
        $sentencia = $this->db->prepare( "select * from juegos WHERE id_juego=?");
        $sentencia->execute(array($id));
        $juego = $sentencia->fetch(PDO::FETCH_OBJ);
        return $juego;
    }
    //SE INSERTA UN NUEVO JUEGO LO RELACIONA CON LA BASE DE DATOS 
    function insertarJuego($nombre, $precio, $plataforma, $genero){
        $sentencia = $this->db->prepare("INSERT INTO juegos(nombre, precio, plataforma, id_genero) VALUES(?, ?, ?, ?)");
        $sentencia->execute(array($nombre, $precio, $plataforma, $genero));
    }
//NO BORRA XD
    function deleteJuegoFromDB($id){
        $sentencia = $this->db->prepare("DELETE FROM juegos WHERE id_juego=?");
        $sentencia->execute(array($id));
    }



    
  //PODER EDITAR LA TABLA
    // function updateTaskFromDB($id){
    //     $sentencia = $this->db->prepare("UPDATE tareas SET finalizada=1 WHERE id_tarea=?");
    //     $sentencia->execute(array($id));
    // }

    
}
