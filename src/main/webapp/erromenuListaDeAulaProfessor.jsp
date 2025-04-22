<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="model.Aula"%>
<%@ page import="model.Professor"%>
<%@ page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>Lista De Aula Professor</title>
<link rel="stylesheet" type="text/css" href="css/menuProfessorListaDeAula.css">
<link rel="shortcut icon" href="favicon/favicon.ico" type="image/x-icon">
</head>
<body>
	<header>
        
        <nav class="navbar ">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">
              <img src="logoMarca/logo3.svg" alt="Logo" width="50" height="50">
              Esporte Aula
            </a>
  
            <ul class="nav justify-content-end">
              <li class="nav-item">
    			<a class="nav-link disabled text-light" aria-disabled="true">Bem vindo: <%= request.getSession().getAttribute("nome") %></a>
  			  </li>
  			  <li class="nav-item">
    			<a class="nav-link disabled text-light" aria-disabled="true"><%= request.getSession().getAttribute("email") %></a>
  			  </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Aula</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#" onclick="SvMenuProfessorLista('<%= request.getSession().getAttribute("email") %>')">Lista De Aula</a></li>
                  <li><a class="dropdown-item" href="#" onclick="SvMenuCalendario('<%=request.getSession().getAttribute("email")%>')">calendário</a></li>
                </ul>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="index.jsp">Sair</a>
              </li>

            </ul>
  
          </div>
        </nav>
  
    </header>
    <main>
    <!-- ------------------ -->
    <!-- ------------------------- -->
		<%
		String alertMsg = (String) request.getAttribute("alertMsg");
		%>

		<div class="container text-center">
			<div class="row">
				<div class="col">

					<div class="container my-5">
						<div class="row justify-content-center">
							<div class="col-sm-12">
								<h2 class="text-center mb-4 text-warning ">Lista de
									Aula</h2>
								<div class="table-responsive">
									<p><%=alertMsg%></p>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<!-- -------------------- -->
    
    <!-- -------------------- -->
  
    </main>
    <footer>
        <p>&copy; 2023 Gabriel Monte | EsporteAula</p>
        <p>Contate-nos: esporteaula@eulaesporte.com</p>
    </footer>
    <script>

    	function SvMenuCalendario(email){

			var formulario = document.createElement("form");

			formulario.action = "SvCalendarioProfessor";
			formulario.method = "get";
			formulario.id = "inputEmailId";

			// ===========================

			var inputEmailId = document.createElement("input");
			inputEmailId.type = "hidden"; 
			inputEmailId.name = "email";
			inputEmailId.value = email;

			formulario.appendChild(inputEmailId);

			document.body.appendChild(formulario);

			formulario.submit();
	
		}
	
    </script>
    <script>

    	function SvCadastrarAula(){

    		var formulario = document.createElement("form");

    		formulario.action = "SvCadastrarAulaListaDeProfessor";
    		formulario.method = "get";
    		formulario.id = "listaDeProfessor";

    		document.body.appendChild(formulario);

    		formulario.submit();
	
		}
	
    </script>
    <script>

    	function SvMenuProfessorLista(email){

			var formulario = document.createElement("form");

			formulario.action = "SvMenuProfessorLista";
			formulario.method = "get";
			formulario.id = "inputEmailId";

			// ===========================

			var inputEmailId = document.createElement("input");
			inputEmailId.type = "hidden"; 
			inputEmailId.name = "email";
			inputEmailId.value = email;

			formulario.appendChild(inputEmailId);

			document.body.appendChild(formulario);

			formulario.submit();
	
		}
	
    </script>
    <script>
		function SvExcluirAula(aulaId) {

			var formulario = document.createElement("form");

			formulario.action = "SvMenuProfessorListaExcluir";
			formulario.method = "get";
			formulario.id = "inputAulaId";

			// ===========================

			var inputAulaId = document.createElement("input");
			inputAulaId.type = "hidden"; 
			inputAulaId.name = "aulaId";
			inputAulaId.value = aulaId;

			formulario.appendChild(inputAulaId);
			
			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>