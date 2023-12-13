<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="./assets/img/book-2-fill.svg" type="image/svg" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title> Formulário Compra</title>
<style>

main {
    background-color:rgba(218, 213, 221, 0.897) ;
}

h1{
    margin-top: 10px;
   
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
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Pesquisar</button>
        </form>
      </div>
    </div>
  </nav>
  
  
	<main>
		<div class="text">
                    <h1>Formulário Compra</h1>
                    <h4>Que bom que você escolheu viajar conosco!</h4>
        
        </div>

<%-- 		<jsp:include page="compra.jsp"> --%>
<%-- 			<jsp:param name="home" value="formComprar.jsp" /> --%>
<%-- 			<jsp:param name="cliente" value="cliente" /> --%>
<%-- 			<jsp:param name="destinos" value="destino" /> --%>
<%-- 			<jsp:param name="compra" value="compra" /> --%>
<%-- 		</jsp:include> --%>

		<div class="container py-3">
			<form action="compra-save">
				
				<div class="form-group mb-3">
					<label for="data" class="form-label"> Data </label> <input
						type="text" id="data" name="data_Compra" class="form-control" value="" />
				</div>

				<div class="form-group mb-3">
					<label for="destinos" class="form-label"> Destinos </label> 
					<select id="destinos" name="destinos" class="form-control">
						<option value="DEFAULT">Destinos</option>
						<jstl:forEach items="${listaDestinos}" var="l">
							<option value="${l.id_Destino}">${l.nome_Destino}</option>
						</jstl:forEach>
					</select>
				</div>
				<div class="form-group mb-3">
					<label for="cliente" class="form-label"> Cliente </label> 
					<select id="cliente" name="cliente" class="form-control">
						<option value="DEFAULT">Escolha um Cliente</option>
						<jstl:forEach items="${listaClientes}" var="c">
							<option value="${c.id}">${c.nome_Completo}</option>
						</jstl:forEach>
					</select>
				</div>
				
				<div class="form-group mb-3">
					<label for="total_compra" class="form-label"> Total</label> <input
						type="text" id="total_compra" name="total_Compra" class="form-control" value="" />
				</div>
				
				
				<button type="submit" class="btn btn-primary">Enviar</button>
				<a href="./compra" class="btn btn-danger"
					style="margin-left: 10px"> Cancelar </a>
			</form>
		</div>

	</main>

	<footer>
    <div class="footer-info">
      <div class="contact-info">

        <h5>Telefone para contato</h5>
        </p>
        <p> (11) 3452-0777 </p>
        <p> (11) 96378-3952</p>
      </div>
      <div class="end-info">
        <h5>Endereço</h5>
        <p>Rua Tupinambá, 125 - Bairro Jaguaré</p>
        <p> São Paulo - SP</p>
      </div>
      <div class="social-media text-white">
        <h5> Nossas mídias sociais</h5>
        <i class="bi bi-instagram insta fs-4" onclick="window.open('https://www.instagram.com/', '_blank')"></i>
        <i class="bi bi-facebook face fs-4" onclick="window.open('https://www.facebook.com/', '_blank')"></i>
        <i class="bi bi-twitter tw fs-4" onclick="window.open('https://www.twitter.com/', '_blank')"></i>
        <i class="bi bi-messenger mess fs-4" onclick="window.open('https://www.messenger.com/', '_blank')"></i>
        <i class="bi bi-whatsapp whats fs-4 " onclick="window.open('https://web.whatsapp.com/', '_blank')"></i>
      </div>
    </div>
    <div class="footer-text">
      <p>&copy; 2023 Agência de Viagens. Todos os direitos reservados.</p>
      <img class="img-footer" src="footer3.png" alt="Bandeiras Cartoes">
    </div>
  </footer>
   
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>