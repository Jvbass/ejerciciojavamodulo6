<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" href="res/css/styles.css">
<title>Asesorias M6 - Crear capacitacion</title>
</head>
<body>
	<!-- navbar -->
	<jsp:include page="navbar.jsp" />
	<!-- /navbar -->
	<!-- main -->
	<div class="main-login container mt-5">
		<h2 class="text-center">Crear capacitacion</h2>
		<hr class="bg-dark">
		<div class="row mt-5">
			<div class="col-10 offset-1 col-md-6 offset-md-3 p-3">
			<form:form action="${pageContext.request.contextPath}/capacitacion/save" modelAttribute="capacitacion" id="form-capacitacion" class="crear-capacitacion" autocomplete="off" method="POST">
					<div class="mb-4">
						<label for="name" class="form-label">Titulo</label> <input
							placeholder="minimo 8 caracteres maximo 20" type="text"
							class="form-control" id="titulo" name="nombreCapacitacion" />
					</div>
					<div class="mb-4">
						<label for="name" class="form-label">Hora</label> <input
							type="time" class="form-control" id="hora" name="hora" />
					</div>
					<div class="mb-4">
						<label for="name" class="form-label">Duracion</label> <input
							placeholder="minimo 30 minutos maximo 180" type="text" class="form-control"
							id="duracion" name="duracion" />
					</div>
					<div class="mb-4">
						<label for="name" class="form-label">Lugar</label> <input
							placeholder="minimo 5 caracteres maximo 20" type="text"
							class="form-control" id="lugar" name="lugar" />
					</div>
					<div class="mb-4">
						<label for="detalle" class="form-label">Asistentes</label> <input
							placeholder="minimo 10 asistentes maximo 60" type="text"
							class="form-control" id="asistentes" name="asistentes" />
					</div>

					<div class="d-grid gap-2">
						<button type="submit" class="btn btn-danger">Crear</button>
					</div>
				 </form:form>
			</div>
		</div>
	</div>
	<!-- main -->
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- /footer -->

	<!-- bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- validate jquery -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.js"></script>

	<script src="res/js/app.js"></script>
</body>
</html>