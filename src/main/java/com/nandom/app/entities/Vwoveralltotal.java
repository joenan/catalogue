/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.entities;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "vwoveralltotal")
@NamedQueries({
    @NamedQuery(name = "Vwoveralltotal.findAll", query = "SELECT v FROM Vwoveralltotal v")
    , @NamedQuery(name = "Vwoveralltotal.findById", query = "SELECT v FROM Vwoveralltotal v WHERE v.id = :id")
    , @NamedQuery(name = "Vwoveralltotal.findByName", query = "SELECT v FROM Vwoveralltotal v WHERE v.name = :name")
    , @NamedQuery(name = "Vwoveralltotal.findByUsername", query = "SELECT v FROM Vwoveralltotal v WHERE v.username = :username")
    , @NamedQuery(name = "Vwoveralltotal.findByInstitution", query = "SELECT v FROM Vwoveralltotal v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwoveralltotal.findByUsertype", query = "SELECT v FROM Vwoveralltotal v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwoveralltotal.findByEmail", query = "SELECT v FROM Vwoveralltotal v WHERE v.email = :email")
    , @NamedQuery(name = "Vwoveralltotal.findByPhone", query = "SELECT v FROM Vwoveralltotal v WHERE v.phone = :phone")
    , @NamedQuery(name = "Vwoveralltotal.findByBehaviouralcategoryscore", query = "SELECT v FROM Vwoveralltotal v WHERE v.behaviouralcategoryscore = :behaviouralcategoryscore")
    , @NamedQuery(name = "Vwoveralltotal.findByFunctionalcategoryscore", query = "SELECT v FROM Vwoveralltotal v WHERE v.functionalcategoryscore = :functionalcategoryscore")
    , @NamedQuery(name = "Vwoveralltotal.findByKnowledgecategoryscore", query = "SELECT v FROM Vwoveralltotal v WHERE v.knowledgecategoryscore = :knowledgecategoryscore")
    , @NamedQuery(name = "Vwoveralltotal.findByProfessionalcategoryscore", query = "SELECT v FROM Vwoveralltotal v WHERE v.professionalcategoryscore = :professionalcategoryscore")
    , @NamedQuery(name = "Vwoveralltotal.findByTechnologicalcategoryscore", query = "SELECT v FROM Vwoveralltotal v WHERE v.technologicalcategoryscore = :technologicalcategoryscore")})
public class Vwoveralltotal implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id")
    @Id
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "username")
    private String username;
    @Column(name = "institution")
    private String institution;
    @Column(name = "usertype")
    private String usertype;
    @Column(name = "email")
    private String email;
    @Column(name = "phone")
    private String phone;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "behaviouralcategoryscore")
    private BigDecimal behaviouralcategoryscore;
    @Column(name = "functionalcategoryscore")
    private BigDecimal functionalcategoryscore;
    @Column(name = "knowledgecategoryscore")
    private BigDecimal knowledgecategoryscore;
    @Column(name = "professionalcategoryscore")
    private Integer professionalcategoryscore;
    @Column(name = "technologicalcategoryscore")
    private Integer technologicalcategoryscore;

    public Vwoveralltotal() {
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public BigDecimal getBehaviouralcategoryscore() {
        return behaviouralcategoryscore;
    }

    public void setBehaviouralcategoryscore(BigDecimal behaviouralcategoryscore) {
        this.behaviouralcategoryscore = behaviouralcategoryscore;
    }

    public BigDecimal getFunctionalcategoryscore() {
        return functionalcategoryscore;
    }

    public void setFunctionalcategoryscore(BigDecimal functionalcategoryscore) {
        this.functionalcategoryscore = functionalcategoryscore;
    }

    public BigDecimal getKnowledgecategoryscore() {
        return knowledgecategoryscore;
    }

    public void setKnowledgecategoryscore(BigDecimal knowledgecategoryscore) {
        this.knowledgecategoryscore = knowledgecategoryscore;
    }

    public Integer getProfessionalcategoryscore() {
        return professionalcategoryscore;
    }

    public void setProfessionalcategoryscore(Integer professionalcategoryscore) {
        this.professionalcategoryscore = professionalcategoryscore;
    }

    public Integer getTechnologicalcategoryscore() {
        return technologicalcategoryscore;
    }

    public void setTechnologicalcategoryscore(Integer technologicalcategoryscore) {
        this.technologicalcategoryscore = technologicalcategoryscore;
    }
    
}
