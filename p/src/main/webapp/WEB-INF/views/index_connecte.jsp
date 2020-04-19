<!DOCTYPE html>
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

</h:head>
<h:body bgcolor="white" >
	<ui:include src="navbar_connecte.xhtml"/>
	<ui:include src="index_rechercher.xhtml"/>
	<ui:include src="index_poster.xhtml"/>
	<ui:include src="index_rechercher2.xhtml"/>
</h:body>

</html>