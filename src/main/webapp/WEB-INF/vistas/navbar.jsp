<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="true" %>
<nav class="navbar navbar-expand-lg bg-light shadow-sm"
    data-bs-theme="light">
    <div class="container-fluid">
        <a class="navbar-brand ms-3" href="home">Asesorias <span class="text-danger"> JEE </span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link"
                    href="listar-capacitaciones">Listar Capacitacion</a></li>
                <li class="nav-item"><a class="nav-link"
                    href="crear-capacitacion">Crear Capacitacion</a></li>         
               <li class="nav-item"><a class="nav-link"
                    href="contacto">Contacto</a></li>     
               <li class="nav-item"><a class="nav-link"
                    href="crear-usuario">Crear Usuario</a></li> 
               <li class="nav-item"><a class="nav-link"
                    href="listar-usuarios">Listar Usuario</a></li>                                                 
            </ul>
            
            <div>
                <sec:authorize access="isAuthenticated()">
                    <!-- Mostrar el mensaje "Bienvenido" y el botón "Cerrar Sesión" -->
                    <div class="d-flex justify-content-between align-items-center">
                        <p class="text-dark-50 mx-3 my-2">Bienvenido <span class="fw-bold text-capitalize">${pageContext.request.userPrincipal.name}</span></p>
                        <form class="form-inline" action="${pageContext.request.contextPath}/logout" method="post">
                            <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Cerrar sesión</button>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                    </div>
                </sec:authorize>

                <sec:authorize access="!isAuthenticated()">
                    <!-- Mostrar el botón "Iniciar Sesión" -->
                    <div class="d-flex justify-content-end">
                        <a class="btn btn-primary my-2 my-sm-0" href="${pageContext.request.contextPath}/login">Iniciar Sesión</a>
                    </div>
                </sec:authorize>
            </div>
        </div>
    </div>
</nav>
