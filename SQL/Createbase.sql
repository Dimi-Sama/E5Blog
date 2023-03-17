-- Création des tables sans clés étrangères.
CREATE TABLE IF NOT EXISTS Utilisateurs(
   id SMALLINT NOT NULL AUTO_INCREMENT,
   nom VARCHAR(50),
   prenom VARCHAR(50), 
   dateInscription DATE, 
   adrRue VARCHAR(50), 
   ville VARCHAR(50), 
   codePostal VARCHAR(50), 
   username VARCHAR(50), 
   mdp VARCHAR(300), 
   PRIMARY KEY(id)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Categorie (
  id SMALLINT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(50),
  PRIMARY KEY (id)
)ENGINE = InnoDB;

-- Création des tables avec clés étrangères.
-- Les tables moderateur et membres hérite de Utilisateurs.
CREATE TABLE IF NOT EXISTS Moderateurs (
  idUser SMALLINT,
  PRIMARY KEY (idUser),
  CONSTRAINT fk_modo FOREIGN KEY (idUser) REFERENCES Utilisateurs (id)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Membres (
  idUser SMALLINT,
  PRIMARY KEY (idUser),
  CONSTRAINT fk_memb FOREIGN KEY (idUser) REFERENCES Utilisateurs (id)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Article (
  id SMALLINT NOT NULL AUTO_INCREMENT,
  titre VARCHAR(50),
  contenu VARCHAR(20000),
  datePublication DATETIME,
  image VARCHAR(500),
  idCate SMALLINT,
  idUser SMALLINT,
  PRIMARY KEY (id),
  CONSTRAINT fk_art FOREIGN KEY (idCate) REFERENCES Categorie (id),
  CONSTRAINT fk_arti FOREIGN KEY (idUser) REFERENCES Moderateurs (idUser)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Likes(
  idUser SMALLINT,
  idArticle SMALLINT,
  PRIMARY KEY (idUser,idArticle),
  CONSTRAINT fk_lik FOREIGN KEY (idUser) REFERENCES Membres (idUser),
  CONSTRAINT fk_li FOREIGN KEY (idUser) REFERENCES Moderateurs (idUser),
  CONSTRAINT fk_like FOREIGN KEY (idArticle) REFERENCES Article (id)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Commentaires (
  id SMALLINT NOT NULL AUTO_INCREMENT,
  idUser SMALLINT,
  idArticle SMALLINT,
  PRIMARY KEY (id),
  CONSTRAINT fk_com FOREIGN KEY (idUser) REFERENCES Membres (idUser),
  CONSTRAINT fk_co FOREIGN KEY (idUser) REFERENCES Moderateurs (idUser),
  CONSTRAINT fk_comm FOREIGN KEY (idArticle) REFERENCES Article (id)
)ENGINE = InnoDB;


