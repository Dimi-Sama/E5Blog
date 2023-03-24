<?php
/**
 * This script handles the like/unlike functionality for articles.
 * It receives the user id and article id through GET parameters.
 * If the 'like' parameter is not set or empty, it inserts a new like record in the database.
 * If the 'like' parameter is set, it deletes the like record from the database.
 * After the operation is completed, it redirects the user to the article view page.
 */
require "lib/dbConnect.php";
$bd = new DbConnect();
$conn = $bd->connect();
if (!isset($_GET['idUser'],$_GET['idArt'])) {
    header("Location: news.php");
}else {

    $idUser = $_GET['idUser'];
    $idArt = $_GET['idArt'];
    
    if (!isset($_GET['like']) || empty($_GET['like'])) {
    $sql = "INSERT INTO likes (idUser,idArticle) VALUES (:idUser,:idArt)";
    $req = $conn->prepare($sql);
    $req->bindParam(':idUser',$idUser);
    $req->bindParam(':idArt',$idArt);
    $req->execute();
    header("Location: viewArticles.php?idArticle=" . $idArt);
    }else {
    $sql = "DELETE FROM likes  WHERE idArticle = :idArt and idUser = :idUser";
    $req = $conn->prepare($sql);
    $req->bindParam(':idArt',$idArt);
    $req->bindParam(':idUser',$idUser);
    $req->execute();
    header("Location: viewArticles.php?idArticle=" . $idArt);
    }
}
