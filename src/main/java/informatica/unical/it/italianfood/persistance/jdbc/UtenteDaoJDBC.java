package informatica.unical.it.italianfood.persistance.jdbc;

import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.UtenteDao;
import org.springframework.security.crypto.bcrypt.BCrypt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UtenteDaoJDBC implements UtenteDao
{

    Connection connection;
    public UtenteDaoJDBC(Connection connection){this.connection=connection;}


    @Override
    public boolean Register(Utente utente) throws SQLException
    {
        if(connection==null || connection.isClosed())
            return false;

        PreparedStatement p=connection.prepareStatement("INSERT INTO utente VALUES(?,?,?,?,?,?,?);");
        p.setString(1,utente.getEmail());
        p.setString(2,BCrypt.hashpw(utente.getPassword(), BCrypt.gensalt(12)));
        p.setString(3, utente.getNome());
        p.setString(4,utente.getCognome());
        p.setBoolean(5,false);
        p.setBoolean(6,false);
        p.setString(7,utente.getGoogle_id());
        p.executeUpdate();
        return true;
    }

    @Override
    public boolean update(String emailUtente,ArrayList<String> data) throws SQLException
    {
        if(connection.isClosed() || connection==null)
            return false;


        PreparedStatement p=connection.prepareStatement("SELECT* FROM utente WHERE email=?");
        p.setString(1,emailUtente);
        ResultSet r=p.executeQuery();
        r.next();
        p=connection.prepareStatement("UPDATE utente SET password=?,nome=?,cognome=? WHERE email=?");
        p.setString(4,emailUtente);

        p.setString(1,BCrypt.hashpw(data.get(0), BCrypt.gensalt(12)));
        p.setString(2,data.get(1));
        p.setString(3,data.get(2));

        if(data.get(0).equals(""))
        {
            p.setString(1,r.getString("password"));
        }
        if(data.get(1).equals(""))
        {
            p.setString(2,r.getString("nome"));
        }
        if(data.get(2).equals(""))
        {
            p.setString(3,r.getString("cognome"));
        }
        p.executeUpdate();

        return true;
    }

    @Override
    public Utente Login(String email, String password) throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("SELECT* from utente WHERE email=?");
        p.setString(1,email);
        ResultSet r=p.executeQuery();
        boolean result = false;
        Utente utente=new Utente();
        if(r.next())
        {
            String pass = r.getString("password");
            result = BCrypt.checkpw(password, pass);
            if(result)
            {
                utente.setNome(r.getString("nome"));
                utente.setCognome(r.getString("cognome"));
                utente.setEmail(r.getString("email"));
                utente.setBannato(r.getBoolean("bannato"));
                utente.setAdmin(r.getBoolean("admin"));
                return  utente;
            }
        }
        p.close();

        return null;
    }
    @Override
    public Utente GoogleLogin(String id) throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("SELECT* from utente WHERE google_id=?");
        p.setString(1,id);
        ResultSet r=p.executeQuery();
        Utente utente=new Utente();
        if(r.next())
        {
                utente.setNome(r.getString("nome"));
                utente.setCognome(r.getString("cognome"));
                utente.setEmail(r.getString("email"));
                utente.setBannato(r.getBoolean("bannato"));
                utente.setAdmin(r.getBoolean("admin"));
                utente.setGoogle_id(r.getString("google_id"));
                return utente;
        }
        p.close();

        return null;
    }

    @Override
    public boolean CheckByEmail(String email) throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("SELECT* FROM utente WHERE email=?");
        p.setString(1,email);
        ResultSet r=p.executeQuery();
        return r.next();
    }

    @Override
    public boolean CheckByGoogleId(String id) throws SQLException
    {
        PreparedStatement p=connection.prepareStatement("SELECT* FROM utente where google_id=?");
        p.setString(1,id);
        ResultSet r=p.executeQuery();
        return r.next();
    }
}
