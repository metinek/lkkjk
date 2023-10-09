<?php
	require_once("baza.php");
	$p = mysqli_connect($dbserver, $dbuser, $dbpass, $dbname);
	if(!$p) die("bład połaczenia do bazy");
?>
<!doctype html>
<html lang="pl">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Twoje auto</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
<body>
	<header>
		<nav class="navbar navbar-expand-md bg-light">
		  <div class="container-fluid">
			<a class="navbar-brand" href="#">
				<img src="img/brand.png" alt="Komis" width="30" height="24">
			</a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
				  <a class="nav-link active" aria-current="page" href="#">Strona główna</a>
				</li>

				<li class="nav-item dropdown">
				  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					Typ auta
				  </a>
				  <ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">kupe</a></li>
					<li><a class="dropdown-item" href="#">sedes</a></li>
					<li><a class="dropdown-item" href="#">kombi</a></li>
				  </ul>
				</li>

				<li class="nav-item dropdown">
				  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					Marki
				  </a>
				  <ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">Fiat</a></li>
					<li><a class="dropdown-item" href="#">Ford</a></li>
					<li><a class="dropdown-item" href="#">Folkswagen</a></li>
				  </ul>
				</li>
				<li class="nav-item">
				  <a class="nav-link"  href="#">O firmie</a>
				</li>
			  </ul>
			  <form class="d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="Szukaj" aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Szukaj</button>
			  </form>
			</div>
		  </div>
		</nav>
	</header>  
	<main>
	
		<div class="container ">


<?-- obrazki na dole --?> 
			<div class="row text-center">
				<div>
					<h1>Szczegóły auta</h1>
				</div>
			</div>
<?php			
		echo('<div class="row">');
			$id = $_GET['id'];
			$q = "SELECT * FROM auta WHERE id=$id";
			$wynik = mysqli_query($p, $q);
			$w = mysqli_fetch_assoc($wynik);
			$nazwa = $w['marka'].' '.$w['model'];
			echo('<p class="nazwa">'.$nazwa.'</p>');
			echo('<p class="cena">cena: '.$w['cena'].' zł</p>');
			echo('<p class="cena">Rocznik: '.$w['rocznik'].' </p>');
			echo('<p class="cena">przebieg: '.$w['przebieg'].' km</p>');
			echo('<p class="opis">opis: '.$w['opis'].' </p>');
			echo('<img class="img-fluid" src="img/'.$w['foto'].'" 
					   alt="'.$nazwa.'"><br>');
		echo('</div>');
		
		//dodatkowy blok z napisem
		   echo('<div class="row text-center">');
				echo('<h1>zdjęcia auta</h1>');
		   echo('</div>');
		  echo('<div class="row">');
		

			$q = "SELECT * FROM foto WHERE auto=$id";
			$wynik = mysqli_query($p, $q);
//			echo(mysqli_num_rows($wynik));
			
			while($w = mysqli_fetch_assoc($wynik))
			{
				echo('<div class="col-sm-6 col-md-4 my-1">');  
				  echo('<img class="img-fluid" src="img/'.$w['foto'].'" 
				   alt="auto"><br>');
				echo('</div>');
			}			
			echo('</div>');


?>		  
		  
		  
		</div>  
  
  
	</main>
  	
	<footer class="border">
		strona wykonana przez mm, 2022
	</footer>
	
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
<?php
	mysqli_close($p);
?>
</html>

