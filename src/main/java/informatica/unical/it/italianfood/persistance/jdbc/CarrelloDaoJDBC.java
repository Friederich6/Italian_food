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

            p=connection.prepareStatement("UPDATE carrello SET quantita=? WHERE emailutente=? AND nomeprodotto=?");
            p.setInt(1,q);
            p.setString(2,email);
            p.setString(3,nomeProdotto);
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

        while(r.next())
            contenuto.add(new Carrello(r.getString("nomeprodotto"),r.getInt("quantita"),r.getDouble("prezzo")));

        return contenuto;

    }

    @Override
    public void svuotaCarrello(String emailUtente) throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("SELECT* FROM carrello WHERE emailUtente=?");
        p.setString(1,emailUtente);
        ResultSet r=p.executeQuery();
        while(r.next())
        {
            PreparedStatement p1=connection.prepareStatement("SELECT* FROM prodotto where nome=?");
            p1.setString(1,r.getString("nomeprodotto"));
            ResultSet r1=p1.executeQuery();
            r1.next();
            PreparedStatement p2=connection.prepareStatement("UPDATE prodotto SET disponibilità=? where nome=?");
            p2.setInt(1,r1.getInt("disponibilità")-r.getInt("quantita"));
            p2.setString(2,r.getString("nomeprodotto"));
            p2.executeUpdate();
        }
        p=connection.prepareStatement("DELETE FROM carrello where emailUtente=?");
        p.setString(1,emailUtente);
        p.executeUpdate();
    }

    @Override
    public void eliminaArticolo(String nomeProdotto, String emailUtente) throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("DELETE FROM carrello WHERE emailUtente=? AND nomeprodotto=?");
        p.setString(1,emailUtente);
        p.setString(2,nomeProdotto);
        p.executeUpdate();
    }
}
