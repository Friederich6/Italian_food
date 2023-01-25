function aggiungiNelCarrello(suca)
{
    $.ajax(
        {
            type:"POST",
            url:"/aggiungiNelCarrello",
            contentType: "application/json",
            data: JSON.stringify(suca)
        })
    console.log(1)
}