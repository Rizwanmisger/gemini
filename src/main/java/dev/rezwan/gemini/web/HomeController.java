package dev.rezwan.gemini.web;

import gg.jte.models.runtime.JteModel;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public JteModel index(@AuthenticationPrincipal OAuth2User principal) {
        return new JteModel("index.jte").with("principal", principal);
    }
}
