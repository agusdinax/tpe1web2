<?php

class juegosModel{

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
    function obtenerGenero($id){
        $sentencia = $this->db->prepare( "select * from juegos WHERE id_genero=?");
        $sentencia->execute(array($id));
        $genero = $sentencia->fetch(PDO::FETCH_OBJ);
        return $genero;
    }
    //SE INSERTA UN NUEVO JUEGO LO RELACIONA CON LA BASE DE DATOS 
    function insertarJuego($nombre, $precio, $plataforma, $genero){
        $sentencia = $this->db->prepare("INSERT INTO juegos(nombre, precio, plataforma, id_genero) VALUES(?, ?, ?, ?)");
        $sentencia->execute(array($nombre, $precio, $plataforma, $genero));
    }
//NO BORRA XD
    function deleteJuegoFromDB($id_juego){
        $sentencia = $this->db->prepare("DELETE FROM juegos WHERE id_juego=?");
        $sentencia->execute(array($id_juego));
    }
     
  //PODER EDITAR LA TABLA
    function editarJuego($nombre, $precio, $plataforma, $genero, $id_juego){
        $sentencia = $this->db->prepare("UPDATE juegos SET nombre = ?, precio = ?, plataforma = ?, id_genero = ? WHERE id_juego= ?");
        $sentencia->execute(array($nombre, $precio, $plataforma, $genero, $id_juego));
    }

    
}
