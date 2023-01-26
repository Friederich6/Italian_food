package informatica.unical.it.italianfood.persistance.jdbc;

import informatica.unical.it.italianfood.model.Carrello;
import informatica.unical.it.italianfood.persistance.CarrelloDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CarrelloDaoJDBC implements CarrelloDao
{
    Connection connection;
    public CarrelloDaoJDBC(Connection connection){this.connection=connection;}
    @Override
    public boolean inserisciNelCarrello(String email,String nomeProdotto) throws SQLException
    {
        if(connection.isClosed() || connection==null)
            return false;

        PreparedStatement p=connection.prepareStatement("SELECT* FROM prodotto WHERE nome=?");
        p.setString(1,nomeProdotto);
        ResultSet r=p.executeQuery();
        r.next();
        double prezzo=r.getDouble("prezzo");

        p=connection.prepareStatement("SELECT* FROM carrello where emailutente=? AND nomeprodotto=?");
        p.setString(1,email);
        p.setString(2,nomeProdotto);
        r=p.executeQuery();

        if(r.next())
        {
            int q=r.getInt("quantita");
            ++q;
            double pr=r.getDouble("prezzo");
            pr*=q;
            p=connection.prepareStatement("UPDATE carrello SET quantita=?, prezzo=? WHERE emailutente=? AND nomeprodotto=?");
            p.setInt(1,q);
            p.setDouble(2,pr);
            p.setString(3,email);
            p.setString(4,nomeProdotto);
            p.executeUpdate();
            return true;
        }


        p=connection.prepareStatement("INSERT INTO carrello VALUES(?,?,DEFAULT,?)");
        p.setString(1,email);
        p.setString(2,nomeProdotto);
        p.setDouble(3,prezzo);
        p.executeUpdate();

        return true;
    }

    @Override
    public ArrayList<Carrello> prelevaCarrello(String emailUtente) throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("SELECT* FROM carrello WHERE emailutente=?");
        p.setString(1,emailUtente);
        ResultSet r=p.executeQuery();

        ArrayList<Carrello> contenuto=new ArrayList<>();

        if(!r.next())
            return null;

        contenuto.add(new Carrello(r.getString("nomeprodotto"),r.getInt("quantita"),r.getDouble("prezzo")));
        return contenuto;

    }
}
