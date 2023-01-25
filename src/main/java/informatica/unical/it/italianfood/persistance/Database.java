package informatica.unical.it.italianfood.persistance;

import informatica.unical.it.italianfood.persistance.jdbc.RicettaDaoJDBC;
import informatica.unical.it.italianfood.persistance.jdbc.UtenteDaoJDBC;

import java.sql.Connection;

public interface Database
{
    public UtenteDao getUtenteDao();

    public RicettaDao getRicettaDao();

    public ProdottoDao getProdottoDao();
    public CarrelloDao getCarrelloDao();
}
