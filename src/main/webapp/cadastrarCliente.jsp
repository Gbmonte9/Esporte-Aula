<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Cliente</title>
<link rel="stylesheet" type="text/css" href="css/cadastrarCliente.css">
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
              <a class="nav-link active " aria-current="page" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="menuLogin.jsp">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cadastrarCliente.jsp">Cadastrar</a>
            </li>
          </ul>

        </div>
      </nav>
  
    </header>
    <main>
    
    <div class="container text-center">
      <div class="row">
        
        <!-------------->

        <form action="SvCadastrarCliente" method="post">
  
          <div class="container my-5">
              
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-10 text-center">
                      
                      <!------>
  
                      <h1 class="titulo">Cadastrar Cliente</h1>    
  
                      <br><br>
  
                      <!------>
  
                  </div>
    
              </div>
  
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-5">
                      
                      <!------>
  
                      <div class="row mb-3">
                          <label for="inputNome" class="col-sm-3 col-form-label">Nome: </label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputNome" name="nome" value="<%=request.getParameter("nome")==null?"":request.getParameter("nome")%>">
                          </div>
                        </div>
  
                      <!------>
  
                  </div>
                  <div class="col-sm-5">
                      
                      <!------>
  
                      <div class="row mb-3">
                          <label for="inputTelefone" class="col-sm-3 col-form-label">Telefone: </label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputTelefone" name="telefone" value="<%=request.getParameter("telefone")==null?"":request.getParameter("telefone")%>">
                          </div>
                        </div>
  
                      <!------>
  
                  </div>
    
              </div>
  
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-5">
                      
                      <!------>
  
                      <div class="row mb-3">
                          <label for="inputCpf" class="col-sm-3 col-form-label">Cpf: </label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputCpf" name="cpf" value="<%=request.getParameter("cpf")==null?"":request.getParameter("cpf")%>">
                          </div>
                        </div>
  
                      <!------>
  
                  </div>
                  <div class="col-sm-5">
                      
                      <!------>
  
                      <div class="row mb-3">
                          <label for="inputData" class="col-sm-3 col-form-label">Data: </label>
                          <div class="col-sm-9">
                            <input input type="date" class="form-control" id="inputData" name="data" value="<%=request.getParameter("data")==null?"":request.getParameter("data")%>">
                          </div>
                        </div>
  
                      <!------>
  
                  </div>
    
              </div>
  
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-10">
                      
                      <!------>
  
                      <div class="row mb-3">
                          <label for="inputEmail" class="col-sm-2 col-form-label">Email: </label>
                          <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail" name="email" value="<%=request.getParameter("email")==null?"":request.getParameter("email")%>">
                          </div>
                        </div>
  
                      <!------>
  
                  </div>
    
              </div>
  
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-5">
                      
                      <!------>
  
                      <div class="row mb-3">
                          <label for="inputSenha" class="col-sm-3 col-form-label">Senha: </label>
                          <div class="col-sm-9">
                            <input type="password" class="form-control" id="inputSenha" name="senha" value="<%=request.getParameter("senha")==null?"":request.getParameter("senha")%>">
                          </div>
                        </div>
  
                      <!------>
  
                  </div>
                  <div class="col-sm-5">
                      
                      <!------>
  
                      <div class="row mb-3">
                          <label for="inputSenha2" class="col-sm-3 col-form-label">Senha: </label>
                          <div class="col-sm-9">
                            <input type="password" class="form-control" id="inputSenha2" name="senha2" value="<%=request.getParameter("senha2")==null?"":request.getParameter("senha2")%>">
                          </div>
                        </div>
  
                      <!------>
  
                  </div>
    
              </div>
  
              <div class="row justify-content-sm-center " >
  
  
                <div class="col-sm-5">
                      
                <!------>
  
                  <label for="inputGenero" class="col-sm-2 col-form-label">Gênero: </label>
  
                <!------>
  
                </div>
                
                <div class="col-sm-5">
                      
                  <!------>
  
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="genero" id="inlineRadio1Genero" value="Homem" value="<%=request.getParameter("genero")==null?"":request.getParameter("genero")%>">
                    <label class="form-check-label" for="inlineRadio1">Homem</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="genero" id="inlineRadio2Genero" value="Mulher" value="<%=request.getParameter("genero")==null?"":request.getParameter("genero")%>">
                    <label class="form-check-label" for="inlineRadio2">Mulher</label>
                  </div>
  
                  <!------>
  
                </div>
    
              </div>
  
              <div class="row justify-content-sm-center ">
  
                <div class="col-sm-10">
                      
                   <!--  Verificacao -->
                   
                    <% String alertMsg = (String) request.getAttribute("alertMsg"); %>
                    <% if (alertMsg != null && !alertMsg.isEmpty()) { %>
                      	
                      	<% if (alertMsg.equals("Cliente cadastrado com Sucesso.")) { %>
                      		
                      		<div class="alert alert-success" role="alert">
                          		Cadastrado com Sucesso.
                      		</div>
                      		<div class="alert alert-danger" role="alert" style="display: none">
                        	<%= alertMsg %>
                      		</div>
                      		
                      	<% } else { %>
                      	
                      		<div class="alert alert-success" role="alert" style="display: none">
                          		Cadastrado com Sucesso.
                      		</div>
                      		<div class="alert alert-danger" role="alert">
                        	<%= alertMsg %>
                      		</div>
	
						<% }  %>

                    <% }  %>

                <!------>
  
                </div>
    
              </div>
               
              <br>
  
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-10 text-center">
                      
                    <!------>
  
                    <input type="submit" class="btn btn-warning" value="Cadastrar">
  
                    <!------>
  
                  </div>
    
              </div>
    
          </div>
          
          <br>
  
      </form>

      <!-------------->

      </div>
    </div>
    
    <!------------------>
  
    </main>
    <footer>
        <p>&copy; 2023 Gabriel Monte | EsporteAula</p>
        <p>Contate-nos: esporteaula@eulaesporte.com</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script>
	
    function limparCampos() {
        document.getElementById("inputNome").value = "";
        document.getElementById("inputTelefone").value = "";
        document.getElementById("inputCpf").value = "";
        document.getElementById("inputData").value = "";
        document.getElementById("inputEmail").value = "";
        document.getElementById("inputSenha").value = "";
        document.getElementById("inputSenha2").value = "";
        
        document.getElementById("inlineRadio1Genero").checked = false;
        document.getElementById("inlineRadio2Genero").checked = false;
    }

    var alertMsg = "<%= alertMsg %>";
    if (alertMsg && alertMsg.includes("Cliente cadastrado com Sucesso.")) {
        limparCampos();
    }
	</script>
	<script src="script/verificarTelefone.js"></script>
	<script src="script/verificarCpf.js"></script>
	<script src="script/verificarEmail.js"></script>
</body>
</html>