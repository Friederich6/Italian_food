<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Italian Food</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/home.js" > </script>

</head>
<body>

<jsp:include page="modal.jsp"/>

<jsp:include page="menuBar.jsp"/>
<link rel="stylesheet" href="css/style.css" type="text/css"/>

<!--descrizione home-->
<div class="contenitor_home">
    <div class="home">
        <h1 style="font-family: Algerian;">Segui una buona alimentazione?</h1>
        <h3>Quando si parla dei benefici di una corretta alimentazione, ci si sofferma quasi sempre sugli effetti riguardanti il peso corporeo. C’è molto di più! Le nostre scelte alimentari, anche se spesso non ce ne rendiamo conto, possono influenzare anche la salute del sistema nervoso. Quali sono gli alimenti che aiutano a mantenerla? Come muoversi per quanto riguarda l’integrazione? Sfoglia il nostro sito e scopri le migliori ricette per una buona alimentazione.</h3>

    </div>
</div>

<!--navbar-->

<div class="flex-container" id="navbar">
    <div class="flex-item">
        <a class="sub-item" href="#antipasti">Antipasti</a>
    </div>
    <div class="flex-item">
        <a class="sub-item" href="#primi">Primi</a>
    </div>
    <div class="flex-item">
        <a class="sub-item" href="#secondi">Secondi</a>
    </div>
    <div class="flex-item">
        <a class="sub-item" href="#contorni">Contorni</a>
    </div>
    <div class="flex-item">
        <a class="sub-item" href="#dolci">Dolci</a>
    </div>
</div>

<div >
    <picture>
        <div class="sfondo">
            <img src="image/gourmet.jpg" style="border-radius: 16px" width="80%">
            <h2 >Ricette di stagione</h2>
            <p > Sorprendi la tua metà con i muffin di San Valentino</p>

        </div>
    </picture>

</div>


<!--Slide card-->

<div id="carouselExampleControls" class="carousel d-none d-sm-block" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="antipasti">I nostri Antipasti</h3>
        <div class="carousel-item active antipasti">
            <div class="card-deck">
                <div class="card">
                    <img src="image/antipasto1.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="image/antipasto2.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="image/antipasto3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item antipasti">
            <div class="card-deck">
                <div class="card">
                    <img src="image/antipasto4.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/antipasto5.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/antipasto6.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item  antipasti">
            <div class="card-deck">
                <div class="card">
                    <img src="image/antipasto7.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/antipasto8.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/antipasto9.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <a class="carousel-control-prev" onclick="plusSlides(-1,0)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon " aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
    <a class="carousel-control-next " onclick="plusSlides(1,0)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
</div>

<div id="carouselExampleControlsSmallScreen" class="carousel d-block d-sm-none" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="AntipastiSmall">I nostri Antipasti</h3>
        <div class="carousel-item active antipastiS">
            <div class="card">
                <img src="image/antipasto1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto5.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto6.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto7.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto8.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item antipastiS">
            <div class="card">
                <img src="image/antipasto9.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" onclick="plusSlides(-1,5)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="prev">
            <span class="carousel-control-prev-icon " aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
        <a class="carousel-control-next " onclick="plusSlides(1,5)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
    </div>
</div>


<div id="carouselExampleControls" class="carousel d-none d-sm-block" data-ride="carousel">
    <div class="carousel-inner" >
        <h3 class="style_title" id="primi">I nostri Primi</h3>
        <div class="carousel-item active primi">
            <div class="card-deck">
                <div class="card">
                    <img src="image/primi1.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/primi2.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/primi3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item  primi">
            <div class="card-deck">
                <div class="card">
                    <img src="image/primi4.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/primi5.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/primi6.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item  primi">
            <div class="card-deck">
                <div class="card">
                    <img src="image/primi7.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/primi8.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/primi9.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <a class="carousel-control-prev" onclick="plusSlides(-1,1)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon " aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
    <a class="carousel-control-next " onclick="plusSlides(1,1)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
</div>

<div id="carouselExampleControlsSmallScreen" class="carousel d-block d-sm-none" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="PrimiSmall">I nostri Antipasti</h3>
        <div class="carousel-item active primiS">
            <div class="card">
                <img src="image/primi1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi5.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi6.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi7.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi8.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item primiS">
            <div class="card">
                <img src="image/primi9.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" onclick="plusSlides(-1,6)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="prev">
            <span class="carousel-control-prev-icon " aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
        <a class="carousel-control-next " onclick="plusSlides(1,6)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
    </div>
</div>


<div id="carouselExampleControls" class="carousel d-none d-sm-block" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="secondi">I nostri Secondi</h3>
        <div class="carousel-item active secondi">
            <div class="card-deck">
                <div class="card">
                    <img src="image/secondi1.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/secondi2.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/secondi3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item secondi">
            <div class="card-deck">
                <div class="card">
                    <img src="image/secondi4.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/secondi5.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/secondi6.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item secondi">
            <div class="card-deck">
                <div class="card">
                    <img src="image/secondi7.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/secondi8.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/secondi9.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <a class="carousel-control-prev" onclick="plusSlides(-1,2)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon " aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
    <a class="carousel-control-next " onclick="plusSlides(1,2)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
</div>

<div id="carouselExampleControlsSmallScreen" class="carousel d-block d-sm-none" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="SecondiSmall">I nostri Antipasti</h3>
        <div class="carousel-item active secondiS">
            <div class="card">
                <img src="image/secondi1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi5.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi6.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi7.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi8.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item secondiS">
            <div class="card">
                <img src="image/secondi9.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" onclick="plusSlides(-1,7)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="prev">
            <span class="carousel-control-prev-icon " aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
        <a class="carousel-control-next " onclick="plusSlides(1,7)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
    </div>
</div>


<div id="carouselExampleControls" class="carousel d-none d-sm-block" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="contorni">I nostri Contorni</h3>
        <div class="carousel-item active contorni">
            <div class="card-deck">
                <div class="card">
                    <img src="image/contorno1.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/contorno2.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/contorno3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item contorni">
            <div class="card-deck">
                <div class="card">
                    <img src="image/contorno4.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/contorno5.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/contorno6.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item contorni">
            <div class="card-deck">
                <div class="card">
                    <img src="image/contorno7.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/contorno8.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/contorno9.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <a class="carousel-control-prev" onclick="plusSlides(-1,3)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon " aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
    <a class="carousel-control-next " onclick="plusSlides(1,3)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
</div>

<div id="carouselExampleControlsSmallScreen" class="carousel d-block d-sm-none" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="ContorniSmall">I nostri Antipasti</h3>
        <div class="carousel-item active contorniS">
            <div class="card">
                <img src="image/contorno1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno5.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno6.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno7.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno8.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item contorniS">
            <div class="card">
                <img src="image/contorno9.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" onclick="plusSlides(-1,8)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="prev">
            <span class="carousel-control-prev-icon " aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
        <a class="carousel-control-next " onclick="plusSlides(1,8)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
    </div>
</div>


<div id="carouselExampleControls" class="carousel d-none d-sm-block" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="dolci">I nostri Dolci</h3>
        <div class="carousel-item active dolci">
            <div class="card-deck">
                <div class="card">
                    <img src="image/dolci1.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/dolci2.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/dolci3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item dolci">
            <div class="card-deck">
                <div class="card">
                    <img src="image/dolci4.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/dolci5.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/dolci6.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-item dolci">
            <div class="card-deck">
                <div class="card">
                    <img src="image/dolci7.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/dolci8.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>
                <div class="card">
                    <img src="image/dolci9.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <a class="carousel-control-prev" onclick="plusSlides(-1,4)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon " aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
    <a class="carousel-control-next " onclick="plusSlides(1,4)" role="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden"></span>
    </a>
</div>

<div id="carouselExampleControlsSmallScreen" class="carousel d-block d-sm-none" data-ride="carousel">
    <div class="carousel-inner">
        <h3 class="style_title" id="DolciSmall">I nostri Antipasti</h3>
        <div class="carousel-item active dolciS">
            <div class="card">
                <img src="image/dolci1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci5.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci6.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci7.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci8.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <div class="carousel-item dolciS">
            <div class="card">
                <img src="image/dolci9.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" onclick="plusSlides(-1,9)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="prev">
            <span class="carousel-control-prev-icon " aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
        <a class="carousel-control-next " onclick="plusSlides(1,9)" role="button" data-mdb-target="#carouselBasicExampleSmallScreen" data-mdb-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden"></span>
        </a>
    </div>
</div>


</body>
<footer>
    <jsp:include page="footer.jsp"/>
</footer>


</html>

