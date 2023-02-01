window.addEventListener("load",showSlides);


$('#toggle-search').on('click', function() {
    $('#searchBar').toggle('display: inline-block');
});

let slideIndex = [1,1,1,1,1,1,1,1,1,1];
let slideId = ["antipasti","primi","secondi","contorni","dolci","antipastiS","primiS","secondiS","contorniS","dolciS"]
showSlides(1, 0);
showSlides(1, 1);
showSlides(1, 2);
showSlides(1, 3);
showSlides(1, 4);
showSlides(1, 5);
showSlides(1, 6);
showSlides(1, 7);
showSlides(1, 8);
showSlides(1, 9);

function plusSlides(n, no) {
    showSlides(slideIndex[no] += n, no);
}

function showSlides(n, no)
{
    let i;
    let x = document.getElementsByClassName(slideId[no]);
    if (n > x.length) {slideIndex[no] = 1}
    if (n < 1) {slideIndex[no] = x.length}
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    x[slideIndex[no]-1].style.display = "block";
}

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

function creaRic(ricetta)
{
    var doc=document.createElement("div");
    doc.innerHTML="<div class=\"card\">\n" +
        "                    <img src=\"image/antipasto4.jpg\" class=\"card-img-top\" alt=\"...\">\n" +
        "                    <div class=\"card-body\">\n" +
        "                        <h5 class=\"card-title\">Card title</h5>\n" +
        "                        <p class=\"card-text\">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\n" +
        "                    </div>";
    return doc;
}

