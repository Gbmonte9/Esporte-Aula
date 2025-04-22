<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="model.Aula"%>
<%@ page import="model.Cliente"%>
<%@ page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>Lista De Aula Cliente</title>
<link rel="stylesheet" type="text/css"
	href="css/menuClienteListaDeAula.css">
<link rel="shortcut icon" href="favicon/favicon.ico" type="image/x-icon">
</head>
<body>
	<header>

		<nav class="navbar ">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <img src="logoMarca/logo3.svg"
					alt="Logo" width="50" height="50"> Esporte Aula
				</a>

				<ul class="nav justify-content-end">
					<li class="nav-item"><a class="nav-link disabled text-light"
						aria-disabled="true">Bem vindo: <%=request.getSession().getAttribute("nome")%></a>
					</li>
					<li class="nav-item"><a class="nav-link disabled text-light"
						aria-disabled="true"><%=request.getSession().getAttribute("email")%></a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" role="button" aria-expanded="false">Aula</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"
								onclick="SvCadastrarAula()">Cadastrar Aula</a></li>
							<li><a class="dropdown-item" href="#"
								onclick="SvMenuClienteLista('<%=request.getSession().getAttribute("email")%>')">Lista
									De Aula</a></li>
							<li><a class="dropdown-item" href="#" onclick="SvMenuCalendario('<%=request.getSession().getAttribute("email")%>')">Calendário</a></li>
						</ul></li>

					<li class="nav-item"><a class="nav-link" href="index.jsp">Sair</a>
					</li>

				</ul>

			</div>
		</nav>

	</header>
	<main>

		<!-- ------------------ -->
		<!-- ------------------------- -->
		<%
		List<Aula> aulas = (List<Aula>) request.getAttribute("aula");
		String alertMsg = (String) request.getAttribute("alertMsg");

		if (aulas == null || aulas.isEmpty()) {
		%>

		<div class="container text-center">
			<div class="row">
				<div class="col">

					<div class="container my-5">
						<div class="row justify-content-center">
							<div class="col-sm-12">
								<h2 class="text-center mb-4 text-warning ">Lista de Aula</h2>
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

		<%
		} else {
		%>


		<%
		Aula al = new Aula();

		List<Aula> listaAl = al.listaDeAula(); // pode dar erro
		%>

		<div class="container text-center">
			<div class="row">
				<div class="col">

					<!-- ------------- -->

					<div class="container my-5">
						<div class="row justify-content-center">
							<div class="col-sm-12">
								<h2 class="text-center mb-4 text-warning ">Lista de Aula</h2>
								<div class="table-responsive">
									<table class="table table-bordered table-striped mx-auto">
										<thead>
											<tr>
												<th style="display: none">Id</th>
												<th>Data</th>
												<th>Horário</th>
												<th>Professsor</th>
												<th>Especialidade</th>
												<th>Cancelar</th>
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
												<td><%=aula.getProfessor().getNome()%></td>
												<td><%=aula.getProfessor().getEspecialidade()%></td>
												<td><button type="button" class="btn btn-danger"
														data-bs-toggle="modal" data-bs-target="#staticBackdrop"
														id="inputAulaId" name="aulaId"
														>Cancelar Aula</button></td>
														
														<!-- -onclick="SvExcluirAula('<%=aula.getId()%>')"
														value="<%=aula.getId()%>" -->
											</tr>

											<!-- -------------- -->

											<!-- Modal -->
											<div class="modal fade" id="staticBackdrop"
												data-bs-backdrop="static" data-bs-keyboard="false"
												tabindex="-1" aria-labelledby="staticBackdropLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h1 class="modal-title fs-5" id="staticBackdropLabel">Deseja cancela a Aula?</h1>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">Você tem certeza que deseja cancela a aula?</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-bs-dismiss="modal">Não</button>
															<button type="button" class="btn btn-primary" onclick="SvExcluirAula('<%=aula.getId()%>')"
															value="<%=aula.getId()%>">Sim</button>
														</div>
													</div>
												</div>
											</div>

											<!-- -------------- -->

											<%
											}
											%>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>

		<%
		}
		%>

		<!-- -------------------- -->

	</main>
	<footer>
		<p>&copy; 2023 Gabriel Monte | EsporteAula</p>
		<p>Contate-nos: esporteaula@eulaesporte.com</p>
	</footer>
	<script>

    	function SvMenuCalendario(email){
        	
			var formulario = document.createElement("form");

			formulario.action = "SvCalendarioCliente";
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
		function SvCadastrarAula() {

			var formulario = document.createElement("form");

			formulario.action = "SvCadastrarAulaListaDeProfessor";
			formulario.method = "get";
			formulario.id = "listaDeProfessor";

			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
	<script>
		function SvMenuClienteLista(email) {
			
			var formulario = document.createElement("form");

			formulario.action = "SvMenuClienteLista";
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
			
			formulario.action = "SvMenuClienteListaExcluir";
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
	<script>
	
		function SvMenuClienteLista() {
			
			var urlParams = new URLSearchParams(window.location.search);
			var email = urlParams.get('email');

			console.log("Email recebido:", email);
		}

		window.onload = SvMenuClienteLista;
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>