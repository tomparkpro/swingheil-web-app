package pro.tompark.swingheil.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

/**
 * Created by TomPark on 2018. 5. 21.
 *
 * @author tom.hyunung.park@gmail.com
 * github : http://github.com/tomparkpro
 */
@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "redirect:/event/list";
    }

    @GetMapping("/home")
    public String home(Model model) {
        model.addAttribute("title", "SwingHeil Home!");
        model.addAttribute("time", new Date().toString());
        return "home";
    }
}
