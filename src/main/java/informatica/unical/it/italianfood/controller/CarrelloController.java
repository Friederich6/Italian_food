package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Carrello;
import informatica.unical.it.italianfood.model.Prodotto;
import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;

@RestController
public class CarrelloController
{
    @PostMapping("/aggiungiNelCarrello")
    public void aggiungiNelCarrello(HttpServletResponse res,HttpServletRequest req, @RequestBody String nomeProdotto) throws SQLException
    {
        Utente u = (Utente) req.getSession().getAttribute("utente");
        if(DatabaseJDBC.getInstance().getCarrelloDao().inserisciNelCarrello(u.getEmail(),nomeProdotto.replaceAll("\"","")))
            res.setStatus(HttpServletResponse.SC_OK);
        else
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
    }

    @PostMapping("/caricaCarrello")
    public ArrayList<Carrello> caricaCarrello(HttpServletRequest req,HttpServletResponse res) throws SQLException
    {
        Utente u=(Utente)req.getSession().getAttribute("utente");
        ArrayList<Carrello> contenuto=DatabaseJDBC.getInstance().getCarrelloDao().prelevaCarrello(u.getEmail());

        if(contenuto==null)
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
        else
            res.setStatus(HttpServletResponse.SC_OK);

        return contenuto;
    }

    @PostMapping("/svuotaCarrello")
    public void svuotaCarrello(HttpServletRequest req) throws SQLException
    {
        Utente u=(Utente)req.getSession().getAttribute("utente");
        DatabaseJDBC.getInstance().getCarrelloDao().svuotaCarrello(u.getEmail());
    }

    @PostMapping("/eliminaArticolo")
    public void eliminaArticolo(HttpServletRequest req,@RequestBody String nomeProdotto) throws SQLException
    {
        nomeProdotto=nomeProdotto.replaceAll("\"","");
        Utente u=(Utente)req.getSession().getAttribute("utente");
        DatabaseJDBC.getInstance().getCarrelloDao().eliminaArticolo(nomeProdotto,u.getEmail());
    }
}
