package informatica.unical.it.italianfood.model;

public class Utente implements java.io.Serializable{

    private String nome = null;
    private String cognome = null;
    private String email = null;
    private String password = null;
    private boolean admin = false;
    private boolean bannato = false;
    private String google_id;

    public Utente()
    {}

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public String getGoogle_id() {
        return google_id;
    }

    public boolean isBannato() {
        return bannato;
    }

    public void setBannato(boolean bannato) {
        this.bannato = bannato;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }
}
