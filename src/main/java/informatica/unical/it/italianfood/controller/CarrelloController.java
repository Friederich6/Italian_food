package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Prodotto;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CarrelloController
{
    @PostMapping("/aggiungiNelCarrello")
    public void aggiungiNelCarrello(@RequestBody String prodotto)
    {
        System.out.println(prodotto);
    }
}
