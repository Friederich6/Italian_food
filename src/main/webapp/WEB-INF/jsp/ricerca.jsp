<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="menuBar.jsp"/>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/ricerca.css" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script type="text/javascript" src="js/RicercaRicette.js"></script>
<script type="text/javascript" src="js/visualizzaRicetta.js"></script>

<div class="container">
    <div class="row ng-scope">
        <div id="prova" class="col-md-9 col-md-pull-3">

        </div>
    </div>
</div>
</body>

    <jsp:include page="footer.jsp"/>

</html>