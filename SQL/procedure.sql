-- Création de la procèdure stoké permetant la création d'un membre
DROP PROCEDURE IF EXISTS `addNewUser`;
DELIMITER //
CREATE PROCEDURE `addNewUser`(v_nom VARCHAR(50),v_prenom VARCHAR(50), v_email VARCHAR(150),
v_adrRue VARCHAR(50),v_codePostal VARCHAR(50),
v_ville VARCHAR(50),v_username VARCHAR(50),v_mdp VARCHAR(255)) 
BEGIN

INSERT INTO utilisateurs VALUE (NULL,v_nom,v_prenom,v_email,CURDATE(),v_adrRue,
v_ville,v_codePostal,v_username,v_mdp);

INSERT INTO membres VALUE (LAST_INSERT_ID());

END//
DELIMITER ;

DELIMITER // 
-- Trigger permetant la mise à jour du nombre de likes total sur un post 
create trigger updateLike
after insert on likes
FOR EACH ROW
begin
DECLARE count INT;
  set count = ( select count(*) from likes where idArticle = new.idArticle );

 update article set likeTotal = count where id = new.idArticle;
end//

DELIMITER ;