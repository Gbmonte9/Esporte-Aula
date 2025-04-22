<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List"%>
<%@ page import="model.Professor"%>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Lista de Professor</title>
<link rel="stylesheet" type="text/css"
	href="css/menuListaDeProfessor.css">
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
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" role="button" aria-expanded="false">Professor</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="cadastrarProfessor.jsp">Cadastrar
									Professor</a></li>
							<li><a class="dropdown-item" href="#"
								onclick="SvListaDeProfessor()">Lista De Professor</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" role="button" aria-expanded="false">Cliente</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"
								onclick="SvListaDeClientes()">Lista De Cliente</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" role="button" aria-expanded="false">Aula</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"
								onclick="SvListaDeAula()">Lista De Aulas</a></li>
						</ul></li>

					<li class="nav-item"><a class="nav-link" href="index.jsp">Sair</a>
					</li>

				</ul>

			</div>
		</nav>

	</header>
	<main>

		<%
		List<Professor> professores = (List<Professor>) request.getAttribute("professor");
		String alertMsg = (String) request.getAttribute("alertMsg");

		if (professores == null || professores.isEmpty()) {
		%>

		<div class="container text-center">
			<div class="row">
				<div class="col">

					<div class="container my-5">
						<div class="row justify-content-center">
							<div class="col-sm-12">
								<h2 class="text-center mb-4 text-warning ">Lista de
									Professor</h2>
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
		Professor pr = new Professor();

		List<Professor> listaPr = pr.listaDeProfessor(); // pode dar erro
		%>

		<div class="container text-center">
			<div class="row">
				<div class="col">

					<!-- ------------- -->

					<div class="container my-5">
						<div class="row justify-content-center">
							<div class="col-sm-12">
								<h2 class="text-center mb-4 text-warning ">Lista de
									Professor</h2>
								<div class="table-responsive">
									<table class="table table-bordered table-striped mx-auto">
										<thead>
											<tr>
												<th style="display: none">Id</th>
												<th>Nome</th>
												<th>Telefone</th>
												<th>Cpf</th>
												<th>Data</th>
												<th>Email</th>
												<th>Senha</th>
												<th>Gênero</th>
												<th>Especialidade</th>
												<th>Salário</th>
												<th>Excluir</th>
												<th>Editar</th>
											</tr>
										</thead>
										<tbody>

											<%
											for (Professor professor : listaPr) {
											%>

											<tr>
												<th scope="row" style="display: none"><%=professor.getId()%></th>
												<td><%=professor.getNome()%></td>
												<td><%=professor.getTelefone()%></td>
												<td><%=professor.getCpf()%></td>
												<td><%=professor.getData()%></td>
												<td><%=professor.getEmail()%></td>
												<td><%=professor.getSenha()%></td>
												<td><%=professor.getGenro()%></td>
												<td><%=professor.getEspecialidade()%></td>
												<td><%=professor.getSalario()%></td>
												<td><button type="button" class="btn btn-danger"
														id="inputProfessorId" name="professorId"
														data-bs-toggle="modal" data-bs-target="#staticBackdrop"
														>Excluir</button></td>
												<td><button type="button" class="btn btn-warning"
														id="inputProfessorId" name="professorId"
														onclick="SvEditarProfessor('<%=professor.getId()%>')"
														value="<%=professor.getId()%>">Editar</button></td>
											</tr>

											<!-- Modal -->
											<div class="modal fade" id="staticBackdrop"
												data-bs-backdrop="static" data-bs-keyboard="false"
												tabindex="-1" aria-labelledby="staticBackdropLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h1 class="modal-title fs-5" id="staticBackdropLabel">Deseja Excluir Professor?</h1>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">Você tem certeza que deseja excluir Professor?</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-bs-dismiss="modal">Não</button>
															<button type="button" class="btn btn-primary" onclick="SvExcluirProfessor('<%=professor.getId()%>')"
														value="<%=professor.getId()%>">Sim</button>
														</div>
													</div>
												</div>
											</div>
											
											<!-- -------------------------- -->

											<%
											}
											%>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>


					<!-- -------------- -->

				</div>
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
	<script>
		function SvListaDeClientes() {

			var formulario = document.createElement("form");

			formulario.action = "SvListaDeCliente";
			formulario.method = "get";
			formulario.id = "listaDeCliente";
			
			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
	<script>
		function SvListaDeProfessor() {

			var formulario = document.createElement("form");

			formulario.action = "SvListaDeProfessor";
			formulario.method = "get";
			formulario.id = "listaDeCliente";

			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
	<script>
		function SvListaDeProfessor() {

			var formulario = document.createElement("form");

			formulario.action = "SvListaDeAula";
			formulario.method = "get";
			formulario.id = "listaDeCliente";

			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
	<script>
		function SvListaDeAula() {

			var formulario = document.createElement("form");

			formulario.action = "SvListaDeAula";
			formulario.method = "get";
			formulario.id = "listaDeCliente";

			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
	<script>
		function SvExcluirProfessor(professorId) {
			
			var formulario = document.createElement("form");

			formulario.action = "SvExcluirProfessor";
			formulario.method = "get";
			formulario.id = "inputProfessorId";

			// ===========================

			var inputProfessorId = document.createElement("input");
			inputProfessorId.type = "hidden"; /
			inputProfessorId.name = "professorId";
			inputProfessorId.value = professorId;

			formulario.appendChild(inputProfessorId);

			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
	<script>
		function SvEditarProfessor(professorId) {
			
			var formulario = document.createElement("form");

			formulario.action = "SvMenuEditarProfessor";
			formulario.method = "get";
			formulario.id = "inputProfessorId";

			// ===========================

			var inputProfessorId = document.createElement("input");
			inputProfessorId.type = "hidden"; 
			inputProfessorId.name = "professorId";
			inputProfessorId.value = professorId;

			formulario.appendChild(inputProfessorId);

			document.body.appendChild(formulario);

			formulario.submit();

		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>