package org.example.sweater.repos;

import org.example.sweater.entities.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.UUID;

public interface MessageRepo extends CrudRepository<Message, UUID> {
    List<Message> findByTag(String tag);
}
