package org.example.sweater.repos;

import org.example.sweater.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserRepo extends JpaRepository<User, UUID> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
