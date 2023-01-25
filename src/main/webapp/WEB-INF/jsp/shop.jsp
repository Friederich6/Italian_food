<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Italian Food</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <jsp:include page="menuBar.jsp"/>
    </head>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <body style="background-color: white" onload=caricaProdotti()>
        <!-- Header-->
        <header class=" py-5" style="background-color: red">
            <div class="container px-4 px-lg-5 my-5" >
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Negozio ingredienti</h1>
                    <p class="lead fw-normal text-white-50 mb-0" style="color: white">Compra gli ingredienti per comporre le tue ricette!</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div id="inserisciCard" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer>
            <jsp:include page="footer.jsp"/>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script type="text/javascript" src="js/shop.js" > </script>
    </body>
</html>
