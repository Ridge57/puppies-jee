<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://xmlns.jcp.org/jsf/core"
	xmlns:h="http://xmlns.jcp.org/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:pt="http://xmlns.jcp.org/jsf/passthrough"
	xmlns:p="http://primefaces.org/ui">
<h:head>
	<title>Création compte</title>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script> 
</h:head>
<h:body bgcolor="white">
	<c:if test="${not sessionScope.Connected}">
		<jsp:include page="navbar.jsp" />
	</c:if>
	<c:if test="${sessionScope.Connected}">
		<jsp:include page="navbar_connecte.jsp" />
	</c:if>
	
	<div class = "row mt-5 pt-5 d-flex justify-content-center">
	<h1>Création de compte </h1>
	
	<f:form modelAttribute="user" class="col-sm-4" action="creationCompte">
		<div class="form-group">
			<label for="login">Choisir un login</label>
			<f:input type="text" class="form-control" style="height:60px;font-size:large;" path="nom" id="login"/>
		</div>
		<div class="form-group">
			<label for="pass">Choisir un mot de passe</label>
			<f:input type="password" class="form-control" style="height:60px;font-size:large;" path="password" id="pass"/>
		</div>
		<Button type="submit" class="btn btn-outline-primary" style="width: 200px;height:50px;border-radius: 30px;">
			Créer le compte
		</Button>
	</f:form>
	</div>
	
</h:body>

</html>