package informatica.unical.it.italianfood.persistance;

import informatica.unical.it.italianfood.model.Prodotto;

import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;

public interface ProdottoDao
{
    public boolean aggiungiProdotto(Prodotto prodotto) throws SQLException;
    public ArrayList<Prodotto> recuperaProdotti() throws SQLException;
}
