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
<!-- 	<title>Puppies</title>
	<link rel="stylesheet"
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
		crossorigin="anonymous"></script> -->
	<!-- 	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>  -->

</h:head>
<h:body>
	<c:if test="${not sessionScope.Connected}">
		<jsp:include page="navbar.jsp" />
	</c:if>
	<c:if test="${sessionScope.Connected}">
		<jsp:include page="navbar_connecte.jsp" />
	</c:if>
	
	
	<div class="pt-3 mt-5 col-sm-12 d-flex justify-content-center">
		<f:form class="col-sm-8 mt-5 pt-5" id="form" modelAttribute="annonce" action="poster">	
			<div class="row my-3">
				<div class="col pl-0">
					<label for="Animal">Animal</label>
					 <f:select path="animal" style="height:60px;font-size:large;" class="form-control" id="Animal">
						<f:options items="${animaux}"/>
					</f:select>
				</div>
				<div class="col pr-0">
					<label for="description">Description</label>
					<f:textarea cols="30" rows="5" style="height:60px;font-size:large;" path="description" id="description" class="form-control"/>
				</div>
			</div>

			<div class="row my-3">
				<div class="col pl-0">
					<label for="datedebut">Date de début</label>
					<f:input placeholder="yyyy-MM-dd" path="date_debut" id="datedebut" class="form-control" style="height:60px;font-size:large;"/>
				</div>
				<div class="col pr-0">
					<label for="datefin">Date de fin</label>
					<f:input placeholder="yyyy-MM-dd" path="date_fin" id="datefin" class="form-control" style="height:60px;font-size:large;"/>
				</div>
			</div>
			<div class="row my-3">
				<div class="col pl-0">
					<label for="region">Region</label>
					<f:input path="region" id="region" class="form-control" style="height:60px;font-size:large;"/>
				</div>
				<div class="col pr-0">
					<label for="prix">Rémunération</label>
					<f:input path="prix" id="region" class="form-control" style="height:60px;font-size:large;"/>
				</div>
			</div>
			<div class="row mt-4" style="border-top: 1.5px solid; border-top-color: #E8DAEF; border-bottom: 1.5px solid; border-bottom-color: #E8DAEF;">
			<!-- 	<div class="col text-center py-3">
					<h:commandButton type="submit" value="reset" update="panel"
						process="@this"
						style="width: 200px;height:50px;border:1.5px solid #E8DAEF;
						border-radius: 30px;background: white;font-size: x-large;font-weight: normal;color:#E8DAEF">
						<p:resetInput target="panel" />
					</h:commandButton>
				</div> -->
				<div class="col text-center py-3">
					<Button class="btn btn-lg" type="submit" style="width: 200px;height:50px;border:1.5px solid #E8DAEF;
						border-radius: 30px;background: white;font-size: x-large;font-weight: normal;color:#E8DAEF">
						Reset
					</Button>
				</div>
				<div class="col text-center py-3">
					<Button class="btn btn-lg btn-outline-success" type="submit" style="width: 200px;height:50px;border-radius: 30px;">
						Valider
					</Button>
				</div>
			</div>
		</f:form>
		
	</div>
	

	<!-- ********************************************************************************************************** -->
	<!--  <div class="pt-3 mt-5 col-sm-12 d-flex justify-content-center">
		<form>
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="validationDefault01">First name</label> <input
						type="text" class="form-control" id="validationDefault01"
						placeholder="First name" value="Mark" required="true" />
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationDefault02">Last name</label> <input
						type="text" class="form-control" id="validationDefault02"
						placeholder="Last name" value="Otto" required="true" />
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationDefaultUsername">Username</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupPrepend2">@</span>
						</div>
						<input type="text" class="form-control"
							id="validationDefaultUsername" placeholder="Username"
							aria-describedby="inputGroupPrepend2" required="true" />
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-6 mb-3">
					<label for="validationDefault03">City</label> <input type="text"
						class="form-control" id="validationDefault03" placeholder="City"
						required="true" />
				</div>
				<div class="col-md-3 mb-3">
					<label for="validationDefault04">State</label> <input type="text"
						class="form-control" id="validationDefault04" placeholder="State"
						required="true" />
				</div>
				<div class="col-md-3 mb-3">
					<label for="validationDefault05">Zip</label> <input type="text"
						class="form-control" id="validationDefault05" placeholder="Zip"
						required="true" />
				</div>
			</div>
			<div class="form-group">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="invalidCheck2" required="true" /> <label
						class="form-check-label" for="invalidCheck2"> Agree to
						terms and conditions </label>
				</div>
			</div>
			<button class="btn btn-primary" type="submit">Submit form</button>
		</form>
	</div>-->
</h:body>
</html>