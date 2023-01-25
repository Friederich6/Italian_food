package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Ricetta;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.cloudinary.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.spi.XmlWriter;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@RestController
public class RicercaController
{
    @PostMapping("/effettuaRicerca")
    public ArrayList<Ricetta> ricerca(HttpServletResponse res, @RequestBody String parola) throws SQLException
    {
        parola = parola.replaceAll("\"", "");
        ArrayList<Ricetta> ricette = DatabaseJDBC.getInstance().getRicettaDao().cercaEPrelevaRicette(parola);

        res.setStatus(HttpServletResponse.SC_OK);
        return ricette;
    }
}
