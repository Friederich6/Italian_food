function loadRecipes()
{
    $.ajax(
        {
            type:"POST",
            url:"/effettuaRicerca",
            contentType: "application/json",
            data: JSON.stringify(""),
            success: function(ricette)
            {
                var index=0;
                while (index++!==ricette.length)
                {
                    if(ricette[index].categoria==="Antipasto")
                    {
                        $("#antipasto").append(creaRic(ricette[index]));
                    }
                }
            }
        })
}

