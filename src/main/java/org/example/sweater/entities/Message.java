package org.example.sweater.entities;

import javax.persistence.*;
import java.util.UUID;

@Entity
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    private String text;
    private String tag;
    private String filename;

    @ManyToOne
    @JoinColumn(name = "usr_id")
    private User author;

    public Message() {
    }

    public Message(String text, String tag) {
        this.text = text;
        this.tag = tag;
    }

    public Message(String text, String tag, User author) {
        this.text = text;
        this.tag = tag;
        this.author = author;
    }

    public String getAuthorName() {
        return this.author != null ? author.getUsername() : "<none>";
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

}
