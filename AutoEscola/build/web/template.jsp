<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="boostrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>        
        <div class="container" style="width: 1500px; margin-left: auto; margin-right: auto">            
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="images/banner0.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/banner1.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/banner2.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-around" id="navbarSupportedContent">
                    <ul class="navbar-nav navbar-collapse justify-content-around">                        
                        <li class="nav-item">
                            <a class="nav-item" href="control">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-item" href="#">Horário das Aulas</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-item dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Área do Aluno
                            </a>                            
                            <c:if test="${sessionScope.user == null}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="control?ac=matricula">Pré-Matrícula</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="control?ac=login">Login</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="control?ac=matricula">Minhas Aulas</a>
                                    <a class="dropdown-item" href="#">Meus Dados</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="control?ac=logout">Logout</a>
                                </div>
                            </c:if>
                        </li>
                        <li class="nav-item">
                            <a class="nav-item" href="#">Contato</a>
                        </li>                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-item dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Administração
                            </a>                            
                            <c:if test="${sessionScope.user == null}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="control?ac=adminLogin">Login</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="control?ac=matricula">Controle de Alunos</a>
                                    <a class="dropdown-item" href="control?ac=matricula">Controle de Professores</a>
                                    <a class="dropdown-item" href="#">Aulas Práticas</a>
                                    <a class="dropdown-item" href="#">Aulas Teóricas</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="control?ac=logout">Logout</a>
                                </div>
                            </c:if>
                        </li>
                    </ul>
                </div>
            </nav>
            
            <c:if test="${sessionScope.user != null}">
                <div style="margin-top: 2%">
                    <h4>Bem Vindo ${sessionScope.user.nome}</h4>                 
                </div>
            </c:if>

            <section id="main-content">
                <section class="wrapper site-min-height">
                    <div class="row mt">
                        <div class="col-lg-12">

                            <c:if test="${param.page == null}">
                                <jsp:include page="pages/home.jsp"/>
                            </c:if>
                            <c:if test="${param.page != null}">
                                <jsp:include page="pages/${param.page}.jsp"/>
                            </c:if>                      

                        </div>
                    </div>
                </section>
            </section>


            <footer class="page-footer font-small blue">
                <div class="footer-copyright text-center py-3">© 2018 Copyright:
                    <a href="https://mdbootstrap.com/bootstrap-tutorial/"> Adriano Werpel e Daniel Sam</a>
                </div>
            </footer>
        </div>

        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="boostrap/js/bootstrap.min.js" type="text/javascript"></script>

    </body>
</html>
