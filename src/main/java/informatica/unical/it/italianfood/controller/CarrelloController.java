package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Prodotto;
import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@RestController
public class CarrelloController
{
    @PostMapping("/aggiungiNelCarrello")
    public void aggiungiNelCarrello(HttpServletResponse res,HttpServletRequest req, @RequestBody String nomeProdotto) throws SQLException
    {
        Utente u = (Utente) req.getSession().getAttribute("utente");
        if(DatabaseJDBC.getInstance().getCarrelloDao().inserisciNelCarrello(u.getEmail(),nomeProdotto))
            res.setStatus(HttpServletResponse.SC_OK);
        else
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
    }
}
