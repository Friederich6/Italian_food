<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Italian Food</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
</head>

<body onload="loadRecipes()">
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/home.js" > </script>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.js"></script>
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

<h3 id="antipasti" class="style_title">I nostri antipasti</h3>

<div id="antipastiQua" class="grid-container">

</div>

<h3 id="primi" class="style_title">I nostri primi</h3>

<div id="primiQua" class="grid-container">

</div>

<h3 id="secondi" class="style_title">I nostri secondi</h3>

<div id="secondiQua" class="grid-container">

</div>

<h3 id="contorni" class="style_title">I nostri contorni</h3>

<div id="contorniQua" class="grid-container">

</div>

<h3 id="dolci" class="style_title">I nostri dolci</h3>

<div id="dolciQua" class="grid-container">

</div>

</body>
<footer>
    <jsp:include page="footer.jsp"/>
</footer>


</html>




