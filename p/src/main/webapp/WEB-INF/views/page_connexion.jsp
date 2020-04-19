<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://xmlns.jcp.org/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:pt="http://xmlns.jcp.org/jsf/passthrough"
	xmlns:p="http://primefaces.org/ui"
	xmlns>
<h:head>
	<title>Connexion</title>
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
	<h1>Page de connexion</h1>
	
	<f:form modelAttribute="user" class="col-sm-4" action="connexion">
		<div class="form-group">
			<label for="login">Login</label>
			<f:input type="text" class="form-control" style="height:60px;font-size:large;" path="nom" id="login"/>
		</div>
		<div class="form-group">
			<label for="pass">Mot de passe</label>
			<f:input type="password" class="form-control" style="height:60px;font-size:large;" path="password" id="pass"/>
		</div>
		<Button type="submit" class="btn btn-outline-primary" style="width: 200px;height:50px;border-radius: 30px;">
			Se connecter
		</Button>
	</f:form>
	</div>
</h:body>

</html>