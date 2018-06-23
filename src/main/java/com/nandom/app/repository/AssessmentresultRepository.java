/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Assessmentresult;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface AssessmentresultRepository extends CrudRepository<Assessmentresult, Integer> {

    @Query("select c from Assessmentresult c where c.id=?1")
    List<Assessmentresult> findAssessmentByUser(Integer user);

}
