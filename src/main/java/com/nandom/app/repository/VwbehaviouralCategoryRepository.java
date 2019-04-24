/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Vwbehaviouralcategory;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface VwbehaviouralCategoryRepository extends CrudRepository<Vwbehaviouralcategory, Integer> {

    @Query("select u from Vwbehaviouralcategory u where u.name = ?1")
    public List<Vwbehaviouralcategory> findUserByName(String name);
    
}
