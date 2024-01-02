<%-- 
    Document   : index
    Created on : 20 dic. 2023, 14:31:25
    Author     : gabyg
--%>

<%@page import="logica.Oradores"%>
<%@page import="java.util.List"%>
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
        <link rel="icon" type="image/x-icon" href="Imgs/codoacodo.png">
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
                    <a class="brand fs-5" href="#">Conf Bs As</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav--link nav-link-white" href="index.jsp">La conferencia</a>
                            </li>
                             <li class="nav-item ">
                                <a class="nav--link nav-link-white" onclick="update()" >Los oradores</a>  
                            </li>
                            <li class="nav-item">
                                <a class="nav--link nav-link-white" href="#lugares">El lugar y la fecha</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav--link nav-link-white" href="#convertite">Conviertete en orador</a>

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
            <!-- hero  -->
            <div id="carouselExampleSlidesOnly" class="carousel slide " data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="hero hero-item-1">
                            <h2>Conf Bs As</h2>
                            <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                            <div>
                                <a href="convertite.html"><button type="button" class="btn btn-outline-light me-2">Quiero ser orador</button></a>
                                <a href="tickets.html"><button type="button" class="btn btn-success">Comprar tickets</button></a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="hero hero-item-2">
                            <h2>Conf Bs As</h2>
                            <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                            <div>
                                <a href="convertite.html"><button type="button" class="btn btn-outline-light me-2">Quiero ser orador</button></a>
                                <a href="tickets.html"><button type="button" class="btn btn-success">Comprar tickets</button></a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="hero hero-item-3">
                            <h2>Conf Bs As</h2>
                            <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                            <div>
                                <a href="convertite.html"><button type="button" class="btn btn-outline-light me-2">Quiero ser orador</button></a>
                                <a href="tickets.html"><button type="button" class="btn btn-success">Comprar tickets</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Cards-menu -->
            <div class="cards-title">
                <p>CONOCE A LOS</p>
                <h3>ORADORES</h3>
            </div>

            <div class="cards-menu container" id="oradores">
                <div class="row gap-4">
                    <div class="card col-12 col-sm-8 col-md">
                        <img src="Imgs/steve.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="badge text-bg-warning">JavaScript</span>
                            <span class="badge text-bg-info text-white">React</span>
                            <h3>Steve Jobs</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus explicabo veniam cumque nostrum ex accusantium ad magni, nam reiciendis voluptatum beatae laborum eius porro? Delectus laborum qui hic quam eveniet?</p>
                        </div>
                    </div>

                    <div class="card col-12 col-sm-8 col-md">
                        <img src="Imgs/bill.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="badge text-bg-warning">JavaScript</span>
                            <span class="badge text-bg-info text-white">React</span>
                            <h3>Bill Gates</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati fugiat iste cumque fugit aliquid alias, accusantium et voluptates reiciendis ullam laudantium aut amet assumenda expedita illum enim modi tempore ipsum?</p>
                        </div>
                    </div>

                    <div class="card col-12 col-sm-8 col-md">
                        <img src="Imgs/ada.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="badge text-bg-secondary">Negocios</span>
                            <span class="badge text-bg-danger">Startups</span>
                            <h3>Ada Lovelace</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum ut quaerat obcaecati voluptatum architecto, assumenda debitis expedita vero sequi et sapiente nam nesciunt recusandae dicta nihil saepe libero sed temporibus!</p>
                        </div>
                    </div>
                </div>  
            </div>



            <!-- Places -->
            <div class="container-fluid places-container gx-0 " id="lugares">
                <div class="row gx-0">
                    <div class="col-12 col-md">
                        <img class="img-places" src="Imgs/honolulu.jpg" alt="">
                    </div>
                    <div class="col-12 col-md places-text px-3 py-3">
                        <h4>Bs As - Octubre</h4>
                        <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se referie al área urbana en la costa sureste de isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km² de superficie.)</p>
                        <button type="button" class="btn btn-outline-light">Conocé más</button>
                    </div>
                </div>
            </div>

            <!-- Form -->
            <div class="cards-title" id="convertite">
                <p>CONVIÉRTETE EN UN</p>
                <h3>ORADOR</h3>
                <p class="form-text">Anótate como orador para dar una <span>charla ignite</span>. Cuéntanos de que quiéres hablar!</p>
            </div>
            <form action="SvUsuarios" method="POST" onsubmit="return validateForm()">
                <div class="form">
                    <div class="row mt-2 mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Nombre" aria-label="First name" name="nombre" required>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Apellido" aria-label="Last name" name="apellido" required>
                        </div>
                    </div>
                    <div class="form-floating">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="comentario" required></textarea>
                        <label class="form-placeholder" for="floatingTextarea2">Sobre qué queres hablar?</label>
                    </div>
                    <p class="mb-3">Recuerda incluir un título para tu charla</p>
                    <button type="submit" class=" btn btn-success form-submit "  >Enviar</button>
                </div>
            </form>

            <div class="container-fluid d-flex justify-content-center align-items-center mt-5">
                <div class="col-6">
                    <div class="text-center">
                        <p>¿QUIERES VER LOS ORADORES?</p>
                        <h3>REGISTRADOS</h3>
                    </div>
                    <div>
                        <div class="container">
                            <div class="row">
                                <div class="col text-center">
                                    <form action="SvUsuarios" method="get" id="update">
                                        <button type="submit" class="btn btn-success form-submit">VER ORADORES REGISTRADOS</button>
                                    </form>
                                </div>
                            </div>
                        </div>
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
        <script src="index.js"></script>  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>        
    </body>
</html>