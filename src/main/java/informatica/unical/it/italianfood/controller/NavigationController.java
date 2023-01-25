package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class NavigationController
{
    @GetMapping("/")
    public String homePage()
    {
        return "index";
    }
    @GetMapping("/login")
    public String loginPage()
    {
        return "login";
    }

    @GetMapping("/userSettings")
    public String userSettings()
    {
        return "userSettings";
    }

    @GetMapping("/nuova-ricetta")
    public String newRicetta() {
        return "nuovaRicetta";
    }

    @GetMapping("/carrello")
    public String apriCarrello(){
        return "carrello";
    }
    @GetMapping("/ricerca")
    public String ricerca()
    {
        return "ricerca";
    }

    @GetMapping("/aggiungiProdotto")
    public String aggiungiProdotto()
    {
        return "aggiungiProdotto";
    }

    @GetMapping("/visualizza")
    public String visualizzaRicetta()
    {
        return "visualizza";
    }

    @GetMapping("/shop")
    public String shop()
    {
        return "shop";
    }

    @GetMapping("/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session= request.getSession();
        session.invalidate();
        response.sendRedirect("/");
    }

}


