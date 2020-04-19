<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://xmlns.jcp.org/jsf/core"
	xmlns:h="http://xmlns.jcp.org/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:pt="http://xmlns.jcp.org/jsf/passthrough">
<head>
</head>
<body>
	<div class="row col-sm-12 d-flex justify-content-center my-4 mx-auto">
		<div class="row col-sm-5 mr-2">
			<IMG alt="" src="./resources/images/2.jpg" width="100%"
				style="border-radius: 5px;" />
		</div>
		<div class="row col-sm-5 d-flex align-items-center"
			style="color: black;">
			<!-- affiché en mode non connecté -->
			
			<c:if test="${sessionScope.Connected==false}">
				<form class="mx-auto">
					<h3>Vous serez absent(e)s de chez vous?</h3>
					<h3>quelqu'un gardera votre animal de compagnie</h3>
					<h6>partez tranquilles, on prendra soin de lui</h6>
					<br /> <a class="btn btn-lg" data-toggle="modal"
						data-target="#accesRefuse" href="#"
						style="background-color: #E8DAEF; border-radius: 30px; width: 220px;">
						Publier une annonce</a>
				</form>
			</c:if>
			

			<!-- affiché en mode connecté -->
			<c:if test="${sessionScope.Connected==true}">
				<form class="mx-auto" action="page_poster">
					<h3>Vous serez absent(e)s de chez vous?</h3>
					<h3>quelqu'un gardera votre animal de compagnie</h3>
					<h6>partez tranquilles, on prendra soin de lui</h6>
					<br />
					<Button class="btn btn-lg" style="background-color: #E8DAEF;border-radius: 30px;width:220px;">Publier une annonce</Button>
				</form>
			</c:if>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="accesRefuse" tabindex="-1" role="dialog"
		aria-labelledby="accesRefuseLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="accesRefuseLabel">Non connecté</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body">Vous devez vous connecter pour publier
					une annonce.</div>
				<div class="modal-footer">
					<a role="button" class="btn btn-danger" data-dismiss="modal"
						style="color: white;">Fermer</a> <a role="button"
						class="btn btn-primary" href="page_connexion.xhtml">Se
						conecter</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>