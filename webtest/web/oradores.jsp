<%-- 
    Document   : oradores
    Created on : 22 dic. 2023, 00:36:06
    Author     : gabyg
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Oradores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="servlets.SvUsuarios" %>
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
        <link rel="icon" type="image/x-icon" href="media/codoacodo.png">
        <!-- fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet"> 
        <!-- title -->
        <title>Conf Bs As</title>
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
                                <a class="nav--link" href="index.jsp#oradores">Los oradores</a>
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


        <main>
            <!-- Cards-menu -->
            <div class="cards-title">
                <p>CONOCE A LOS</p>
                <h3>ORADORES</h3>
            </div>

            <div class="cards-menu container">
                <div class="row gap-4">
                    <div id= "card1" class= "ease-animation show-clickable col-12 col-sm-8 col-md">
                        <div class="ease-animation ">

                            <div class="row">
                                <div class="col text-center">
                                    <img src="Imgs/steve.jpg" id="card1-image" class="semiCircle imagen" alt="...">
                                </div>
                                <div id="card1-text" class="col hide">
                                    <span class="badge text-bg-warning">JavaScript</span>
                                    <span class="badge text-bg-info text-white">React</span>
                                    <h3>Steve Jobs</h3>
                                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus explicabo veniam cumque nostrum ex accusantium ad magni, nam reiciendis voluptatum beatae laborum eius porro? Delectus laborum qui hic quam eveniet?</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="card2" class="ease-animation show-clickable col-12 col-sm-8 col-md">
                        <div class="ease-animation ">
                            <div class="row">
                                <div class="col text-center">
                                    <img src="Imgs/bill.jpg" id="card2-image" class="semiCircle imagen" alt="...">
                                </div>
                                <div id="card2-text" class="col hide">
                                    <span class="badge text-bg-warning">JavaScript</span>
                                    <span class="badge text-bg-info text-white">React</span>
                                    <h3>Bill Gates</h3>
                                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus explicabo veniam cumque nostrum ex accusantium ad magni, nam reiciendis voluptatum beatae laborum eius porro? Delectus laborum qui hic quam eveniet?</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="card3" class="ease-animation show-clickable col-12 col-sm-8 col-md">
                        <div class="ease-animation ">

                            <div class="row">
                                <div class="col text-center">
                                    <img src="Imgs/ada.jpeg" id="card3-image" class="semiCircle imagen" alt="...">
                                </div>
                                <div id="card3-text" class="col hide">
                                    <span class="badge text-bg-secondary">Negocios</span>
                                    <span class="badge text-bg-danger">Startups</span>
                                    <h3>Ada Lovelace</h3>
                                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus explicabo veniam cumque nostrum ex accusantium ad magni, nam reiciendis voluptatum beatae laborum eius porro? Delectus laborum qui hic quam eveniet?</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
            <div class="cards-title">
                <p>ORADORES</p>
                <h3>ANOTADOS</h3>
            </div>
            <!-- JAVA -->

            <div class="container-fluid ">
                <div class="row g-6">
                    <%
                        List<Oradores> listaOradores = (List) request.getSession().getAttribute("listaOradores");
                        int cont = 1;
                        for (Oradores usu : listaOradores) {
                    %>
                    <div class="col-12 col-sm-6 col-md-4 mt-3">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title text-center">Presentador: <%=usu.getApellido().toUpperCase()%> <%=usu.getNombre().toUpperCase()%></h5>
                                <p class="card-text">Tema: <%=usu.getComentario()%> </p>
                            </div>
                        </div>
                    </div>
                    <%cont = cont + 1;%>
                    <% }%>
                </div>
            </div>
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
        <script src="oradores.js"></script> 

    </body>
</html>