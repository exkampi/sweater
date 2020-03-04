package org.example.sweater.controllers;

import org.example.sweater.entities.Message;
import org.example.sweater.entities.User;
import org.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AddMessageController {

    @Autowired
    private MessageRepo messageRepo;

    @GetMapping("/addMessage")
    public String allMessages(Model model) {
        Iterable<Message> messages = messageRepo.findAll();
        model.addAttribute("messages", messages);
        return "addMessage";
    }

    @PostMapping("/addMessage")
    public String addMessage(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag,
            Model model) {
        messageRepo.save(new Message(text, tag, user));
        allMessages(model);
        return "addMessage";
    }

}
