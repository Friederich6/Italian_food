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
                        document.getElementById("antipastiQua").append(creaCard(ricette[index]));
                    }
                    if(ricette[index].categoria==="Primo")
                    {
                        document.getElementById("primiQua").append(creaCard(ricette[index],"Primo"));
                    }
                    if(ricette[index].categoria==="Secondo")
                    {
                        document.getElementById("secondiQua").append(creaCard(ricette[index],"Primo"));
                    }
                    if(ricette[index].categoria==="Contorno")
                    {
                        document.getElementById("contorniQua").append(creaCard(ricette[index],"Primo"));
                    }
                    if(ricette[index].categoria==="Dolce")
                    {
                        document.getElementById("dolciQua").append(creaCard(ricette[index],"Primo"));
                    }
                }
            }
        })
}

function creaCard(ricetta)
{
    var card=document.createElement("div");
    card.className="grid-item";
    card.innerHTML= "<div class=\"card\" style=\"width: auto;\">\n" +
        "            <img style='height: 550px;' src='"+ricetta.thumbnail+"' class=\"card-img-top\" alt=\"...\">\n" +
        "            <div class=\"card-body\">\n" +
        "                <p class=\"card-text\">"+ricetta.nomeRicetta+"</p>\n" +
        "                <a href='http://localhost:8081/visualizza?id="+ricetta.id+"' class=\"btn btn-outline-dark\">Apri</a>\n" +
        "            </div>\n" +
        "        </div>\n" +
        "    </div>";
    return card;
}

