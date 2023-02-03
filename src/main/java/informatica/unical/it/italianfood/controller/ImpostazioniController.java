package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
public class ImpostazioniController
{
    @PostMapping("doUpdate")
    public String aggiornaUtente(HttpServletRequest req, HttpServletResponse res, @RequestParam String nome,@RequestParam String cognome,@RequestParam String nuovaPassword,@RequestParam String confermaPassword) throws SQLException
    {
        if(!nuovaPassword.equals(confermaPassword))
            return "userSettings";

        ArrayList<String> data=new ArrayList<>();
        data.add(nuovaPassword);
        data.add(nome);
        data.add(cognome);

        Utente u=(Utente)req.getSession().getAttribute("utente");
        if(DatabaseJDBC.getInstance().getUtenteDao().update(u.getEmail(),data))
            res.setStatus(HttpServletResponse.SC_OK);

        res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
        return "userSettings";
    }
}
