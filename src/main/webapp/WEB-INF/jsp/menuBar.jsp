<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Italian_Food</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script type="text/javascript" src="js/RicercaRicette.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="resize: inline" >
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <div class="dropdown">
      <button class="navbar-toggler" type="button"  id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <img src="image/menuTendina.png" height="20">
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" >
        <a class="dropdown-item" href="/">Home</a>
        <c:if test="${utente.nome!=null}"> <a class="dropdown-item" href="/userSettings">Impostazioni</a> </c:if>
        <c:if test="${utente.nome==null}"> <a class="dropdown-item" href="/login">Impostazioni</a> </c:if>
        <c:if test="${utente.nome!=null}"> <a class="dropdown-item" href="/nuova-ricetta">Crea ricetta</a> </c:if>
        <c:if test="${utente.nome==null}"> <a class="dropdown-item" href="/login">Crea ricetta</a> </c:if>
        <c:if test="${utente.admin==true}"> <a class="dropdown-item" href="/aggiungiProdotto">Aggiungi prodotto</a> </c:if>
        <c:if test="${utente.nome!=null}"> <a class="dropdown-item" href="/shop">Negozio</a> </c:if>
        <c:if test="${utente.nome==null}"> <a class="dropdown-item" href="/login">Negozio</a> </c:if>
        <c:if test="${utente.nome!=null}"> <a class="dropdown-item" href="/carrello">Carrello</a> </c:if>
        <c:if test="${utente.nome==null}"> <a class="dropdown-item" href="/login">Carrello</a> </c:if>
        <c:if test="${utente!=null}"><a class="dropdown-item" href="/logout">Logout</a></c:if>
      </div>
    </div>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- Navbar brand -->
      <a class="navbar-brand mt-2 mt-lg-0" href="/">
        <img
                src="image/LogoTrasparente.png"
                height="60"
                alt="Italian_Food Logo"
                loading="lazy"
        />
      </a>
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <c:if test="${utente.nome!=null}"> <a class="nav-link" href="/userSettings">Impostazioni</a> </c:if>
          <c:if test="${utente.nome==null}"> <a class="nav-link" href="/login">Impostazioni</a> </c:if>
        </li>
        <li class="nav-item">
          <c:if test="${utente.nome!=null}"> <a class="nav-link" href="/nuova-ricetta">Crea ricetta</a> </c:if>
          <c:if test="${utente.nome==null}"> <a class="nav-link" href="/login">Crea ricetta</a> </c:if>
        </li>
        <li class="nav-item">
          <c:if test="${utente.admin==true}"> <a class="nav-link" href="/aggiungiProdotto">Aggiungi prodotto</a> </c:if>
        </li>
        <li class="nav-item">
          <c:if test="${utente.nome!=null}"> <a class="nav-link" href="/shop">Negozio</a> </c:if>
          <c:if test="${utente.nome==null}"> <a class="nav-link" href="/login">Negozio</a> </c:if>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/carrello">Carrello</a>
        </li>
        <li class="nav-item">
          <c:if test="${utente!=null}"><a class="nav-link" href="/logout">Logout</a></c:if>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->

    <!-- Right elements -->
    <div class="d-flex align-items-center" >
      <!-- Icon -->
      <a class="text-reset me-3" href="#">
        <i class="fas fa-shopping-cart"></i>
      </a>

      <div class="input-group padding_ricerca" >
        <input id="parolaDaCercare" type="search" class="form-control rounded" placeholder="Cerca" aria-label="search" aria-describedby="search-addon"/>
          <button id="cerca" onclick="ricerca()" type="button" class="btn btn-outline-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Cerca</button>

      </div>

      <div>
        <c:if test="${utente.nome!=null}">
          <label>${utente.nome} ${utente.cognome}</label>
        </c:if>
      </div>

      <div>
        <c:if test="${utente.nome!=null}"><a href=/userSettings id="navbarDropdownMenuAvatar" role="button"> <img src="image/profilo.png" height="40" alt="profilo" loading="lazy"/>  </c:if>
        <c:if test="${utente.nome==null}"><a href=/login id="navbarDropdownMenuAvatar" role="button" style="display: inline-flex;align-items: center"> LOGIN <img src="image/profilo.png" height="40" alt="profilo" loading="lazy" style="margin-left: 10px;"/></c:if>
        </a>
      </div>

        </div>
      </div>

      <!-- Notifications -->
    </div>


      <!-- Avatar -->

    <!-- Right elements -->
  <!-- Container wrapper -->
</nav>
<!-- Navbar -->
</body>
</html>