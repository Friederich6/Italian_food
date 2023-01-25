package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.concurrent.TimeUnit;

@Controller
public class LoginController
{
    @GetMapping("/registrazione")
    public String loginPage()
    {
        return "registrazione";
    }

    @PostMapping("/doLogin")
    public String accedi(HttpServletRequest req, HttpServletResponse res, @RequestParam String email, @RequestParam String pass) throws SQLException, IOException, InterruptedException {
        Utente utente=DatabaseJDBC.getInstance().getUtenteDao().Login(email,pass);
        if(utente!=null)
        {
            HttpSession session = req.getSession(true);
            session.setAttribute("utente", utente);
            res.setStatus(HttpServletResponse.SC_OK);
            res.sendRedirect("/");
        }
        else
        {
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
        }
        TimeUnit.MILLISECONDS.sleep(2300L);
        return"login";
    }

}
