<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="model.Aula"%>
<%@ page import="model.Professor"%>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<html>
<head>
<meta charset="UTF-8">
<title>Caléndario Cliente</title>
<link rel="stylesheet" type="text/css" href="css/calendarioProfessor.css">
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
	
	<br><br><br>
	
	<div class="container text-center">
      	<div class="row">
        
        <div class="calendar">
        <div class="header">
          <h2 id="monthYear"></h2>
        </div>
        <div class="days">
          <div class="day">Dom</div>
          <div class="day">Seg</div>
          <div class="day">Ter</div>
          <div class="day">Qua</div>
          <div class="day">Qui</div>
          <div class="day">Sex</div>
          <div class="day">Sáb</div>
        </div>
        <div class="dates" id="dates"></div>
      </div>
      <script src="script/calendario.js"></script>
      
      </div>
    </div>
    
    <br>

		<%
		List<Aula> aulas = (List<Aula>) request.getAttribute("aula");
		String alertMsg = (String) request.getAttribute("alertMsg");

		if (aulas == null || aulas.isEmpty()) {
		%>
		<p><%=alertMsg%></p>
		<%
		} else {
		%>


		<%
		Aula al = new Aula();

		List<Aula> listaAl = al.listaDeAula(); // pode dar erro
		%>

		<div class="container text-center">
			<div class="row">

				<!-- ---------------------- -->

				<div class="container my-5">
					<div class="row justify-content-center">
						<div class="col-sm-8">
							<div class="table-responsive">
								<table class="table table-bordered table-striped mx-auto">
									<thead>
										<tr>
											<th style="display: none">Id</th>
											<th>Data</th>
											<th>Horário</th>
											<th>Cliente</th>
										</tr>
									</thead>
									<tbody>

										<%
										for (Aula aula : listaAl) {
										%>

										<tr>
											<th scope="row" style="display: none"><%=aula.getId()%></th>
											<td><%=aula.getData()%></td>
											<td><%=aula.getHorario()%></td>
											<td><%=aula.getCliente().getNome()%></td>
										</tr>

										<%
										}
										%>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<!-- ----------------------- -->

			</div>
		</div>

		<%
		}
		%>

	</main>
	<footer>
		<p>&copy; 2023 Gabriel Monte | EsporteAula</p>
		<p>Contate-nos: esporteaula@eulaesporte.com</p>
	</footer>
	<!-- ------------------------------------------ -->
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>