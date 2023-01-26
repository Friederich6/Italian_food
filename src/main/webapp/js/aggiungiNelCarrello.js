function aggiungiNelCarrello(nomeProdotto)
{
    console.log(nomeProdotto);
    $.ajax(
        {
            type:"POST",
            url:"/aggiungiNelCarrello",
            contentType: "application/json",
            data: JSON.stringify(nomeProdotto),
            success: function()
            {
                alert("Prodotto correttamente aggiunto nel carrello!");
            }
        })
}