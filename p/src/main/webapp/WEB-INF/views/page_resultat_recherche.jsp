<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://xmlns.jcp.org/jsf/core"
	xmlns:h="http://xmlns.jcp.org/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:pt="http://xmlns.jcp.org/jsf/passthrough"
	xmlns:p="http://primefaces.org/ui">
<h:head>
	<title>Puppies</title>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
		crossorigin="anonymous" />
	<script src="https://kit.fontawesome.com/385a56ce6b.js"
		crossorigin="anonymous"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<style type="text/css">
.ui-datagrid .ui-panel-titlebar {
	background: #E8DAEF;
}

.ui-datagrid .ui-datagrid-header {
	background: #E8DAEF;
}

.ui-datagrid .ui-paginator {
	background: white;
}

.ui-datagrid .ui-datagrid-content {
	background: white;
}

.ui-datagrid .ui-panel {
	background: white;
}

.value {
	font-weight: bold;
}
</style>

</h:head>
<h:body>
	<div class="mb-5 pb-5">
		<c:if test="${not sessionScope.Connected}">
			<jsp:include page="navbar.jsp" />
		</c:if>
		<c:if test="${sessionScope.Connected}">
			<jsp:include page="navbar_connecte.jsp" />
		</c:if>
	</div>

	
	<c:forEach items="${annonces}" var="item" varStatus="status">
			<form >
				<div class="container">
					<div class="row col-sm-12 my-3 d-flex justify-content-center" 
					style="border-radius:5%;background-color:#E8DAEF">
						<div class="col-sm-3 d-flex align-items-center">
							<IMG alt="" src="./resources/images/2.jpg" width="90%" style="border-radius: 5px;" />
						</div>
						<div class="col-sm-3">
							<h4>${item.getAnimal()} à ${item.getRegion()}</h4>
							<ul>
								<li>${item.getDescription()}.</li>
								<li>A garder du ${item.getDate_debut()} au ${item.getDate_fin()}</li>
								<li>Tarif horaire : ${item.getPrix()} euros par journée</li>
								<li>Annonce postée le : ${item.getDate_publication()}</li>
							</ul>
						</div>
						<div class="col-sm-3 d-flex align-items-center">
							<c:if test="${not sessionScope.Connected}">
								<p>Connectez-vous pour réserver</p>
							</c:if>
							<c:if test="${sessionScope.Connected}">
								<Button class="btn btn btn-outline-success my-2 my-sm-0 mr-2"
									type="submit"
									style="width: 140px; height: 40px; border-radius: 30px;">
									réserver</Button>
								<%-- action="#{annonceManagedBean.reservation()}" --%>
							</c:if>
						</div>
					</div>
				</div>
			</form>
	</c:forEach>
	
	<%-- 
	
<div class="col-sm-12 mt-5 pt-5 d-flex justify-content-center">
	<div class="col-sm-10">
			<form>
				<p:dataGrid var="item" value="${annonces}" columns="3" layout="grid"
					rows="3" paginator="true" style="color:black;"
					paginatorTemplate="{CurrentPageReport}  {FirstPageLink} {PreviousPageLink} {PageLinks} {NextPageLink} {LastPageLink} {RowsPerPageDropdown}"
					rowsPerPageTemplate="3,6,12">

					<f:facet name="header">
			            A  garder
			        </f:facet>

					<p:panel header="${item.getAnimal()}, A  ${item.getRegion()}"
						style="text-align:center;">

						<h:panelGrid columns="1" style="width:100%;">
							<p:graphicImage value="./resources/images/5.jpg"
								style="border-radius:2%;width:300px;" />

							<h4>${item.getDescription()}.</h4>
							<h5>A garder du ${item.getDate_debut()} au
								${item.getDate_fin()}</h5>
							<h5>Tarif horaire : ${item.getPrix()} euros par journée</h5>
							<h4 style="font-style: italic;">
								<SMALL>Annonce postée le : ${item.getDate_publication()}</SMALL>
							</h4>
							<c:if test="${not sessionScope.Connected}">
								<p>Connectez-vous pour réserver</p>
							</c:if>
							<c:if test="${sessionScope.Connected}">
								<Button class="btn btn btn-outline-success my-2 my-sm-0 mr-2"
									type="submit"
									style="width: 140px; height: 40px; border-radius: 30px;">
									réserver</Button>
								action="#{annonceManagedBean.reservation()}"
							</c:if>
						</h:panelGrid>

					</p:panel>

				</p:dataGrid>
			</form>
		</div>
	</div> --%>
</h:body>
</html>