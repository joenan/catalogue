/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Vwrecruitment;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface VwRecruitmentRepository extends CrudRepository<Vwrecruitment, Integer> {

    @Query("select c from Vwrecruitment c where c.average >= 50")
    List<Vwrecruitment> findByAverage();
}
