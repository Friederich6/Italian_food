package informatica.unical.it.italianfood.model;

public class Ricetta implements java.io.Serializable
{
    private int id=0;
    private String emailUtente="";
    private String nomeRicetta="";
    private String descrizioneRicetta="";
    private String preparazioneRicetta="";
    private String ingredientiRicetta="";
    private String dataPubblicazione="";
    private String categoria="";
    private boolean segnalata=false;
    private byte[] thumbnail=null;
    private String difficolta="";
    private int calorie=0;

    public Ricetta(int id,String emailUtente,String nomeRicetta,String descrizioneRicetta,String preparazioneRicetta,String dataPubblicazione,String categoria,boolean segnalata,byte[]thumbnail,String difficolta,String ingredientiRicetta,int calorie)
    {
        this.id=id;
        this.emailUtente=emailUtente;
        this.nomeRicetta=nomeRicetta;
        this.descrizioneRicetta=descrizioneRicetta;
        this.preparazioneRicetta=preparazioneRicetta;
        this.dataPubblicazione=dataPubblicazione;
        this.categoria=categoria;
        this.segnalata=segnalata;
        this.thumbnail=thumbnail;
        this.difficolta=difficolta;
        this.ingredientiRicetta=ingredientiRicetta;
        this.calorie=calorie;
    }

    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getEmailUtente()
    {
        return emailUtente;
    }
    public void setEmailUtente(String emailUtente)
    {
        this.emailUtente = emailUtente;
    }
    public String getNomeRicetta()
    {
        return nomeRicetta;
    }
    public void setNomeRicetta(String nomeRicetta)
    {
        this.nomeRicetta = nomeRicetta;
    }
    public String getDescrizioneRicetta()
    {
        return descrizioneRicetta;
    }
    public void setDescrizioneRicetta(String descrizioneRicetta)
    {
        this.descrizioneRicetta = descrizioneRicetta;
    }
    public String getPreparazioneRicetta()
    {
        return preparazioneRicetta;
    }
    public String getIngredientiRicetta()
    {
        return ingredientiRicetta;
    }
    public void setIngredientiRicetta(String ingredientiRicetta)
    {
        this.ingredientiRicetta=ingredientiRicetta;
    }
    public void setPreparazioneRicetta(String preparazioneRicetta)
    {
        this.preparazioneRicetta = preparazioneRicetta;
    }
    public String getDataPubblicazione()
    {
        return dataPubblicazione;
    }
    public void setDataPubblicazione(String dataPubblicazione)
    {
        this.dataPubblicazione = dataPubblicazione;
    }
    public String getCategoria()
    {
        return categoria;
    }
    public void setCategoria(String categoria)
    {
        this.categoria = categoria;
    }
    public boolean isSegnalata()
    {
        return segnalata;
    }
    public void setSegnalata(boolean segnalata)
    {
        this.segnalata = segnalata;
    }
    public byte[] getThumbnail()
    {
        return thumbnail;
    }
    public void setThumbnail(byte[] thumbnail)
    {
        this.thumbnail = thumbnail;
    }
    public String getDifficolta()
    {
        return difficolta;
    }
    public int getCalorie(){return calorie;}
    public void setDifficolta(String difficolta)
    {
        this.difficolta = difficolta;
    }
}
