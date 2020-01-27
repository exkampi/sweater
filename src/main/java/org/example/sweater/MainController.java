package org.example.sweater;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class MainController {

    @GetMapping
    public String main(HttpServletResponse httpServletResponse) throws IOException {        //dawddadwasdsdsd
        httpServletResponse.sendRedirect("/greeting");
        return null;
    }
}
