c<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://xmlns.jcp.org/jsf/core"
	xmlns:h="http://xmlns.jcp.org/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:pt="http://xmlns.jcp.org/jsf/passthrough">
<head>
</head>
<body >
	<div class="row col-sm-12 mt-2 d-flex justify-content-end mx-auto"
		style="height: 40em;background-image:url(./resources/images/5.jpg); 
		background-size: 100%;background-repeat: no-repeat;">
		<div class="d-flex align-items-center" style="color:white;">
			<form class="mx-auto" style="text-align: center;" action="page_recherche">
				<h3>Vous aussi vous cherchez un compagnon? </h3>
				<h6>gardez un animal pendant une courte periode ..ou plus</h6><br/>
				
				<Button class="btn btn-lg" type="submit" action="page_recherche_form.jsp"
						style="width: 200px;height:50px;background-color: #E8DAEF;border-radius: 30px;">Rechercher</Button> 
			
			</form>
		</div>
	</div>
</body>
</html>