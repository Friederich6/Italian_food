function caricaProdotti()
{
    $.ajax(
        {
            type:"POST",
            url:"/recuperaProdotti",
            success:function (prodotti)
            {
                var index=0;
                while(index!==prodotti.length)
                {
                    $("#inserisciCard").append(creaProdotto(prodotti[index++]));
                }
            }
        })
}

function creaProdotto(prodotto)
{
    var div=document.createElement("div");

    div.innerHTML="<div class=\"col mb-5\">\n" +
        "                        <div class=\"card h-100\">\n" +
        "                            <div class=\"badge bg-dark text-white position-absolute\" style=\"top: 0.5rem; right: 0.5rem\">Scade: "+prodotto.scadenza+"</div>\n"+
        "                            <!-- Product image-->\n" +
        "                            <img class=\"card-img-top\" src=\"image/dummy.jpg\" alt=\"...\" />\n" +
        "                            <!-- Product details-->\n" +
        "                            <div class=\"card-body p-4\">\n" +
        "                                <div class=\"text-center\">\n" +
        "                                    <!-- Product name-->\n" +
        "                                    <h5 class=\"fw-bolder\">"+prodotto.nomeProdotto+"</h5>\n" +
        "                                    <!-- Product price-->\n" +
        "                                    &euro;"+prodotto.prezzo+"\n" +
        "                                    <div>Articoli rimanenti: "+prodotto.disponibilita+"</div>\n"+
        "                                </div>\n" +
        "                            </div>\n" +
        "                            <!-- Product actions-->\n" +
        "                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n" +
        "                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Aggiungi</a></div>\n" +
        "                            </div>\n" +
        "                        </div>\n" +
        "                    </div>";
    return div;
}