package informatica.unical.it.italianfood.persistance.jdbc;

import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.UtenteDao;
import org.springframework.security.crypto.bcrypt.BCrypt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UtenteDaoJDBC implements UtenteDao
{

    Connection connection;
    public UtenteDaoJDBC(Connection connection){this.connection=connection;}

    @Override
    public boolean Update(Utente utente) throws SQLException
    {
        if(connection==null || connection.isClosed())
            return false;

        PreparedStatement p=connection.prepareStatement("INSERT INTO utente VALUES(?,?,?,?,?);");
        p.setString(1,utente.getEmail());
        p.setString(2,BCrypt.hashpw(utente.getPassword(), BCrypt.gensalt(12)));
        p.setString(3, utente.getNome());
        p.setString(4,utente.getCognome());
        p.setString(5,utente.getGoogle_id());
        p.executeUpdate();
        return true;
    }


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
