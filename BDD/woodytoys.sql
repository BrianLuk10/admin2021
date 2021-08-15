CREATE DATABASE woodytoys;

CREATE USER erp IDENTIFIED WITH mysql_native_password BY 'Password';
GRANT ALL PRIVILEGES ON woodytoys.* TO 'erp'@'%';
CREATE USER b2b IDENTIFIED WITH mysql_native_password BY 'Passwordb2b';
GRANT SELECT ON woodytoys.* TO 'b2b'@'%';

USE woodytoys;

-- Structure de la table `clients`
CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL COMMENT 'L''id de l''entreprise cliente',
  `nomClient` varchar(25) NOT NULL COMMENT 'Le nom de l''entreprise cliente',
  `identifiantClient` varchar(25) NOT NULL COMMENT 'L''identifiant de l''entreprise cliente',
  `mdpClient` varchar(50) NOT NULL COMMENT 'Le mot de passe de l''entreprise cliente',
  `hashMDPClient` varchar(60) NOT NULL COMMENT 'Le hash du mot de passe de l''entreprise cliente',
  `mailClient` varchar(100) NOT NULL COMMENT 'Le mail de l''entreprise cliente'
);


-- Déchargement des données de la table `clients`
INSERT INTO `clients` (`idClient`, `nomClient`, `identifiantClient`, `mdpClient`, `hashMDPClient`, `mailClient`) VALUES
(1, 'Jouets Broze', 'jouetsbroze', 'JBjouetsbroze', '$2y$10$ADcidkMfIj94O4Mlwx8.V.0PHHoUIXMar5puH0S71pyfs.lxj7zMa', 'contact@jouetsbroze.be'),
(2, 'Maxy Toys', 'maxytoys', 'MTmaxytoys', '$2y$10$I9Lm8jE.B.7SujN2Qd.JJuQVfhrHkimUFZagVTwpLkRWRJ1rZ6kya', 'contact@maxytoys.be');


-- Structure de la table `employes`
CREATE TABLE `employes` (
  `idEmploye` int(11) NOT NULL COMMENT 'L''id de l''employé',
  `nomEmploye` varchar(50) NOT NULL COMMENT 'Le nom de l''employé',
  `prenomEmploye` varchar(50) NOT NULL COMMENT 'Le prénom de l''employé',
  `role` varchar(20) NOT NULL COMMENT 'Le rôle de l''employé au sein de l''entreprise',
  `mdpEmploye` varchar(150) NOT NULL COMMENT 'Le mot de passe de l''employé',
  `hashMDPEmploye` varchar(60) NOT NULL,
  `identifiantEmploye` varchar(50) NOT NULL COMMENT 'L''identifiant de l''employé',
  `mailEmploye` varchar(100) NOT NULL COMMENT 'Le mail de l''employé'
);

-- Déchargement des données de la table `employes`
INSERT INTO `employes` (`idEmploye`, `nomEmploye`, `prenomEmploye`, `role`, `mdpEmploye`, `hashMDPEmploye`, `identifiantEmploye`, `mailEmploye`) VALUES
(1, 'Provencher', 'Aymon', 'Directeur', 'ProvencherA', '$2y$10$MGKAvtyZpZpK6Tgz6cAgY.KbKtYubLBX7Dt1IS69HBVBS9JRPeXDi', 'AProvencher', 'aymonprovencher@tm1-5.ephec-ti.be'),
(2, 'Paradis', 'Aya', 'Secrétaire', 'ParadisA', '$2y$10$eURWdMu4X7gtbWAsX3FUVOj96YlP6nmEZx47rYYu67Z5wu1TfNHlG', 'AParadis', 'ayaparadis@tm1-5.ephec-ti.be');

-- Structure de la table `produits`
CREATE TABLE `produits` (
  `idProduit` int(11) NOT NULL COMMENT 'L''id du produit',
  `nomProduit` varchar(20) NOT NULL COMMENT 'Le nom du produit',
  `descriptionProduit` varchar(100) NOT NULL COMMENT 'La description du produit',
  `stockProduit` int(11) NOT NULL COMMENT 'Le stock du produit',
  `prixProduit` double NOT NULL COMMENT 'Le prix du produit',
  `imageProduit` varchar(50) NOT NULL COMMENT 'Le lien vers l''image du produit'
);

-- Déchargement des données de la table `produits`
INSERT INTO `produits` (`idProduit`, `nomProduit`, `descriptionProduit`, `stockProduit`, `prixProduit`, `imageProduit`) VALUES
(1, 'Chien en bois', 'Petit chien en bois que votre enfant peut tirer derrière lui.', 50, 24.95, ''),
(2, 'Cheval à bascule', 'Cheval à bascule qui permet à votre enfant de s\'amuser dans le salon par temps de pluie.', 10, 54.99, '');

-- Index pour la table `clients`
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idClient`);

-- Index pour la table `employes`
ALTER TABLE `employes`
  ADD PRIMARY KEY (`idEmploye`);

-- Index pour la table `produits`
ALTER TABLE `produits`
  ADD PRIMARY KEY (`idProduit`);

-- AUTO_INCREMENT pour la table `clients`
ALTER TABLE `clients`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT COMMENT 'L''id de l''entreprise cliente', AUTO_INCREMENT=3;

-- AUTO_INCREMENT pour la table `employes`
ALTER TABLE `employes`
  MODIFY `idEmploye` int(11) NOT NULL AUTO_INCREMENT COMMENT 'L''id de l''employé', AUTO_INCREMENT=3;

-- AUTO_INCREMENT pour la table `produits`
ALTER TABLE `produits`
  MODIFY `idProduit` int(11) NOT NULL AUTO_INCREMENT COMMENT 'L''id du produit', AUTO_INCREMENT=3;
COMMIT;

