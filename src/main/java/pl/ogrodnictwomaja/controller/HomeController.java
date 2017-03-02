package pl.ogrodnictwomaja.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by PC on 2016-11-09.
 */

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "logout",
            required = false) String logout, Model model) {
        if (error != null) {
            model.addAttribute("error", "Błędny login lub hasło");
        }

        if (logout != null) {
            model.addAttribute("msg", "Zostałaś/eś poprawnie wylogowany");
        }

        return "login";
    }

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }

    @RequestMapping("/aboutUs")
    public String aboutUs() {
        return "aboutUs";
    }

    @RequestMapping("/privacyPolicy")
    public String privacyPolicy() {
        return "privacyPolicy";
    }

    @RequestMapping("/terms")
    public String terms() {
        return "terms";
    }
}
