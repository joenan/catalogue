package com.nandom.app.repository;

import com.nandom.app.entities.Userprofile;
import org.springframework.data.repository.CrudRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserprofileRepository extends CrudRepository<Userprofile, Integer> {

    @Query("select u from Userprofile u where u.email = :email AND u.password = :password")
    Userprofile findUserByEmailAndPassword(@Param("email") String email, @Param("password") String password);

    @Query("select u from Userprofile u where u.email = ?1 AND u.password = ?2")
    Userprofile findByEmailAndPassword(String email, String password);

}
