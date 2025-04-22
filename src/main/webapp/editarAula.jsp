<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="model.Cliente" %>
<%@ page import="model.Professor" %>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Aula</title>
<link rel="stylesheet" type="text/css" href="css/editarAula.css">
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
    
    <!-- ---------------------------------- -->
    
    <div class="container text-center">
      <div class="row">
        
        <!-------------->

        <form action="SvEditarAula" method="post">
  
          <div class="container my-5">
              
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-10 text-center">
                      
                      <!------>
  
                      <h1 class="titulo">Editar Aula</h1>    
  
                      <br><br>
  
                      <!------>
  
                  </div>
    
              </div>
  
              <div class="row justify-content-sm-center ">
  
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
                  <div class="col-sm-5">
                      
                      <!------>
  
                      <div class="row mb-3">
                        <label for="inputHorario" class="col-sm-3 col-form-label">Hórario: </label>
                        <div class="col-sm-9">
                          <!--------------->
                          <select class="form-select" aria-label="Default select example" name="horario">
                            <option selected>Seleciona o horário: </option>
                            <option value="7:00">7:00</option>
                            <option value="8:00">8:00</option>
                            <option value="12:00">12:00</option>
                            <option value="14:00">14:00</option>
                            <option value="16:00">16:00</option>
                            <option value="18:00">18:00</option>
                            <option value="20:00">20:00</option>
                            <option value="21:00">21:00</option>
                          </select>
                          <!--------------->
                        </div>
                      </div>
  
                      <!------>
  
                  </div>
    
              </div>
              
              <!-- -- Ajuste para Seleciona o Professor  -->
              
              <% 
              
              		List<Professor>  professores  = (List<Professor>) request.getAttribute("professor");
              		List<Cliente> clientes = (List<Cliente>) request.getAttribute("cliente");
              		String alertProfessor = (String) request.getAttribute("alertProfessor");
       				
        			if (professores == null || professores.isEmpty()) {
    			
    		  %>
    		
    			<div class="row justify-content-sm-center " >

                <div class="col-sm-9">
                    
                  <!------>
               

                  <div class="row mb-3">
                    <select class="form-select" aria-label="Default select example">
                      <option selected>Professor não Cadastrado.</option>
                    </select>
                  </div>
                  
                 </div>
  
            </div>
                  
          <% } else { %>
  
              <%  
                			
                			Professor pr = new Professor();
                		
                			List<Professor> listaProfessor = pr.listaDeProfessor(); // pode dar erro 
                	
              %>
                	
            <div class="row justify-content-sm-center " >

                <div class="col-sm-9">
                
                		
                	<div class="row mb-3">
                	
                		<label for="inputHorario" class="col-sm-3 col-form-label">Professor: </label>
                    <div class="col-sm-9">
                	
                    <select class="form-select" aria-label="Default select example" name="professorId">
                      <option selected>Selecione o Professor</option>
                      
                      <% for (Professor professor : listaProfessor) { %>
                      
                      <option value="<%= professor.getId() %>">Professor: <%= professor.getNome() %> - Disciplina: <%= professor.getEspecialidade() %> - Valor: <%= professor.getSalario() %></option>
                      
                      <% }  %>
                      
                    </select>
                    </div>
                  </div> 

                  <!------>

                </div>
  
            </div>
            
            <% }  %>
            
                <% 
                           
                        if (clientes == null || clientes.isEmpty()) {
                    
                %>
    
                <div class="row justify-content-sm-center " >
    
                    <div class="col-sm-9">
                        
                      <!------>
                   
    
                      <div class="row mb-3">
                        <select class="form-select" aria-label="Default select example">
                          <option selected>Cliente não Cadastrado.</option>
                        </select>
                      </div>
                      
                     </div>
      
                </div>
                      
              <% } else { %>
                    
                    
                        <%  
                                
                                Cliente cl = new Cliente();
                            
                                List<Cliente> listaCliente = cl.listaDeCliente(); // pode dar erro 
                        
                        %>
                        
                <div class="row justify-content-sm-center " >
    
                    <div class="col-sm-9">
                    
                            
                        <div class="row mb-3">
                        
                        	<label for="inputHorario" class="col-sm-3 col-form-label">Cliente: </label>
                    	<div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" name="clienteId">
                          <option selected>Selecione o Cliente</option>
                          
                          <% for (Cliente cliente : listaCliente) { %>
                          
                          <option value="<%= cliente.getId() %>">Cliente: <%= cliente.getNome() %> - Email:: <%= cliente.getEmail() %> </option>
                          
                          <% }  %>
                          
                        </select>
                        </div>
                      </div> 
    
                      <!------>
    
                    </div>
      
                </div>
                
              <% }  %>
  
              <div class="row justify-content-sm-center ">

                  <div class="col-sm-10">
                      
                      <div class="row justify-content-sm-center" style="display: none">
    						<div class="col-sm-10 text-center" style="display: none">
        						<!-- ... outros elementos ... -->
        						<input type="text" id="inputAulaId" name="aulaId" value="<%= request.getSession().getAttribute("aulaId") %>" readonly>
        						<!-- ... outros elementos ... -->
    						</div>
					</div>
  
                  </div>
    
              </div>

              <div class="row justify-content-sm-center ">

                  <div class="col-sm-10">
                      
                    <% String alertMsg = (String) request.getAttribute("alertMsg"); %>
                        <% if (alertMsg != null && !alertMsg.isEmpty()) { %>
                              
                              <% if (alertMsg.equals("Aula editado com Sucesso.")) { %>
                                  
                                  <div class="alert alert-success" role="alert">
                                      Editado com Sucesso.
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

      <!-------------->

      </div>
    </div>
        
        
    </main>
    <footer>
        <p>&copy; 2023 Gabriel Monte | EsporteAula</p>
        <p>Contate-nos: esporteaula@eulaesporte.com</p>
    </footer>
    <script>
    
    function limparCampos() {
    	 document.getElementById("inputData").value = "";
         document.getElementById("horario").value = "";
    }

    var alertMsg = "<%= alertMsg %>";
    if (alertMsg && alertMsg.includes("Aula editado com Sucesso.")) {
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>