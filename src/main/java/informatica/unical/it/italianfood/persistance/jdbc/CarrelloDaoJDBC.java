package informatica.unical.it.italianfood.persistance.jdbc;

import informatica.unical.it.italianfood.persistance.CarrelloDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CarrelloDaoJDBC implements CarrelloDao
{
    Connection connection;
    public CarrelloDaoJDBC(Connection connection){this.connection=connection;}
    @Override
    public boolean inserisciNelCarrello(String email,String nomeProdotto) throws SQLException
    {
        if(connection.isClosed() || connection==null)
            return false;

        PreparedStatement p=connection.prepareStatement("SELECT* FROM carrello where emailutente=? AND nomeprodotto=?");
        p.setString(1,email);
        p.setString(2,nomeProdotto);
        ResultSet r=p.executeQuery();
        if(r.next())
        {
            int q=r.getInt("quantita");
            ++q;
            p=connection.prepareStatement("UPDATE carrello SET quantita=? WHERE emailutente=? AND nomeprodotto=?");
            p.setInt(1,q);
            p.setString(2,email);
            p.setString(3,nomeProdotto);
            p.executeUpdate();
            return true;
        }


        p=connection.prepareStatement("INSERT INTO carrello VALUES(?,?,DEFAULT)");
        p.setString(1,email);
        p.setString(2,nomeProdotto);
        p.executeUpdate();

        return true;
    }
}
