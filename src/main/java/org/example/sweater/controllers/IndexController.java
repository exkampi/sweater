package org.example.sweater.controllers;

import org.example.sweater.entities.Message;
import org.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class IndexController {

    @Autowired
    private MessageRepo messageRepo;

    @GetMapping("/")
    public String index(Model model) {
        Iterable<Message> messages = messageRepo.findAll();
        model.addAttribute("messages", messages);
        return "index";
    }

    @PostMapping("filter")
    public String filter(@RequestParam String tag, Model model) {
        if (tag == null || tag.isEmpty()) {
            index(model);
            return "index";
        }

        List<Message> messages = messageRepo.findByTag(tag);
        model.addAttribute("messages", messages);
        return "index";
    }
}
