<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://xmlns.jcp.org/jsf/core"
	xmlns:h="http://xmlns.jcp.org/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:pt="http://xmlns.jcp.org/jsf/passthrough">
<h:head>
<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
		crossorigin="anonymous" />
	 <script src="https://kit.fontawesome.com/385a56ce6b.js"
		crossorigin="anonymous"></script> 
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script> 
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>  
</h:head>
<h:body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: #E8DAEF;">
<div class="row col-sm-12 d-flex justify-content-between">
	<div class="row col-sm-5 ml-5">
	<a class="navbar-brand" href="index"> <img src="./resources/images/paw.svg"
		width="30" height="30" class="d-inline-block align-top" alt="" />
		Puppies
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	</div>
	<div class="row col-sm-5 collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="page_recherche"><i class="fas fa-search"></i> Rechercher</a></li>
			<li class="nav-item"><a	class="nav-link" href="#" data-toggle="modal" data-target="#accesRefuse"><i class="fas fa-plus-circle"></i> Publier une annonce</a></li>
			<li class="nav-item"><a class="nav-link" href="page_connexion"><i class="fas fa-user-check"></i> Connexion</a></li>
			<li class="nav-item"><a class="nav-link" href="page_creation_compte"><i class="fas fa-user-plus"></i> Inscription</a></li>
		</ul>
	</div>
</div>
</nav>
<!-- Modal -->
<div class="modal fade" id="accesRefuse" tabindex="-1" role="dialog" aria-labelledby="accesRefuseLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="accesRefuseLabel">Non connecté</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
        Vous devez vous connecter pour publier une annonce.
      </div>
      <div class="modal-footer">
        <a role="button" class="btn btn-danger" data-dismiss="modal" style="color:white;">Fermer</a>
        <a role="button" class="btn btn-primary" href="page_connexion.xhtml">Se conecter</a>
      </div>
    </div>
  </div>
</div>

</h:body>
</html>