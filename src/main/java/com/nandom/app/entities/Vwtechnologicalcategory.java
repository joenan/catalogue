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
@Table(name = "vwtechnologicalcategory")
@NamedQueries({
    @NamedQuery(name = "Vwtechnologicalcategory.findAll", query = "SELECT v FROM Vwtechnologicalcategory v")
    , @NamedQuery(name = "Vwtechnologicalcategory.findById", query = "SELECT v FROM Vwtechnologicalcategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwtechnologicalcategory.findByName", query = "SELECT v FROM Vwtechnologicalcategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwtechnologicalcategory.findByInstitution", query = "SELECT v FROM Vwtechnologicalcategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwtechnologicalcategory.findByUsertype", query = "SELECT v FROM Vwtechnologicalcategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwtechnologicalcategory.findByTechnologicalskillscore", query = "SELECT v FROM Vwtechnologicalcategory v WHERE v.technologicalskillscore = :technologicalskillscore")})
public class Vwtechnologicalcategory implements Serializable {

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
    @Column(name = "technologicalskillscore")
    private Integer technologicalskillscore;

    public Vwtechnologicalcategory() {
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

    public Integer getTechnologicalskillscore() {
        return technologicalskillscore;
    }

    public void setTechnologicalskillscore(Integer technologicalskillscore) {
        this.technologicalskillscore = technologicalskillscore;
    }
    
}
