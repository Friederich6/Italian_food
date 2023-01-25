package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Ricetta;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@RestController
public class RicettaController
{
    @PostMapping("/caricaRicetta")
    public Ricetta ric(HttpServletResponse res, @RequestBody int id) throws SQLException
    {
       Ricetta ricetta=DatabaseJDBC.getInstance().getRicettaDao().cercaEPrelevaRicetteById(id);
       res.setStatus(HttpServletResponse.SC_OK);
       return ricetta;
    }
}
