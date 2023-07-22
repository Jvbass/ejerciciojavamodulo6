<%@page import="cl.modulo6.asesoriajpa.model.entity.Capacitacion"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="es" xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity5">
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<!-- /Font Awesome -->
<link rel="stylesheet" type="text/css" href="res/css/styles.css">
<title>Asesorias M6 - Listar Capacitaciones</title>
</head>
<body>
	<!-- navbar -->
	<jsp:include page="navbar.jsp" />
	<!-- /navbar -->
	<!-- main -->
	<div class="mt-5 main-login">
		<h2 class="text-center">Listar Capacitaciones</h2>
		<hr class="bg-dark">
		<div class="row mt-5">
			<div class="col-12 col-md-8 offset-md-2 p-3">

				<table class="table text-center">
					<thead class="bg-info text-light ">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Nombre</th>
							<th scope="col">Hora</th>
							<th scope="col">Duracion</th>
							<th scope="col">Lugar</th>
							<th scope="col">Asistentes</th>
							<th scope="col">Acciones</th>
						</tr>
					</thead>
					<tbody class="table-group-divider">
						<c:forEach items="${capacitaciones}" var="capacitacion">
				            <tr>
				                <td>${capacitacion.idCapacitacion}</td>
				                <td>${capacitacion.nombreCapacitacion}</td>
				                <td>${capacitacion.hora}</td>
				                <td>${capacitacion.duracion}</td>
				                <td>${capacitacion.lugar}</td>
				                <td>${capacitacion.asistentes}</td>
				                <td>
									<a class="text-success" href="<c:url value='/edit-capacitacion/${capacitacion.idCapacitacion}' />"><i class="fa-solid fa-pen-to-square mx-3"></i></a>
									<a class="text-danger" href="<c:url value='/delete-capacitacion/${capacitacion.idCapacitacion}' />"><i class="fa-solid fa-trash"></i></a>
								</td>
				            </tr>
				        </c:forEach>
					</tbody>
				</table>
				<div>
					<a class="btn btn-outline-success mt-3" href="crear-capacitacion">Nueva
						capacitacion</a>
				</div>
			</div>
		</div>
	</div>

	<!-- /main -->
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- /footer -->

	<!-- bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
</html>