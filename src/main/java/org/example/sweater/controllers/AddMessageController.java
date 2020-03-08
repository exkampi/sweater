package org.example.sweater.controllers;

import org.example.sweater.entities.Message;
import org.example.sweater.entities.User;
import org.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class AddMessageController {

    @Autowired
    private MessageRepo messageRepo;

    @Value("${upload.path}")
    private String uploadPath;

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
            @RequestParam("file") MultipartFile file,
            Model model
    ) throws IOException {
        Message message = new Message(text, tag, user);

        if (file != null && !file.isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            StringBuilder resultFilename = new StringBuilder(UUID.randomUUID().toString());
            resultFilename.append(".").append(file.getOriginalFilename());

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            message.setFilename(String.valueOf(resultFilename));
        }

        messageRepo.save(message);
        allMessages(model);
        return "addMessage";
    }

}
