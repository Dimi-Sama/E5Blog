<?php
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
?>