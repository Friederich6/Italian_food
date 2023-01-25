package informatica.unical.it.italianfood.persistance;

import java.sql.SQLException;
import informatica.unical.it.italianfood.model.Utente;

public interface UtenteDao
{
    public boolean Register(Utente utente) throws SQLException;

    public Utente Login(String email,String password) throws SQLException;
    public boolean CheckByEmail(String email)throws SQLException;
    public boolean CheckByGoogleId(String id) throws  SQLException;
    public Utente GoogleLogin(String id) throws SQLException;
}
