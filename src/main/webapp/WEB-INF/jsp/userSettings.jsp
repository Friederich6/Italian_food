<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Italian Food</title>
    <link rel="stylesheet"  type="text/css"  href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <jsp:include page="menuBar.jsp"/>
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script type="text/javascript" src="js/impostazioni.js" > </script>

<div class="container mt-5">
    <div class="row">
        <div class="col-lg-4 pb-5">
            <!-- Account Sidebar-->
            <jsp:include page="userMenu.jsp"/>
        </div>
        <!-- Profile Settings-->
        <div class="col-lg-8 pb-5">
            <form class="row" id="update_form" method="post" action="doUpdate">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="nome">Nome</label>
                            <input name="nome" class="form-control" type="text" id="nome" placeholder=${utente.nome}>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="cognome">Cognome</label>
                        <input name="cognome" class="form-control" type="text" id="cognome" placeholder="${utente.cognome}">
                    </div>
                </div>
                <c:if test="${utente.google_id==null}">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="nuovaPassword">Nuova Password</label>
                            <input name="nuovaPassword" class="form-control" type="password" id="nuovaPassword">
                        </div>
                    </div>
                </c:if>

                <c:if test="${utente.google_id!=null}">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="nuovaPassword">Nuova Password</label>
                            <input disabled name="nuovaPassword" class="form-control" placeholder="Password Google" type="password" id="nuovaPassword">
                        </div>
                    </div>
                </c:if>

                <c:if test="${utente.google_id==null}">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="confermaPassword">Conferma Password</label>
                            <input name="confermaPassword" class="form-control" type="password" id="confermaPassword">
                        </div>
                    </div>
                </c:if>

                <c:if test="${utente.google_id!=null}">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="confermaPassword">Conferma Password</label>
                            <input disabled name="confermaPassword" class="form-control" type="password" id="confermaPassword">
                        </div>
                    </div>
                </c:if>
                <div class="col-12">
                    <hr class="mt-2 mb-3">
                    <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <button class="btn btn-style-1 btn-primary" type="submit" id="updateProfilo" data-toast="" data-toast-position="topRight">Aggiorna Profilo</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    document.getElementById("updateProfilo").addEventListener("click",function ()
    {
        var psw=$("#nuovaPassword").val();
        var cnfpsw=$("#confermaPassword").val();
        if(psw!==cnfpsw)
            alert("Attenzione! Le due password non coincidono.");
    })
</script>
</body>
<footer>
    <jsp:include page="footer.jsp"/>
</footer>
</html>