<?php
try { 
    $pdo = new PDO('mysql:host=51.210.42.27:3316;dbname=woodytoys', 'erp', 'Password');
    echo "connect OK";
} catch (PDOException $e) {
    echo $e;
    die("Connection impossible");
}
?>
<!DOCTYPE html>
<html>

<head>
	<title>ERP WoodyToys</title>
	<meta charset="utf-8" />
</head>

<body>
	<h2>Bienvenue sur l'ERP de WoodyToys</h2>

	<p>Connectez-vous au moyen de vos identifiants : </p>
	<form action="" method="post" name="Connexion_employés">
		<label>Identifiant</label>
		<input type="text" name="identifiantEmploye" required>
		<label>Mot de passe</label>
		<input type="password" name="mdpEmploye" required>
		<button type="submit" name="connexion" value="connexion">Connexion</button>
	</form>
	<?php
		if (isset($_POST['connexion'])) {
			$identifiant = $_POST['identifiantEmploye'];
			$mdp = $_POST['mdpEmploye'];
			$query = $pdo->prepare("SELECT * FROM employes WHERE identifiantEmploye=:identifiant");
			$query->bindParam("identifiant", $identifiant, PDO::PARAM_STR);
			$query->execute();
			$result = $query->fetch(PDO::FETCH_ASSOC);
			if (!$result) {
				echo '<p class="error">Vous n\'existez pas dans la base de données</p>';
			} else {
				if (password_verify($mdp, $result['hashMDPEmploye'])) {
					$_SESSION['user_id'] = $result['idEmploye'];
					echo '<p class="success">Bienvenue </p>';
				} else {
					echo '<p class="error">Mauvais mot de passe</p>';
				}
			}
		}
	?>

</body>
</html>
