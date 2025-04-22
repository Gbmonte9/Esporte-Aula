<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Login</title>
<link rel="stylesheet" type="text/css" href="css/menuLogin.css">
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

                <form action="SvLogin" method="post">
  
                    <div class="container my-5" >
                    
                        <div class="row justify-content-sm-center " >
        
                            <div class="col-sm-8 text-center">
                                <h1 class="titulo">Login</h1>
                                <br>
                            </div>
                            <div class="col-sm-8 ">
                                <div class="mb-3">
                                    <label for="inputEmailId" class="form-label">Email: </label>
                                    <input type="email" class="form-control" id="inputEmailId" name="email" value="<%=request.getParameter("email")==null?"":request.getParameter("email")%>">
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="mb-3">
                                    <label for="inputSenhaId" class="form-label">Senha: </label>
                                    <input type="password" class="form-control" id="inputSenhaId" name="senha" value="<%=request.getParameter("senha")==null?"":request.getParameter("senha")%>">
                                </div>
                            </div>
                            <div class="col-sm-8 text-center">
                                <% String alertMsg = (String) request.getAttribute("alertMsg"); %>
                    			<% if (alertMsg != null && !alertMsg.isEmpty()) { %>
                      	
                      					<div class="alert alert-danger" role="alert">
                        					<%= alertMsg %>
                      					</div>
                      		
                    			<% }  %>
                    			
                            </div>
                            <div class="col-sm-8 text-center">
                                <input type="submit" class="btn btn-warning" value="Login">
                            </div>
          
                        </div>
          
                    </div>
        
                </form>
                
                <!------------->
            </div>
            
        </div>
  
    </main>
    <footer>
        <p>&copy; 2023 Gabriel Monte | EsporteAula</p>
        <p>Contate-nos: esporteaula@eulaesporte.com</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>