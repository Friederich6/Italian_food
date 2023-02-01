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

<script type="text/javascript" src="js/RicercaRicette.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script type="text/javascript" src="js/nuovaRicetta.js" > </script>

<div class="container mt-5" >
    <div class="row" >
        <div class="col-lg-4 pb-5">
            <!-- Account Sidebar-->
            <jsp:include page="userMenu.jsp"/>
        </div>
        <!-- Nuova ricetta-->
        <div class="col-lg-8 pb-5">
            <form>
                <div>
                    <input type="text" id="emailRicetta" hidden class="form-control" placeholder=${utente.email}>
                    <label class="form-label" for="nomeRicetta">Nome ricetta</label>
                    <input type="text" id="nomeRicetta" class="form-control"/>
                </div>
                <div class="form-outline">
                    <label class="form-label" for="descrizioneRicetta">Descrizione ricetta</label>
                    <textarea class="form-control" id="descrizioneRicetta" rows="4"></textarea>
                </div>
                <div class="form-outline">
                    <label class="form-label" for="preparazioneRicetta">Preparazione ricetta</label>
                    <textarea class="form-control" id="preparazioneRicetta" rows="4"></textarea>
                </div>
                <div class="form-outline">
                    <label class="form-label" for="ingredientiRicetta">Inserisci gli ingredienti che hai usato e le loro quantità</label>
                    <textarea class="form-control" id="ingredientiRicetta" rows="4"></textarea>
                </div>
                <div>
                    <label class="form-label" for="calorie">Calorie</label>
                    <input type="number" id="calorie" class="form-control"/>
                </div>
                <div class="comb0">
                    <select id="difficolta"class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="border-radius: 10px;border-color: #bbbbbb;">
                        <option selected>Seleziona la difficoltà in base alle capacità tecniche richieste per la preparazione</option>
                        <option value="1">Facile</option>
                        <option value="2">Medio</option>
                        <option value="3">Difficile</option>
                    </select>
                </div>
                <div class="comb0">
                    <select id="tipoPortata" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="border-radius: 10px;border-color: #bbbbbb;">
                        <option selected>Seleziona il tipo di portata</option>
                        <option value="1">Antipasto</option>
                        <option value="2">Primo</option>
                        <option value="3">Secondo</option>
                        <option value="4">Contorno</option>
                        <option value="5">Dolce</option>
                    </select>
                </div>
                <div style="margin-top: 40px;">
                    <div class="mb-4 d-flex justify-content-center">
                        <img src="image/upload.png" id="immagineUpload"
                             alt="example placeholder" style="width: 150px;" />
                    </div>
                    <div class="d-flex justify-content-center">
                        <div class="btn btn-primary btn-rounded" >
                            <label class="form-label text-white m-1" for="immagine">Scegli un immagine</label>
                            <input type="file" class="form-control d-none" id="immagine"/>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center">
                        <div class="btn btn-primary btn-rounded" style="margin-top: 20px">
                            <label class="form-label text-white m-1" for="inviaRicetta">Invia la ricetta</label>
                            <input type="button" class="form-control d-none" id="inviaRicetta" />
                        </div>
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