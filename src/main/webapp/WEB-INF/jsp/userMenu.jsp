<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet"  type="text/css"  href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<div class="author-card pb-3">
    <div class="author-card-profile">
        <div
                class="author-card-avatar"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
        </div>
        <div>
            <label id="menuEmail" style="margin-top: 60px;">${utente.nome} ${utente.cognome}</label>
        </div>
        <div class="author-card-details">
            <h5 class="author-card-name text-lg"></h5><span class="author-card-position"></span>
        </div>
    </div>
</div>
<div class="wizard">
    <nav class="list-group list-group-flush">
        <a class="list-group-item" href="/userSettings">
            <div class="d-flex justify-content-between align-items-center">
                <div><i class="fe-icon-shopping-bag mr-1 text-muted"></i>
                    <div class="d-inline-block font-weight-medium text-uppercase">Impostazioni</div>
                </div>
            </div>
        </a>
        <a class="list-group-item" id="nuovaRicetta" href="/nuova-ricetta"><i class="fe-icon-user text-muted"></i>Nuova ricetta</a>
        <a class="list-group-item" href="#"><i class="fe-icon-map-pin text-muted"></i>Raccolte</a>
        <a class="list-group-item" href="/logout">
            <div class="d-flex justify-content-between align-items-center">
                <div><i class="fe-icon-heart mr-1 text-muted"></i>
                    <div class="d-inline-block font-weight-medium text-uppercase">Logout</div>
                </div>
            </div>
        </a>
    </nav>
</div>
</body>
</html>