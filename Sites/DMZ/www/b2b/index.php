<?php
try { 
    $pdo = new PDO('mysql:host=51.210.42.27;dbname=woodytoys', 'b2b', 'Password');
    echo "connect OK";
} catch (PDOException $e) {
    echo $e;
    die("Connection impossible");
}
?>
<!DOCTYPE html>
<html>

<head>
	<title>B2B WoodyToys</title>
	<meta charset="utf-8" />
</head>

<body>
	<h2>Bienvenue sur le site b2b de WoodyToys</h2>

	<p>Connectez-vous au moyen de vos identifiants : </p>
	<form action="" method="post" name="Connexion_b2b">
		<label>Identifiant</label>
		<input type="text" name="identifiantClient" required>
		<label>Mot de passe</label>
		<input type="password" name="mdpClient" required>
		<button type="submit" name="connexionClient" value="connexionClient">Connexion</button>
	</form>
	<?php
		// session_start();
		if (isset($_POST['connexionClient'])) {
			$identifiant = $_POST['identifiantClient'];
			$mdp = $_POST['mdpClient'];
			$query = $pdo->prepare("SELECT * FROM clients WHERE identifiantClient=:identifiantClient");
			$query->bindParam("identifiantClient", $identifiant, PDO::PARAM_STR);
			$query->execute();
			$resultat = $query->fetch(PDO::FETCH_ASSOC);
			if (!$resultat) { //Si client pas dans DB
				echo '<p class="error">Vous n\'existez pas dans la base de données</p>';
			} else { //Si present
				if (password_verify($mdp, $resultat['hashMDPClient'])) { //Verif mdp
					//$_SESSION['user_id'] = $resultat['idClient'];
					echo '<p class="success">Bienvenue </p>';
				} else { //mdp pas correct
					echo '<p class="error">Mauvais mot de passe</p>';
				}
			}
		}
	?>

</body>
</html>
