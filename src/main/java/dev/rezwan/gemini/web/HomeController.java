package dev.rezwan.gemini.web;

import dev.rezwan.gemini.models.Template;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index(@AuthenticationPrincipal OAuth2User principal, Model model) {
        List<Template> templates = new ArrayList<>();
        for (int i = 1; i <= 9; i++) {
            templates.add(new Template("Template " + i, "A short description of the template.", i));
        }
        model.addAttribute("principal", principal);
        model.addAttribute("templates", templates);
        return "index";
    }
}
