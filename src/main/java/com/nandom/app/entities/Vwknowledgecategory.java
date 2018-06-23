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
@Table(name = "vwknowledgecategory")
@NamedQueries({
    @NamedQuery(name = "Vwknowledgecategory.findAll", query = "SELECT v FROM Vwknowledgecategory v")
    , @NamedQuery(name = "Vwknowledgecategory.findById", query = "SELECT v FROM Vwknowledgecategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwknowledgecategory.findByName", query = "SELECT v FROM Vwknowledgecategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwknowledgecategory.findByInstitution", query = "SELECT v FROM Vwknowledgecategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwknowledgecategory.findByUsertype", query = "SELECT v FROM Vwknowledgecategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwknowledgecategory.findByKnowledgeskillscore", query = "SELECT v FROM Vwknowledgecategory v WHERE v.knowledgeskillscore = :knowledgeskillscore")
    , @NamedQuery(name = "Vwknowledgecategory.findByIndexingskillscore", query = "SELECT v FROM Vwknowledgecategory v WHERE v.indexingskillscore = :indexingskillscore")
    , @NamedQuery(name = "Vwknowledgecategory.findByClassificationskillscore", query = "SELECT v FROM Vwknowledgecategory v WHERE v.classificationskillscore = :classificationskillscore")
    , @NamedQuery(name = "Vwknowledgecategory.findByCataloguingskillscore", query = "SELECT v FROM Vwknowledgecategory v WHERE v.cataloguingskillscore = :cataloguingskillscore")})
public class Vwknowledgecategory implements Serializable {

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
    @Column(name = "knowledgeskillscore")
    private Integer knowledgeskillscore;
    @Column(name = "indexingskillscore")
    private Integer indexingskillscore;
    @Column(name = "classificationskillscore")
    private Integer classificationskillscore;
    @Column(name = "cataloguingskillscore")
    private Integer cataloguingskillscore;

    public Vwknowledgecategory() {
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

    public Integer getKnowledgeskillscore() {
        return knowledgeskillscore;
    }

    public void setKnowledgeskillscore(Integer knowledgeskillscore) {
        this.knowledgeskillscore = knowledgeskillscore;
    }

    public Integer getIndexingskillscore() {
        return indexingskillscore;
    }

    public void setIndexingskillscore(Integer indexingskillscore) {
        this.indexingskillscore = indexingskillscore;
    }

    public Integer getClassificationskillscore() {
        return classificationskillscore;
    }

    public void setClassificationskillscore(Integer classificationskillscore) {
        this.classificationskillscore = classificationskillscore;
    }

    public Integer getCataloguingskillscore() {
        return cataloguingskillscore;
    }

    public void setCataloguingskillscore(Integer cataloguingskillscore) {
        this.cataloguingskillscore = cataloguingskillscore;
    }
    
}
