/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Cataloguingskills;
import com.nandom.app.entities.Userprofile;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface CataloguingSkillsRepository extends CrudRepository<Cataloguingskills, Integer> {

    @Query("select c from Cataloguingskills c where c.userid=?1 AND c.status = ?2")
    List<Cataloguingskills> findByStatus(Userprofile user, String status);
}
