package informatica.unical.it.italianfood.controller;

import informatica.unical.it.italianfood.model.Utente;
import informatica.unical.it.italianfood.persistance.jdbc.DatabaseJDBC;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@Controller
public class GoogleRegController
{
    @PostMapping("/checkExistsId")
    public void googleReg(HttpServletRequest req,HttpServletResponse res, @RequestBody String id) throws SQLException, IOException, ServletException {
        if(DatabaseJDBC.getInstance().getUtenteDao().CheckByGoogleId(id))
        {
            Utente utente=DatabaseJDBC.getInstance().getUtenteDao().GoogleLogin(id);
            HttpSession session = req.getSession(true);
            session.setAttribute("utente", utente);
            res.setStatus(HttpServletResponse.SC_OK);
        }
        else
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);

    }

    @PostMapping("/registerGoogleUser")
    public void googleRegg(HttpServletRequest req,HttpServletResponse res, @RequestBody Utente utente) throws SQLException, IOException
    {
        if(DatabaseJDBC.getInstance().getUtenteDao().Register(utente))
        {
            HttpSession session = req.getSession(true);
            session.setAttribute("utente", utente);
            res.setStatus(HttpServletResponse.SC_OK);
            res.sendRedirect("/");
        }
        else
            res.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
    }
}
