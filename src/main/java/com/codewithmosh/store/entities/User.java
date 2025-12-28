package com.codewithmosh.store.entities;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
@Entity
@Table(name="users")
public class User{
    @Id
    @Column(nullable = false,name = "id")
    private long id;
    @Column(nullable = false,name = "name")
    private String name;
    @Column(nullable = false,name = "email")
    private String email;
    @Column(nullable = false,name = "password")
    private String password;
}
