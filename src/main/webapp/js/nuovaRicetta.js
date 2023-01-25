window.addEventListener("load", function ()
{
    document.getElementById("inviaRicetta").addEventListener("click", inviaRicetta);
});

function Ricetta(id,emailUtente,nomeRicetta,descrizioneRicetta,preparazioneRicetta,ingredientiRicetta,dataPubblicazione,categoria,segnalata,thumbnail,difficolta)
{
    this.id=id;
    this.emailUtente=emailUtente;
    this.nomeRicetta=nomeRicetta;
    this.descrizioneRicetta=descrizioneRicetta;
    this.preparazioneRicetta=preparazioneRicetta;
    this.ingredientiRicetta=ingredientiRicetta;
    this.dataPubblicazione=dataPubblicazione;
    this.categoria=categoria;
    this.segnalata=segnalata;
    this.thumbnail=thumbnail;
    this.difficolta=difficolta;
}

function inviaRicetta()
{
    var currentdate = new Date();

    var emailUtente=document.querySelector("#emailRicetta").placeholder;
    var nomeRicetta=document.querySelector("#nomeRicetta").value;
    var descrizione=$("#descrizioneRicetta").val();
    var preparazione=$("#preparazioneRicetta").val();
    var data="Data pubblicazione:" + currentdate.getDate() + "/"
    + (currentdate.getMonth()+1)  + "/"
    + currentdate.getFullYear();


    var immagine=document.querySelector("#immagine").files;

    var tipoPortataCombo=document.querySelector("#tipoPortata");
    var difficoltaCombo=document.querySelector("#difficolta");
    var ingredienti=$("#ingredientiRicetta").val();
    var tipoPortata = tipoPortataCombo.options[tipoPortataCombo.selectedIndex].text;
    var difficolta = difficoltaCombo.options[difficoltaCombo.selectedIndex].text;

    var ricetta=new Ricetta(null,emailUtente,nomeRicetta,descrizione,preparazione,ingredienti,data,tipoPortata,false,null,difficolta);

    $.ajax(
        {
            type:"POST",
            url:"/inviaRicetta",
            contentType: "application/json",
            data: JSON.stringify(ricetta)
        })
}