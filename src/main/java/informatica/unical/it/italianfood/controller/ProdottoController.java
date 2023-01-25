package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Prodotto;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;

@RestController
public class ProdottoController
{
    @PostMapping("/inviaProdotto")
    public void inviaProdotto(HttpServletResponse res, @RequestBody Prodotto prodotto) throws SQLException
    {
        DatabaseJDBC.getInstance().getProdottoDao().aggiungiProdotto(prodotto);
    }

    @PostMapping("/recuperaProdotti")
    public ArrayList<Prodotto> recuperaProdotti(HttpServletResponse res) throws SQLException
    {
        ArrayList<Prodotto> prodotti=DatabaseJDBC.getInstance().getProdottoDao().recuperaProdotti();
        if(prodotti==null)
        {
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
            return null;
        }
        res.setStatus(HttpServletResponse.SC_OK);
        return prodotti;
    }
}
