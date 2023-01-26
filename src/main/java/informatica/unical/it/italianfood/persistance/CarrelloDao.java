package informatica.unical.it.italianfood.persistance;


import informatica.unical.it.italianfood.model.Carrello;

import java.sql.SQLException;
import java.util.ArrayList;

public interface CarrelloDao
{
    public boolean inserisciNelCarrello(String email,String nomeProdotto) throws SQLException;
    public ArrayList<Carrello> prelevaCarrello(String emailUtente)throws  SQLException;
}
