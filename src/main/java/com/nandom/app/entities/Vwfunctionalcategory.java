/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Nandom Gusen
 */
@Entity
@Table(name = "vwfunctionalcategory")
@NamedQueries({
    @NamedQuery(name = "Vwfunctionalcategory.findAll", query = "SELECT v FROM Vwfunctionalcategory v")
    , @NamedQuery(name = "Vwfunctionalcategory.findById", query = "SELECT v FROM Vwfunctionalcategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwfunctionalcategory.findByName", query = "SELECT v FROM Vwfunctionalcategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwfunctionalcategory.findByInstitution", query = "SELECT v FROM Vwfunctionalcategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwfunctionalcategory.findByUsertype", query = "SELECT v FROM Vwfunctionalcategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwfunctionalcategory.findByProblemsolvingskillscore", query = "SELECT v FROM Vwfunctionalcategory v WHERE v.problemsolvingskillscore = :problemsolvingskillscore")
    , @NamedQuery(name = "Vwfunctionalcategory.findByConsistencyskillscore", query = "SELECT v FROM Vwfunctionalcategory v WHERE v.consistencyskillscore = :consistencyskillscore")
    , @NamedQuery(name = "Vwfunctionalcategory.findByJudgementskillscore", query = "SELECT v FROM Vwfunctionalcategory v WHERE v.judgementskillscore = :judgementskillscore")})
public class Vwfunctionalcategory implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id")
    @Id
    private int id;
    @Column(name = "NAME")
    private String name;
    @Column(name = "institution")
    private String institution;
    @Column(name = "usertype")
    private String usertype;
    @Column(name = "problemsolvingskillscore")
    private Integer problemsolvingskillscore;
    @Column(name = "consistencyskillscore")
    private Integer consistencyskillscore;
    @Column(name = "judgementskillscore")
    private Integer judgementskillscore;

    public Vwfunctionalcategory() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInstitution() {
        return institution;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public Integer getProblemsolvingskillscore() {
        return problemsolvingskillscore;
    }

    public void setProblemsolvingskillscore(Integer problemsolvingskillscore) {
        this.problemsolvingskillscore = problemsolvingskillscore;
    }

    public Integer getConsistencyskillscore() {
        return consistencyskillscore;
    }

    public void setConsistencyskillscore(Integer consistencyskillscore) {
        this.consistencyskillscore = consistencyskillscore;
    }

    public Integer getJudgementskillscore() {
        return judgementskillscore;
    }

    public void setJudgementskillscore(Integer judgementskillscore) {
        this.judgementskillscore = judgementskillscore;
    }
    
}
