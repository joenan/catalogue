package com.nandom.app.controller;

import com.nandom.app.entities.Userprofile;
import com.nandom.app.service.AppService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    @Autowired
    AppService service;

    private final Userprofile Userprofile = null;

    String successMessage = " <div class=\"alert alert-success alert-dismissible\" role=\"alert\">\n"
            + "                                <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n"
            + "                                <strong>Sign up Successful!</strong> You can now login and write the assessment.\n"
            + "                            </div>";

    String failureMessage = " <div class=\"alert alert-success alert-dismissible\" role=\"alert\">\n"
            + "                                <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n"
            + "                                <strong>Signup Failed!</strong> Try again.\n"
            + "                            </div>";

    String failedLogin = " <div class=\"alert alert-warning alert-dismissible\" role=\"alert\">\n"
            + "                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n"
            + "                            <strong>Login Failed!</strong> Check your email and password again.\n"
            + "                        </div>";

    // String answer = null;
    @GetMapping("/")
    public String getQuestions() {
        return "index/loginform";
    }

    @GetMapping("/login")
    public String getLogin(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("password") String password, ModelMap model) {
        Userprofile u = service.getUserService().findByEmailAndPassword(email, password);

        if (u == null) {
            model.addAttribute("loginError", failedLogin);
            return "index/loginform";
        }

        if (u.getUsertype().equals("Existing Cataloguer")) {
            HttpSession session = request.getSession(false);
            session.setAttribute("user", u);
            session.setMaxInactiveInterval(1000000000);
            return "dashboard/existingusersdashboard";
        }

        HttpSession session = request.getSession(false);
        session.setAttribute("user", u);
        session.setMaxInactiveInterval(1000000000);

        return "dashboard/dashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        System.out.println("logout()");
        HttpSession httpSession = request.getSession(false);
        httpSession.setAttribute("user", null);
        //httpSession.invalidate();
        return "index/loginform";
    }

    @GetMapping("/signup")
    public String getSignUpForm(ModelMap model) {
        model.addAttribute("user", new Userprofile());
        return "index/recruitform";
    }

    @PostMapping("/saveSignup")
    public String savegnUpForm(@ModelAttribute("Userprofile") Userprofile Userprofile, ModelMap model) {
        Userprofile u = service.getUserService().save(Userprofile);
        if (u == null) {
            model.addAttribute("outputMessage", failureMessage);
            model.addAttribute("user", new Userprofile());
            return "index/recruitform";
        }
        model.addAttribute("outputMessage", successMessage);
        model.addAttribute("user", new Userprofile());
        return "index/recruitform";
    }

}
