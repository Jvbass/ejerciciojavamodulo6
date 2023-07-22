<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="res/css/styles.css">

<title>Asesorias M6 - Contacto</title>
</head>
<body>
<!-- navbar -->
<jsp:include page="navbar.jsp" />
<!-- /navbar -->

	<!-- main -->
	<div class="main-login container mt-5 mb-5" >
        <h2 class="text-center">Contactate con nosotros</h2>
        <hr class="bg-dark">

        <div class="row mt-5">
            <div class="col-10 offset-1 col-md-6 offset-md-3 p-3" >
                <form id="form-contact" autocomplete="off" action="${pageContext.request.contextPath}/submitContactForm" method="post">
                    <div class="mb-4">
                    <label for="name" class="form-label">Nombre</label>
                        <input
                        	placeholder="minimo 2 caracteres maximo 15"
                            type="text"
                            class="form-control"
                            id="name"
                            name="name"
                            
                        />
                    </div>

                    <div class="mb-4">
                    <label for="name" class="form-label">Apellido</label>
                        <input
                        	placeholder="minimo 2 caracteres maximo 15"
                            type="text"
                            class="form-control"
                            id="lastname"
                            name="lastname"
                            
                        />
                    </div>

                    <div class="mb-4">
                    <label for="name" class="form-label">Email</label>
                        <input
                        	placeholder="Escribe tu Email"
                            type="email"
                            class="form-control"
                            id="email"
                            name="email"
                            
                        />
                    </div>

                    <div class="mb-4">
                    <label for="name" class="form-label">Mensaje</label>
                        <textarea
                        	placeholder="minimo 20 caracteres maximo 150"
                            class="form-control"
                            id="message"
                            name="message"
                            
                        ></textarea>
                    </div>

                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-danger">Enviar</button>
                    </div>
                </form>
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