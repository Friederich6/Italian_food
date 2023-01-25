function Prodotto(nomeProdotto,disponibilita,scadenza,prezzo)
{
    this.nomeProdotto=nomeProdotto;
    this.disponibilita=disponibilita;
    this.scadenza=scadenza;
    this.prezzo=prezzo;
}

function aggiungiProdotto()
{
    var nome=$("#nomeProdotto").val();
    var disponibilita=$("#disponibilita").val();
    var scadenza=$("#scadenza").val();
    var prezzo=$("#prezzo").val();

    var prodotto=new Prodotto(nome,disponibilita,scadenza,prezzo);
    $.ajax(
        {
            type:"POST",
            url:"/inviaProdotto",
            contentType: "application/json",
            data: JSON.stringify(prodotto)
        })
}