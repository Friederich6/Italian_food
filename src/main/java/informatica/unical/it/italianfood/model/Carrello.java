package informatica.unical.it.italianfood.model;

public class Carrello
{
    private String nomeProdotto="";
    private int quantita=0;
    private double prezzo=0.00;

    public Carrello(String nomeProdotto,int quantita,double prezzo)
    {
        this.nomeProdotto=nomeProdotto;
        this.quantita=quantita;
        this.prezzo=prezzo;
    }

    public String getNomeProdotto()
    {
        return nomeProdotto;
    }
    public int getQuantita()
    {
        return quantita;
    }

    public double getPrezzo()
    {
        return prezzo;
    }
}
