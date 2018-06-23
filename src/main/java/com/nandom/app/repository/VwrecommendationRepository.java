/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Vwrecommendation;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nandom Gusen
 */
public interface VwrecommendationRepository extends CrudRepository<Vwrecommendation, Integer> {

    @Query("select c from Vwrecommendation c where c.behaviouralrecommendation = 'Retraining'")
    List<Vwrecommendation> findBehavouralByRetraining();

    @Query("select c from Vwrecommendation c where c.behaviouralrecommendation ='Redeployment'")
    List<Vwrecommendation> findBehavouralByRedeployment();

    @Query("select c from Vwrecommendation c where c.functionalrecommendation = 'Retraining'")
    List<Vwrecommendation> findFunctionalByRetraining();

    @Query("select c from Vwrecommendation c where c.functionalrecommendation ='Redeployment'")
    List<Vwrecommendation> findFunctionalByRedeployment();

    @Query("select c from Vwrecommendation c where c.knowledgerecommendation ='Retraining'")
    List<Vwrecommendation> findKnowledgerecommendationByRetraining();

    @Query("select c from Vwrecommendation c where c.knowledgerecommendation ='Redeployment'")
    List<Vwrecommendation> findKnowledgerecommendationByRedeployment();

    @Query("select c from Vwrecommendation c where c.professionalrecommendation ='Retraining'")
    List<Vwrecommendation> findProfessionalrecommendationByRetraining();

    @Query("select c from Vwrecommendation c where c.professionalrecommendation ='Redeployment'")
    List<Vwrecommendation> findProfessionalrecommendationByRedeployment();

    @Query("select c from Vwrecommendation c where c.technologicalrecommendation ='Retraining'")
    List<Vwrecommendation> findTechnologicalrecommendationByRetraining();

    @Query("select c from Vwrecommendation c where c.technologicalrecommendation ='Redeployment'")
    List<Vwrecommendation> findTechnologicalrecommendationByRedeployment();

}
