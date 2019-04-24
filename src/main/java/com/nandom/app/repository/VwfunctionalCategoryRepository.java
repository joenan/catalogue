/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Vwfunctionalcategory;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface VwfunctionalCategoryRepository extends CrudRepository<Vwfunctionalcategory, Integer> {

    @Query("select u from Vwfunctionalcategory u where u.name = ?1")
    public List<Vwfunctionalcategory> findUserByName(String name);

}
