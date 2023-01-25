package informatica.unical.it.italianfood.persistance.jdbc;


import informatica.unical.it.italianfood.persistance.Database;
import informatica.unical.it.italianfood.persistance.ProdottoDao;
import informatica.unical.it.italianfood.persistance.RicettaDao;
import informatica.unical.it.italianfood.persistance.UtenteDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseJDBC implements Database
{
    private static DatabaseJDBC instance = null;

    Connection connection;

    public static DatabaseJDBC getInstance()
    {
        if (instance == null)
            instance = new DatabaseJDBC();
        return instance;
    }

    private DatabaseJDBC()
    {
        try
        {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/italian_food", "postgres", "postgres");
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public boolean checkConnection() {
        try {
            if(connection == null || connection.isClosed())
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

    public Connection getConnection() {
        return connection;
    }
    @Override
    public UtenteDao getUtenteDao()
    {
        return new UtenteDaoJDBC(connection);
    }
    @Override
    public RicettaDao getRicettaDao()
    {
        return new RicettaDaoJDBC(connection);
    }

    @Override
    public ProdottoDao getProdottoDao()
    {
        return new ProdottoDaoJDBC(connection);
    }
}
