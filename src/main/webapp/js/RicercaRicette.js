
    function ricerca()
    {
        var parola = document.getElementById("parolaDaCercare").value;
            $.ajax(
                {
                    type:"POST",
                    url:"/effettuaRicerca",
                    contentType: "application/json",
                    data: JSON.stringify(parola),
                    success:function(ricette)
                    {
                        var index=0;
                        while(index!==ricette.length)
                        {
                            $("#modal").after(creaRicetta(ricette[index++]));
                        }
                    }
                })
    }

function creaRicetta(ricetta)
{
    var section=document.createElement("section");

    section.innerHTML="<section style='background-color: #F8F9FA;margin-top: 10px' class=\"search-result-item\">\n" +
        "            <a class=\"image-link\" href=\"#\"><img class=\"image\" src=\"image/dummy.jpg\">\n" +
        "            </a>\n" +
        "            <div  class=\"search-result-item-body\">\n" +
        "                <div class=\"row\">\n" +
        "                    <div class=\"col-sm-9\">\n" +
        "                        <h4 class=\"search-result-item-heading\"><a href='http://localhost:8081/visualizza?id="+ricetta.id+"'>"+ricetta.nomeRicetta+"</a>\n" +
        "                        <p class=\"info\">"+ricetta.emailUtente+"</p>\n" +
        "                        <p class=\"description\">"+ricetta.descrizioneRicetta+"</p>\n" +
        "                    </div>\n" +
        "                    <div class=\"col-sm-3 text-align-center\">\n" +
        "                        <p class=\"value3 mt-sm\">"+"Dificolta: "+ricetta.difficolta+"</p>\n" +
        "                        <p class=\"fs-mini text-muted\">"+ricetta.categoria+"</p>\n" +
        "                    </div>\n" +
        "                </div>\n" +
        "            </div>\n" +
        "        </section>";
    return section;
}