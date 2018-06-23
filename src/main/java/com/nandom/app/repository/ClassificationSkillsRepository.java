/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Classificationskills;
import com.nandom.app.entities.Userprofile;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface ClassificationSkillsRepository extends CrudRepository<Classificationskills, Integer> {

    @Query("select c from Classificationskills c where c.userid=?1 AND c.status = ?2")
    List<Classificationskills> findByStatus(Userprofile user, String status);

}
