<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Professor</title>
<link rel="stylesheet" type="text/css" href="css/editarProfessor.css">
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
        
       <!-- ------------------------------- -->
        
      <div class="container text-center">
      <div class="row">
        <div class="col">
          
          <!------------->

          <form action="SvEditarProfessor" method="post">
  
            <div class="container my-5" >
                
                <div class="row justify-content-sm-center " >
    
                    <div class="col text-center">
                        
                      <!------>
    
                      <h1 class="titulo">Editar Professor</h1>    
    
                      <!------>
    
                    </div>
      
                </div>

                <br>
    
                <div class="row justify-content-sm-center " >
    
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
    
                <div class="row justify-content-sm-center " >
    
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
                              <input type="date" class="form-control" id="inputData" name="data" value="<%=request.getParameter("data")==null?"":request.getParameter("data")%>">
                            </div>
                        </div>
    
                      <!------>
    
                    </div>
      
                </div>
    
                <div class="row justify-content-sm-center " >
    
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
    
                <div class="row justify-content-sm-center " >
    
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
                    <input class="form-check-input" type="radio" name="genero" id="inlineRadio1Genero" value="Homem">
                    <label class="form-check-label" for="inlineRadio1">Homem</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="genero" id="inlineRadio2Genero" value="Mulher">
                    <label class="form-check-label" for="inlineRadio2">Mulher</label>
                  </div>
    
                    <!------>
    
                  </div>
      
                </div>
    
                <div class="row justify-content-sm-center " >
    
                  <div class="col-sm-1">
                        
                    <!------>
    
                    <label for="inputGenero" class="col-sm-2 col-form-label">Disiplina: </label>
    
                    <!------>
    
                  </div> 
                  
                  <div class="col-sm-9 text-center">
                        
                      <!------>
    
                      <input type="radio" class="btn-check" name="disciplina" id="option1" value="Box" autocomplete="off" checked>
                  	  <label class="btn btn-outline-warning" for="option1">Box</label>
                  
                  	  <input type="radio" class="btn-check" name="disciplina" id="option2" value="KickBoxing" autocomplete="off">
                  	  <label class="btn btn-outline-warning" for="option2">KickBoxing</label>
                  
                  	  <input type="radio" class="btn-check" name="disciplina" id="option3" value="MuayThai" autocomplete="off">
                  	  <label class="btn btn-outline-warning" for="option3">MuayThai</label>



                  	  <input type="radio" class="btn-check" name="disciplina" id="option4" value="Jiu Jitsu" autocomplete="off" checked>
                  	  <label class="btn btn-outline-warning" for="option4">Jiu Jitsu</label>
                  
                  	  <input type="radio" class="btn-check" name="disciplina" id="option5" value="Judo" autocomplete="off">
                  	  <label class="btn btn-outline-warning" for="option5">Judô</label>
                  
                  	  <input type="radio" class="btn-check" name="disciplina" id="option6" value="Luta Livre" autocomplete="off">
                  	  <label class="btn btn-outline-warning" for="option6">Luta Livre</label>


                  	 <input type="radio" class="btn-check" name="disciplina" id="option7" value="MMA" autocomplete="off" checked>
                  	 <label class="btn btn-outline-warning" for="option7">MMA</label>
                  
                  	 <input type="radio" class="btn-check" name="disciplina" id="option8" value="Karate" autocomplete="off">
                  	 <label class="btn btn-outline-warning" for="option8">Karatê</label>
                  
                  	 <input type="radio" class="btn-check" name="disciplina" id="option9" value="Taekwoondo" autocomplete="off">
                  	 <label class="btn btn-outline-warning" for="option9">Taekwondo</label>
    
                      <!------>
    
                    </div>
      
                </div>

                <br>
    
                <div class="row justify-content-sm-center " >
    
                    <div class="col-sm-10">
                        
                        <!------>
    
                        <div class="row mb-3">
                            <label for="inputSalario" class="col-sm-2 col-form-label">Salário: </label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputSalario" name="salario" value="<%=request.getParameter("salario")==null?"":request.getParameter("salario")%>">
                            </div>
                          </div>
    
                        <!------>
    
                    </div>
      
                </div>
                
                <div class="row justify-content-sm-center" style="display: none">

                    <div class="col-sm-10 text-center" style="display: none">
                        <!-- ... outros elementos ... -->
                            <input type="text" id="inputProfessorId" name="professorId" value="<%= request.getSession().getAttribute("professorId") %>" readonly>
                        <!-- ... outros elementos ... -->
                    </div>

                </div>
    
                <div class="row justify-content-sm-center " >
    
                    <div class="col-sm-10">
                        
                    <!------>
    
                    <% String alertMsg = (String) request.getAttribute("alertMsg"); %>
                        <% if (alertMsg != null && !alertMsg.isEmpty()) { %>
                              
                              <% if (alertMsg.equals("Professor editado com Sucesso.")) { %>
                                  
                                  <div class="alert alert-success" role="alert">
                                      Editado com Sucesso.
                                  </div>
                                  <div class="alert alert-danger" role="alert" style="display: none">
                                <%= alertMsg %>
                                  </div>
                                  
                              <% } else { %>
                              
                                  <div class="alert alert-success" role="alert" style="display: none">
                                      Editado com Sucesso.
                                  </div>
                                  <div class="alert alert-danger" role="alert">
                                <%= alertMsg %>
                                  </div>
        
                            <% }  %>
    
                        <% }  %>
    
                   <!------>
    
                    </div>
      
                </div>
    
                <div class="row justify-content-sm-center ">
    
                    <div class="col-sm-10 text-center">
                        
                      <!------>
    
                        <input type="submit" class="btn btn-warning" value="Editar">
    
                      <!------>
    
                    </div>
      
                </div>
      
            </div>
            
            <br>
    
        </form>

        <!------------->

        </div>
      </div>
    </div>

    </main>
    <footer>
        <p>&copy; 2023 Gabriel Monte | EsporteAula</p>
        <p>Contate-nos: esporteaula@eulaesporte.com</p>
    </footer>
    <script>
    
    function limparCampos() {
    	 document.getElementById("inputNome").value = "";
         document.getElementById("inputTelefone").value = "";
         document.getElementById("inputCpf").value = "";
         document.getElementById("inputData").value = "";
         document.getElementById("inputEmail").value = "";
         document.getElementById("inputSenha").value = "";
         document.getElementById("inputSenha2").value = "";
         document.getElementById("inputSalario").value = "";
         document.getElementById("inlineRadio1Genero").checked = false;
         document.getElementById("inlineRadio2Genero").checked = false;
         document.getElementById("option1").checked = true; 
     
    }

    var alertMsg = "<%= alertMsg %>";
    if (alertMsg && alertMsg.includes("Professor editado com Sucesso.")) {
        limparCampos();
    }
	</script>
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
  <script src="script/verificarTelefone.js"></script>
  <script src="script/verificarCpf.js"></script>
  <script src="script/verificarEmail.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>    
</body>
</html>