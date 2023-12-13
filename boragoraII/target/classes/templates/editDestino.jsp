<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%> 


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap demo</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="stylesheet" href="../exe.MOD2/ag.css">
    <style>

main {
    background-color:rgba(218, 213, 221, 0.897) ;
}

h1{
    margin-top: 10px;
   
}
h5{
    margin-top: 20px;

}
h4{
    margin-top: 50px;
}
.text{
    text-align: center;
    margin-bottom: 2%;
    
}

.form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 5%; 
        }
        
        .form-section {
            flex: 1;
            padding: 30px;
        }

        .middle-divider {
            height: 100%;
            margin: 1 10px;
        }



    footer {
      background-color: rgb(63, 63, 63);
      padding: 10px;
    }

    .footer-info {
      display: flex;
      justify-content: space-between;
    }

    .contact-info {
      color: white;
      font-size: medium;
     }

    .end-info {
      color: white;
      font-size: medium;
    }
    
    .footer-text {
      text-align: center;
      color: white;

    }

    .img-footer {
      width: 250px;
    }
  
    .insta {
      background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%);
      -webkit-background-clip: text;

      background-clip: text;
      -webkit-text-fill-color: transparent;
      cursor: pointer;
    }

    .face {
      color: #3B5998;
      cursor: pointer;
    }

    .tw {
      color: #00acee;
      cursor: pointer;
    }

    .mess {
      color: #3B5998;
      cursor: pointer;

    }

    .whats {
      color: rgb(50, 192, 14);
      cursor: pointer;
    }


    @media screen and (max-width:600px) {
      footer .footer-info {
        display: flex;
        flex-direction: column;

      }
    }
    /*fim footer */ 

    </style>
  </head>
<body>
<nav class="navbar">
<div class="container-fluid">
      <h1> Bora Agora?</h1>
      <a class="navbar-brand" href="#">Deixa conosco o planejamento!</a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a href="index.html" class="nav-link active" aria-current="page">Home</a>
          </li>
          <li class="nav-item">
            <a href="promocao.html" class="nav-link" aria-current="page">Promoções</a>
          </li>
          <li class="nav-item">
            <a href="destino.html" class="nav-link" aria-current="page">Destinos</a>
          </li>
          <li class="nav-item">
            <a href="contato.html" class="nav-link" aria-current="page">Contato</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Login
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="entrar.html">Entrar</a></li>
              <li><a class="dropdown-item" href="cadastro.html">Cadastre-se</a></li>
             </ul>
          </li>
    </ul>
        
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Pesquisar</button>
        </form>
      </div>
    </div>
  </nav>


		
		<div class="container py-3">
            <form action="./destinos-save">
	            <h2 class="text-center">Atualizar</h2>
	            <input type="hidden" id="id_Destino" name="id_Destino" class="form-control" value="${destino.id_Destino}" />
<!-- 	            <div class="form-group mb-3"> -->
<!-- 	                <label for="nome" class="form-label"> -->
<!-- 	                    id -->
<!-- 	                </label> -->
<%-- 	                <input type="text" id="id" name="id" class="form-control" value="${usuario.id}" readonly/> --%>
<!-- 	            </div> -->
	            <div class="form-group mb-3">
	                <label for="data" class="form-label">
	                    Data
	                </label>
	                <input type="text" id="data" name="data" class="form-control" value="${destino.data_Destino}" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="destino" class="form-label">
	                    Destino
	                </label>
	                <input type="destino" id="nome_Destino" name="destino" class="form-control" value="${destino.nome_Destino}" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="valor" class="form-label">
	                    Valor
	                </label>
	                <input type="valor" id="valor" name="valor" class="form-control" value="${destino.valor_Destino}" />
	            </div>
	            
	           
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="./usuario" class="btn btn-danger" style="margin-left: 10px">
	                Cancelar
	            </a>
            </form>
        </div>
		
    </main>
    
	<footer>
		<img
			src="./assets/img/recode.svg"
			alt="recodePro" />
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>