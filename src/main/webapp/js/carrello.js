function caricaCarrello()
{
    $.ajax(
        {
            type:"POST",
            url:"/caricaCarrello",
            success:function(carrello)
            {
                var index=0;
                while(index!==carrello.length)
                {
                    $("#articolo_qui").append(creaCarrello(carrello[index++]));
                }
            }
        })
}
let totale=0;
function creaCarrello(carrello)
{
    let doc=document.createElement("div");

    totale=totale+carrello.prezzo*carrello.quantita;
    doc.innerHTML="<hr class=\"my-4\">\n" +
        "                                    <div class=\"row mb-4 d-flex justify-content-between align-items-center\">\n" +
        "                                        <div class=\"col-md-2 col-lg-2 col-xl-2\">\n" +
        "                                            <img\n" +
        "                                                    src=\"image/dummy.jpg\"\n" +
        "                                                    class=\"img-fluid rounded-3\" alt=\"Cotton T-shirt\">\n" +
        "                                        </div>\n" +
        "                                        <div class=\"col-md-3 col-lg-3 col-xl-3\">\n" +
        "                                            <h6 class=\"text-black mb-0\">"+carrello.nomeProdotto+"</h6>\n" +
        "                                        </div>\n" +
        "                                        <div class=\"col-md-3 col-lg-3 col-xl-2 d-flex\">\n" +
        "                                            <input readonly value="+carrello.quantita+"\n" +
        "                                                   class=\"form-control form-control-sm\" />\n" +
        "                                        </div>\n"+
        "                                        <div class=\"col-md-3 col-lg-2 col-xl-2 offset-lg-1\">\n" +
        "                                            <h6 class=\"mb-0\">&euro;"+parseFloat(carrello.prezzo*carrello.quantita).toFixed(2)+"</h6>\n" +
        "                                        </div>\n" +
        "                                        <div class=\"col-md-2 col-lg-2 col-xl-2 text-end\">\n" +
        "                                            <a> <button onclick=eliminaArticolo("+ '"' + carrello.nomeProdotto + '"' + ")" + " type=\"button\" class=\"btn btn-outline-dark\">Rimuovi</button></a>\n" +
        "                                        </div>\n" +
        "                                    </div>\n" +
        "                                    <hr class=\"my-4\">";
    document.getElementById("totale").innerText=parseFloat(totale).toFixed(2);
    return doc;
}

function svuotaCarrello()
{
    $.ajax(
        {
            type:"POST",
            url:"/svuotaCarrello"
        })
}

function eliminaArticolo(nome)
{
    $.ajax(
        {
            type:"POST",
            url:"/eliminaArticolo",
            contentType: "application/json",
            data: JSON.stringify(nome)
        })
    window.location.href="/carrello";
}