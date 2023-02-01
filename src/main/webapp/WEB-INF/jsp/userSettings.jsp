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

<div class="container mt-5">
    <div class="row">
        <div class="col-lg-4 pb-5">
            <!-- Account Sidebar-->
            <jsp:include page="userMenu.jsp"/>
        </div>
        <!-- Profile Settings-->
        <div class="col-lg-8 pb-5">
            <form class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-fn">Nome</label>
                        <c:if test="${utente.nome!=null}">
                            <input class="form-control" type="text" id="account-fn" placeholder=${utente.nome} required="">
                        </c:if>
                        <c:if test="${utente.nome==null}">
                            <input class="form-control" type="text" id="account-fn" placeholder="Nome" required="">
                        </c:if>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-ln">Cognome</label>
                        <c:if test="${utente.cognome!=null}">
                        <input class="form-control" type="text" id="account-ln" placeholder="${utente.cognome}" required="">
                        </c:if>
                        <c:if test="${utente.cognome==null}">
                            <input class="form-control" type="text" id="account-fn" placeholder="Cognome" required="">
                        </c:if>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-email">Nuova E-mail</label>
                        <c:if test="${utente.email!=null}">
                            <c:if test="${utente.google_id!=0}">
                                <input disabled class="form-control" type="text" id="account-email" placeholder=${utente.email} required="">
                            </c:if>
                        </c:if>
                        <c:if test="${utente.email!=null}">
                            <c:if test="${utente.google_id==0}">
                                <input class="form-control" type="text" id="account-email" placeholder=${utente.email} required="">
                            </c:if>
                        </c:if>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-pass">Nuova Password</label>
                        <input class="form-control" type="password" id="account-pass">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-confirm-pass">Conferma Password</label>
                        <input class="form-control" type="password" id="account-confirm-pass">
                    </div>
                </div>
                <div class="col-12">
                    <hr class="mt-2 mb-3">
                    <div class="d-flex flex-wrap justify-content-between align-items-center">
                        <button class="btn btn-style-1 btn-primary" type="button" data-toast="" data-toast-position="topRight" data-toast-type="success" data-toast-icon="fe-icon-check-circle" data-toast-title="Success!" data-toast-message="Your profile updated successfuly.">Update Profile</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<footer>
    <jsp:include page="footer.jsp"/>
</footer>
</html>