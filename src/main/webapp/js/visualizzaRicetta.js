
const urlParams = new URLSearchParams(window.location.search);
const greetingValue = urlParams.get('id');
function visualizzaRicetta()
{
    $.ajax(
        {
            type:"POST",
            url:"/caricaRicetta",
            contentType: "application/json",
            data: JSON.stringify(greetingValue),
            success:function(ricetta)
            {
                document.getElementById("nomeRicetta").innerText=ricetta.nomeRicetta;
                document.getElementById("descrizioneRicetta").innerText=ricetta.descrizioneRicetta;
                document.getElementById("imgRicetta").src=ricetta.thumbnail;
                document.getElementById("ingredientiRicetta").innerText=ricetta.ingredientiRicetta;
                document.getElementById("preparazioneRicetta").innerText=ricetta.preparazioneRicetta;
                document.getElementById("categoria").innerText="Categoria:"+ricetta.categoria;
                document.getElementById("difficolta").innerText="DifficoltÃ :"+ricetta.difficolta;
                document.getElementById("calorie").innerText="Calorie:"+ricetta.calorie;
            }
        })
}


