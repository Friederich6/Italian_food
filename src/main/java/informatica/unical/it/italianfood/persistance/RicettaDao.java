package informatica.unical.it.italianfood.persistance;

import informatica.unical.it.italianfood.model.Ricetta;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public interface RicettaDao
{
    public boolean inserisciRicetta(Ricetta ricetta) throws SQLException;
    public ArrayList<Ricetta> cercaEPrelevaRicette(String parola)throws SQLException;
    public Ricetta cercaEPrelevaRicetteById(int id)throws SQLException;
}
