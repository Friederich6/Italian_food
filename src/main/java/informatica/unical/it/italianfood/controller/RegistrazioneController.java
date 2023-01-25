package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import informatica.unical.it.italianfood.persistance.jdbc.UtenteDaoJDBC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@Controller
public class RegistrazioneController
{
    @PostMapping("/doRegister")
    public void registraUtente(HttpServletResponse res, @RequestBody Utente utente) throws SQLException
    {
        if(DatabaseJDBC.getInstance().getUtenteDao().Register(utente))
            res.setStatus(HttpServletResponse.SC_OK);
        else
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
    }
}
