package informatica.unical.it.italianfood.persistance.jdbc;

import informatica.unical.it.italianfood.model.Prodotto;
import informatica.unical.it.italianfood.persistance.ProdottoDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProdottoDaoJDBC implements ProdottoDao
{
    Connection connection;
    public ProdottoDaoJDBC(Connection connection){this.connection=connection;}

    @Override
    public boolean aggiungiProdotto(Prodotto prodotto) throws SQLException
    {
        if(connection.isClosed() || connection==null)
            return false;

        PreparedStatement p=connection.prepareStatement("INSERT INTO prodotto VALUES(?,?,?,?)");
        p.setString(1,prodotto.getNomeProdotto());
        p.setInt(2,prodotto.getDisponibilita());
        p.setString(3,prodotto.getScadenza());
        p.setDouble(4,prodotto.getPrezzo());
        p.executeUpdate();
        return true;
    }

    @Override
    public ArrayList<Prodotto> recuperaProdotti() throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("SELECT* FROM prodotto");
        ResultSet r =p.executeQuery();
        ArrayList<Prodotto> prodotti=new ArrayList<>();
        while(r.next())
        {
            prodotti.add(new Prodotto(r.getString("nome"),r.getInt("disponibilità"),r.getString("scadenza"),r.getDouble("prezzo")));
        }
        return prodotti;
    }
}
