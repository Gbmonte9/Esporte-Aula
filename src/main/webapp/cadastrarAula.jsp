<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="model.Cliente" %>
<%@ page import="model.Professor" %>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Aula</title>
<link rel="stylesheet" type="text/css" href="css/cadastarAula.css">
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
                  <li><a class="dropdown-item" href="#" onclick="SvCadastrarAula()">Cadastrar Aula</a></li>
                  <li><a class="dropdown-item" href="#" onclick="SvMenuClienteLista('<%= request.getSession().getAttribute("email") %>')">Lista De Aula</a></li> 
                  <li><a class="dropdown-item" href="#" onclick="SvMenuCalendario('<%=request.getSession().getAttribute("email")%>')">Calendário</a></li>
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

        <form action="SvCadastrarAula" method="post">
  
          <div class="container my-5">
              
              <div class="row justify-content-sm-center ">
  
                  <div class="col-sm-10 text-center">
                      
                      <!------>
  
                      <h1 class="titulo">Cadastrar Aula</h1>    
  
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
                            <option value="07:00">7:00</option>
                            <option value="08:00">8:00</option>
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
              		String alertProfessor = (String) request.getAttribute("alertProfessor");

       				
        			if (professores == null || professores.isEmpty()) {
    			
    		%>
    		
    			<div class="row justify-content-sm-center " >

                <div class="col-sm-10">
                    
                  <!------>

                  <div class="row mb-3">
                  
                  	<label for="inputHorario" class="col-sm-3 col-form-label">Professor: </label>
                    <div class="col-sm-9">
                  
                    <select class="form-select" aria-label="Default select example">
                      <option selected>Professor não Cadastrado.</option>
                    </select>
                    </div>
                  </div>
                  
                 </div>
  
            </div>
                  
          <% } else { %>
  
              <%  
                			
                			Professor pr = new Professor();
                		
                			List<Professor> listaProfessor = pr.listaDeProfessor(); // pode dar erro 
                	
              %>
                	
            <div class="row justify-content-sm-center " >

                <div class="col-sm-10">
                		
                	<div class="row mb-3">
                        <label for="inputHorario" class="col-sm-3 col-form-label">Professor: </label>
                    <div class="col-sm-9">
                	
                	
                    <select class="form-select" aria-label="Default select example" name="professorId">
                      <option selected>Selecione o Professor</option>
                      
                      <% for (Professor professor : listaProfessor) { %>
                      
                      <option value="<%= professor.getId() %>">Professor: <%= professor.getNome() %> - Disciplina: <%= professor.getEspecialidade() %> - Valor: R$<%= professor.getSalario() %></option>
                      
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
        						<input type="text" id="inputClienteEmail" name="clienteEmail" value="<%= request.getSession().getAttribute("email") %>" readonly>
        						<!-- ... outros elementos ... -->
    						</div>
					</div>
  
                  </div>
    
              </div>

              <div class="row justify-content-sm-center ">

                  <div class="col-sm-10">
                      
                    <% String alertMsg = (String) request.getAttribute("alertMsg"); %>
                    <% if (alertMsg != null && !alertMsg.isEmpty()) { %>
                      	
                      	<% if (alertMsg.equals("Aula cadastrado com Sucesso.")) { %>
                      		
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
  
                  </div>
    
              </div>
  
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
    if (alertMsg && alertMsg.includes("Aula cadastrado com Sucesso.")) {
        limparCampos();
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

    	function SvMenuClienteLista(email){

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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>