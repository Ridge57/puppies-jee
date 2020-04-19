<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://xmlns.jcp.org/jsf/core"
	xmlns:h="http://xmlns.jcp.org/jsf/html">
<h:head>
	<title>Connexion</title>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
		crossorigin="anonymous" />
</h:head>

<h:body bgcolor="white">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #E8DAEF;">
		<a class="navbar-brand" href="#">Puppies</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
					href="creationcompte.xhtml">Créer un compte</a></li>
				<li class="nav-item"><a class="nav-link" href="index.xhtml">retour
						à l'accueil</a></li>
			</ul>
		</div>
	</nav>
	<div class="row mt-5 d-flex justify-content-center">
		<h:form class="col-sm-4">
			<div class="form-group">
				<label for="login">Login</label>
				<h:inputText value="#{con.u.nom}" class="form-control" id="login" />
			</div>
			<div class="form-group">
				<label for="InputPassword">Password</label>
				<h:inputSecret value="#{con.u.password}" class="form-control"
					id="InputPassword" />
			</div>
			<h:commandButton type="submit" class="btn btn-primary"
				style="width:130px;" value="Se connecter"
				action="#{con.verifierUtilisateur()}" />
			<div class="alert alert-danger mt-3" role="alert">Erreur : Login ou
			mot de passe incorrect</div>
		</h:form>
		</div>
</h:body>

</html>