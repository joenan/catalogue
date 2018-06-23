/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Vwoveralltotal;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface VwoveralltotalRepository extends CrudRepository<Vwoveralltotal, Integer> {

    @Query("Select c from Vwoveralltotal c where c.id = ?1")
    List<Vwoveralltotal> findListById(Integer id);
    
     @Query("Select c from Vwoveralltotal c where c.id = ?1")
     Vwoveralltotal findEntityById(Integer id);

}
