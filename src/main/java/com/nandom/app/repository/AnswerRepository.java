/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.repository;

import com.nandom.app.entities.Answers;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Cornelius
 */
public interface AnswerRepository extends CrudRepository<Answers, Integer>{
    
}
