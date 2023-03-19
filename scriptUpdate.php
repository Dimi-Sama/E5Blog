
<?php 
include 'lib/dbConnect.php';
$bd = new DbConnect();
$conn = $bd->connect();

$titre = $_POST['titre'];
$idArt = $_POST['idArt'];
$img = $_FILES["image"]["name"];
$repImg = 'images/';
$cate = $_POST['cate'];
$contenu = $_POST['article'];


$sql = "UPDATE article SET titre=:titre, contenu=:contenu, image = :img, idCate=:cate WHERE id=:id";
$req = $conn->prepare($sql);
$req->bindParam(':titre', $titre);
$req->bindParam(':contenu', $contenu);
$req->bindParam(':img',$img);
$req->bindParam(':cate', $cate);
$req->bindParam(':id', $idArt);
if($req->execute()) {
    move_uploaded_file($_FILES['image']['tmp_name'], $repImg . $img);
    header("Location: viewArticles.php?idArticle=" . $idArt);
}else {
    header("Location: updatePost.php?erreur=TRUE");
}

?>