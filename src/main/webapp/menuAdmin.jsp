<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Admin</title>
<link rel="stylesheet" type="text/css" href="css/menuAdmin.css">
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
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Professor</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="cadastrarProfessor.jsp">Cadastrar Professor</a></li>
                  <li><a class="dropdown-item" href="#" onclick="SvListaDeProfessor()" >Lista De Professor</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Cliente</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#" onclick="SvListaDeClientes()" >Lista De Cliente</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Aula</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#" onclick="SvListaDeAula()">Lista De Aulas</a></li>
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
              
  
</main>
<footer>
	<p>&copy; 2023 Gabriel Monte | EsporteAula</p>
   	<p>Contate-nos: esporteaula@eulaesporte.com</p>
</footer>
    <script>

    	function SvListaDeClientes(){

    		var formulario = document.createElement("form");

    		formulario.action = "SvListaDeCliente";
    		formulario.method = "get";
    		formulario.id = "listaDeCliente";

    		document.body.appendChild(formulario);

    		formulario.submit();
	
		}
	
    </script>
    <script>

    	function SvListaDeProfessor(){

      		var formulario = document.createElement("form");

      		formulario.action = "SvListaDeProfessor";
      		formulario.method = "get";
      		formulario.id = "listaDeCliente";

      		document.body.appendChild(formulario);

      		formulario.submit();

  		}

  </script>
  <script>

    	function SvListaDeAula(){

      		var formulario = document.createElement("form");

      		formulario.action = "SvListaDeAula";
      		formulario.method = "get";
      		formulario.id = "listaDeCliente";

      		document.body.appendChild(formulario);

      		formulario.submit();

  		}

  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>