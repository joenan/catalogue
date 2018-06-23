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
@Table(name = "vwprofessionalcategory")
@NamedQueries({
    @NamedQuery(name = "Vwprofessionalcategory.findAll", query = "SELECT v FROM Vwprofessionalcategory v")
    , @NamedQuery(name = "Vwprofessionalcategory.findById", query = "SELECT v FROM Vwprofessionalcategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwprofessionalcategory.findByName", query = "SELECT v FROM Vwprofessionalcategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwprofessionalcategory.findByInstitution", query = "SELECT v FROM Vwprofessionalcategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwprofessionalcategory.findByUsertype", query = "SELECT v FROM Vwprofessionalcategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwprofessionalcategory.findByProfessionalskillscore", query = "SELECT v FROM Vwprofessionalcategory v WHERE v.professionalskillscore = :professionalskillscore")})
public class Vwprofessionalcategory implements Serializable {

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
    @Column(name = "professionalskillscore")
    private Integer professionalskillscore;

    public Vwprofessionalcategory() {
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

    public Integer getProfessionalskillscore() {
        return professionalskillscore;
    }

    public void setProfessionalskillscore(Integer professionalskillscore) {
        this.professionalskillscore = professionalskillscore;
    }
    
}
