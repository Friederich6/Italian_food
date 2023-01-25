package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Ricetta;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@Controller
public class NuovaRicettaController
{
    @PostMapping("/inviaRicetta")
    public void inviaRicetta(HttpServletResponse res, @RequestBody Ricetta ricetta) throws SQLException
    {
        if(DatabaseJDBC.getInstance().getRicettaDao().inserisciRicetta(ricetta))
        {
            res.setStatus(HttpServletResponse.SC_OK);
        }
        else
        {
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
        }
    }
}
