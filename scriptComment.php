<?php
session_start();
/**
 * Inserts a new comment into the database with the given parameters.
 */
include 'lib/dbConnect.php';
$bd = new DbConnect();
$conn = $bd->connect();


$commentaire = $_POST['commentaire'];
$idUser = $_SESSION['User'];
$idArt = $_GET['idArt'];

// Insérer le commentaire dans la base de données
$sql = "INSERT INTO commentaires (idUser, idArticle, texte) VALUES (:idUser, :idArt, :commentaire)";
$req = $conn->prepare($sql);
$req->bindParam(':idUser', $idUser);
$req->bindParam(':idArt', $idArt);
$req->bindParam(':commentaire', $commentaire);
$req->execute();

// Rediriger vers la page actuelle pour actualiser les commentaires
header("Location: viewArticles.php?idArticle=$idArt");
