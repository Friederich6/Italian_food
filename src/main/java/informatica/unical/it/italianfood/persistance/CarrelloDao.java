package informatica.unical.it.italianfood.persistance;


import java.sql.SQLException;

public interface CarrelloDao
{
    public boolean inserisciNelCarrello(String email,String nomeProdotto) throws SQLException;
}
