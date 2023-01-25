function aggiungiNelCarrello(nomeProdotto)
{
    $.ajax(
        {
            type:"POST",
            url:"/aggiungiNelCarrello",
            contentType: "application/json",
            data: JSON.stringify(nomeProdotto),
            success: function()
            {

            }
        })
}