<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Projeto Agenda</title>


    <link  href="${request.contextPath}bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="${request.contextPath}bootstrap/vendor/dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Agenda</a>
      <ul class="navbar-nav">
        <li class="nav-item text-nowrap">
       <p class="mt-4" style="color: white;"> Bem vindo ${login}</p> 
        </li>
      </ul>
      <ul class="navbar-nav">
        <li class="nav-item text-nowrap">
         <a class="nav-link" href="${request.contextPath}index.jsp">Sair</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="#">
                  <a class="nav-link" href="${request.contextPath}home.jsp"> <span data-feather="home"></span>Menu Principal <span class="sr-only">(atual)</span></a>
                </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="${request.contextPath}cadContato.jsp"><span data-feather="file"></span>Contatos</a>
                </a>
              </li>
            </ul>
        </nav>
	
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

          <h2 class="mt-4">Cadastro de Contato</h2>
          <div class="table-responsive">
            <table class="table table-striped table-sm">
        <form method="POST" action="contatoController">
	 <div class="form-group">
	    <label for="nome">Nome</label>
	    <input type="text" class="form-control" id="nome" aria-describedby="nomeHelp" placeholder="Seu nome">
	  </div>
	  <div class="form-group">
	    <label for="email">Endereço de email</label>
	    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Seu email">
	  </div>
	  
	   <div class="form-group">
	    <label for="tel">Telefone</label>
	    <input type="tel" class="form-control" id="exampleInputEmail1" aria-describedby="telHelp" placeholder="Seu telefone">
	  </div>
	  
	  <button type="submit" class="btn btn-primary">Enviar</button>
	</form>
            </table>
          </div>
        </main>
      </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>

    <!-- Ícones -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Gráficos -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
          datasets: [{
            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script>
  </body>
</html>
