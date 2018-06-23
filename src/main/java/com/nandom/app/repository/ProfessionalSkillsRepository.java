/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Professionalskills;
import com.nandom.app.entities.Userprofile;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface ProfessionalSkillsRepository extends CrudRepository<Professionalskills, Integer> {

    @Query("select c from Professionalskills c where c.userid=?1 AND c.status = ?2")
    List<Professionalskills> findByStatus(Userprofile user, String status);
}
