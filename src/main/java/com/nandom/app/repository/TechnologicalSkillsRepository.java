/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Technologicalskills;
import com.nandom.app.entities.Userprofile;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface TechnologicalSkillsRepository extends CrudRepository<Technologicalskills, Integer>{
    @Query("select c from Technologicalskills c where c.userid=?1 AND c.status = ?2")
    List<Technologicalskills> findByStatus(Userprofile user, String status);
}
