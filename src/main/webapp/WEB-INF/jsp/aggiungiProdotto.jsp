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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <jsp:include page="menuBar.jsp"/>
</head>
<body style="background-color: white;">
<div style="margin-left:60px;margin-right: 400px;">
<link rel="stylesheet" href="css/style.css" type="text/css"/>

<h1>Aggiungi Prodotto</h1>
<div>
    <label class="form-label" for="nomeProdotto">Nome prodotto</label>
    <input type="text" id="nomeProdotto" class="form-control" />
</div>
<div>
    <label class="form-label" for="disponibilita">Disponibilità</label>
    <input type="text" id="disponibilita" class="form-control" />
</div>
<div>
    <label class="form-label" for="scadenza">Scadenza</label>
    <input type="text" id="scadenza" class="form-control" />
</div>
<div>
    <label class="form-label" for="prezzo">Prezzo</label>
    <input type="text" id="prezzo" class="form-control" />
</div>
<div style="margin-top: 10px" class="btn btn-primary btn-rounded">
    <label class="form-label text-white m-1" for="salva">Salva</label>
    <input type="button" onclick=aggiungiProdotto() class="form-control d-none" id="salva" />
</div>
</div>
<script type="text/javascript" src="js/aggiungiProdotto.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>
<footer>
    <jsp:include page="footer.jsp"/>
</footer>
</html>