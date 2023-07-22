# Ejercicio final modulo 6 Spring Framework JPA
Tema: Programación Orientada a Objetos
### Integrantes:
+ Juan Pino C. :octocat:https://github.com/Jvbass/SprintFinalModulo4
+ Jorge Moraga C. :octocat:https://github.com/JorgeMoragaCalvo
+ Harold Klapp :octocat:https://github.com/HaroldKlapp
## :bulb:Descripcion 
  Proyecto para dar solucion a una empresa ficticia que se dedica a la asesoria en prevencion de riesgos. Este sistema permite al usuario planificar y almacenar capacitaciones, guardar usuarios de diferentes tipos con datos especificos por cada tipo de usuario, mostrar listas de usuarios y capacitaciones y borrar usuarios segun su rut.

## :wrench:Recursos y tecnologias utilizadas
- `Java JDK 17.0.6`
- `JPA`
- `hibernate`
- `JDBC`
- `SpringSecurty`
- `Spring Maven MVC`
- `Principios SOLID`
- `MySql`
- `Spring Security`
- `API Rest`
- `MySql`
- `Log log4j`
- `Slack`

## :hammer:Funcionalidades del proyecto
  - Almacenar Cliente: Agrega un usuario de tipo Cliente
  - Almacenar Profesional: Agrega un usuario de tipo Profesional
  - Almacenar Administrativo: Agrega un usuario de tipo Administrativo
  - Almacenar Capacitacion: Guarda una capacitacion
  - Eliminar Usuario: Elimina un usuario desde lista
  - Listar Usuarios: Muestra una lista de todos los usuarios almacenados
  - Listar Capacitaciones: Muestra una lista con todas las capacitaciones almacenadas
  - Editar Capacitaciones: Edita una capacitacion seleccionada desde la lista, muestra la informacion de la capacitacion a editar en los inputs del formulario
  - Editar Usuarios: Edita un usuario seleccionado desde la lista, muestra la informacion del usuario a editar en los inputs del formulario    

## :notebook:Guia de uso
Para usar este proyecto recomendamos tener instalada la version de Java 17.0.6, pare verificar cual version tienes instalada abre tu consola de comandos preferida e ingresa "java -version". Ademas recomendamos instalar el IDE Eclipse en su version STS para importar el proyecto y utilizarlo. En esta guia se utliza el IDE Eclipse con su version STS, si bien otros IDEs tienen funcionalidades parecidas la interfaz de usuario puede ser diferente.
Debe tener instalado el servidor APACHE TOMCAT e instalarlo en el Workspace
Debe Tener instalado MySql para ejecutar el script sql "bdasesoriajpa.sql" incluido en el repositorio.
1. Clona o descarga el zip del proyecto desde Github
	- Guardalo en una carpeta, si descargaste el zip descomprimelo
	
2. Importa el proyecto en Eclipse
	- Dirigete a File -> Open Projects from File Sistem...
	- En la ventana que se despliega haz click en el boton "Directory" y busca la carpeta donde guardaste el proyecto
	- Luego haz click en finish
	
3. En la pantalla principal de Eclipse - STS al costado izquierdo se podra ver el proyecto con su nombre "asesoriajpa"
  - Busca y abre el archivo root-context.xml que se encuentra en la carpeta src/main/webapp/WEB-INF/spring
  - Configura la conexion a la base de datos, el usuario, contraseña y nombre de la base de datos, por defecto "asesoriajpa"
  - En Eclipse haz click derecho en la carpeta raiz asesoriajpa, luego ve a la opcion "Run As" y luego haz click en "Run on server"
  - Antes de ejecutar el proyecto
   -- * asegurate de haber ejecutado el script sql para crear la base de datos
   -- * asegurate antes de tener instalado apache tomcat e integrarlo a tu workspace

## :mag:Datos de prueba 
- El script sql "bdasesoriajpa.sql" contiene consultas INSERT para insertar datos a las tablas creadas una vez ejecutado el proyecto desde Eclipse

	- :construction:**Importante**:construction:
		
	-- Si tienes algun problema al ejecutar el proyecto, haz click derecho en la carpeta raiz "asesoriajpa" y luego en "Run AS", haz click en "Maven Clean" y luego sigue la misma rut y haz click en "Maven Install". Esto reinstalara las dependencias asociadas al proyecto en el archivo pom.xml

## :hugs: Contrubuciones 
-- Si quieres aportar a este proyecto no dudas en hacer un pull request detalando en el commit las modificaciones y/o aportes realizados.
