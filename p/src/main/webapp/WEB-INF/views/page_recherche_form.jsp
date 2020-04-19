<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://xmlns.jcp.org/jsf/core"
	xmlns:h="http://xmlns.jcp.org/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:pt="http://xmlns.jcp.org/jsf/passthrough">
<head>
	<!--  <link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
		crossorigin="anonymous" />
	 <script src="https://kit.fontawesome.com/385a56ce6b.js"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script> 
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script> 
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>  -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script> 
</head>
<body>
	<c:if test="${not sessionScope.Connected}">
		<jsp:include page="navbar.jsp" />
	</c:if>
	<c:if test="${sessionScope.Connected}">
		<jsp:include page="navbar_connecte.jsp" />
	</c:if>
	 <div class="row col-sm-12 my-5 mx-auto d-flex justify-content-center">
		<div class="row col-sm-8 my-5 d-flex justify-content-center">
			<h3>Que recherchez-vous ?</h3>
		</div>
		<div class="row col-sm-8 mb-4 d-flex justify-content-center">
			<form class="form col-sm-7 text-center" action="search">				
				<div class="form-group mb-5"> 
					 <select name="animal" style="height:60px;font-size:large;" class="form-control">
						<c:forEach items="${animaux}" var="item" varStatus="status">
							<option value="${item.famille}">${item.famille}</option>
						</c:forEach>
					</select>
				 </div>
				
				<div class="input-group form-group mb-5">
					<input type="text" class="form-control" name="region" style="height:60px;font-size:large;"/>
				</div>
				
				<div class="py-3" style="border-top: 1.5px solid;border-top-color:#E8DAEF;">
					<Button class="btn my-2 my-sm-0 mr-2" type="submit" style="width: 150px;height:50px;background-color: #E8DAEF;border-radius: 30px;">
						Rechercher
					</Button>
				</div>
				<div>ou</div>
			</form>
			
					
			<form class="form col-sm-7 text-center" action="all">
				<div class="py-3" style="border-bottom: 1.5px solid;border-bottom-color:#E8DAEF;">
					<Button class="btn my-2 my-sm-0 mr-2" type="submit" style="width: 150px;height:50px;background-color: #E8DAEF;border-radius: 30px;">
						Voir tout
					</Button>
				</div>	
			</form>
			
		</div>
	</div>
</body>
</html>