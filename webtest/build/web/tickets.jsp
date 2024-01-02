<%-- 
    Document   : tickets
    Created on : 22 dic. 2023, 00:36:28
    Author     : gabyg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <!-- metadatos -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Alan Baez">
    <meta name="description" content="Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!">
    <meta name="keywords" content="oradores, orador, ticket, conferencia, Bill Gates, Steve Jobs, Ada Lovelace">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- css -->
    <link rel="stylesheet" href="styles.css">
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="index.jsp">
    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet"> 
    <!-- title -->
    <title>Comprar tickets</title>
  </head>
  <body>

    <!-- Navbar -->
    <header>
      <nav class="navbar navbar-expand-lg">
        <div class="container-fluid px-5 pb-2" id="container-fluid">
          <img class="nav-img" src="Imgs/codoacodo.png" alt="Logo">
          <a class="brand fs-5" href="index.jsp">Conf Bs As</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav--link nav-link-white" href="index.jsp">La conferencia</a>
                </li>
                <li class="nav-item">
                  <a class="nav--link" href="oradores.jsp">Los oradores</a>
                </li>
                <li class="nav-item">
                  <a class="nav--link" href="index.jsp#lugaresbsas">El lugar y la fecha</a>
                </li>
                <li class="nav-item">
                  <a class="nav--link" href="index.jsp#convertite">Conviertete en orador</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link-green" href="tickets.jsp">Comprar tickets</a>
                </li>
              </ul>
            </div>
          </div>
        
      </nav> 
    </header>

     <main class="content">
      <!--Ticket Cards-->
      <div class="ticket-card-container">
        <div class="row gap-1">
          <div class="col-12 col-md ticket-card border-blue py-4">
            <p class="fs-4 fw-bold">Estudiante</p>
            <p class="fs-5">Tienen un descuento</p>
            <p class="fw-bold fs-5">80%</p>
            <p class="text-gray">* presentar documentación</p>
          </div>
          <div class="col-12 col-md ticket-card border-light-blue py-4 ">
            <p class="fs-4 fw-bold">Trainee</p>
            <p class="fs-5">Tienen un descuento</p>
            <p class="fw-bold fs-5">50%</p>
            <p class="text-gray">* presentar documentación</p>
          </div>
          <div class="col-12 col-md ticket-card border-yellow py-4">
            <p class="fs-4 fw-bold">Junior</p>
            <p class="fs-5">Tienen un descuento</p>
            <p class="fw-bold fs-5">15%</p>
            <p class="text-gray">* presentar documentación</p>
          </div>
        </div>
      </div>

      <!-- Ticket Form -->
      <div class="cards-title mt-0">
        <p>VENTA</p>
        <h3 class="fw-bold">VALOR DE TICKET $200</h3>
      </div>

      <form>
        <div class="ticket-form">
          <div class="row mt-2 mb-3 gx-3">
            <div class="col">
              <input type="text" class="form-control" placeholder="Nombre" aria-label="First name">
            </div>
            <div class="col">
              <input type="text" class="form-control" placeholder="Apellido" aria-label="Last name">
            </div>
          </div>
          <div class="mb-3">
            <input type="email" class="form-control" placeholder="Correo" aria-label="Last name">
          </div>   

          <div class="row mb-3 gx-3">
            <div class="col">
              <label class="mb-2" for="ticket-amount">Cantidad</label>
              <input type="text" id="ticket-amount" class="form-control" placeholder="Cantidad" aria-label="First name">
            </div>
            <div class="col">
              <label class="mb-2" for="ticket-category">Categoria</label>
              <select id="ticket-category" class="form-select text-gray">
                <option value="0.8" selected>Estudiante</option>
                <option value="0.5">Trainee</option>
                <option value="0.15">Junior</option>
              </select>
            </div>
          </div>

          <div id="payResume" class="alert alert-primary" role="alert">
            Total a Pagar: $
          </div>
                
          <div class="row gx-3">
            <div class="col">
              <input type="reset" class="btn btn-success form-submit" value="Borrar"> 
            </div>
            <div class="col">
              <button type="button" id="resumeButton" class="btn btn-success form-submit">Resumen</button>
            </div>
          </div>
          
        </div>
      </form>

    </main>

    <!-- Footer -->
    <footer>
      <div class="container-fluid">
          <div class="row align-items-center gap-3">
            <div class="col"><a href="#">Preguntas frecuentes</a></div>
            <div class="col"><a href="#">Contáctanos</a></div>
            <div class="col"><a href="#">Prensa</a></div>
            <div class="col"><a href="#">Conferencia</a></div>
            <div class="col"><a href="#">Términos y condiciones</a></div>
            <div class="col"><a href="#">Privacidad</a></div>
            <div class="col"><a href="#">Estudiantes</a></div>
          </div>
        </div>
      
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="index.js"></script>        
  </body>
</html>
