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
@Table(name = "vwrecommendation")
@NamedQueries({
    @NamedQuery(name = "Vwrecommendation.findAll", query = "SELECT v FROM Vwrecommendation v")
    , @NamedQuery(name = "Vwrecommendation.findById", query = "SELECT v FROM Vwrecommendation v WHERE v.id = :id")
    , @NamedQuery(name = "Vwrecommendation.findByName", query = "SELECT v FROM Vwrecommendation v WHERE v.name = :name")
    , @NamedQuery(name = "Vwrecommendation.findByUsername", query = "SELECT v FROM Vwrecommendation v WHERE v.username = :username")
    , @NamedQuery(name = "Vwrecommendation.findByInstitution", query = "SELECT v FROM Vwrecommendation v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwrecommendation.findByUsertype", query = "SELECT v FROM Vwrecommendation v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwrecommendation.findByEmail", query = "SELECT v FROM Vwrecommendation v WHERE v.email = :email")
    , @NamedQuery(name = "Vwrecommendation.findByPhone", query = "SELECT v FROM Vwrecommendation v WHERE v.phone = :phone")
    , @NamedQuery(name = "Vwrecommendation.findByBehaviouralcategoryscore", query = "SELECT v FROM Vwrecommendation v WHERE v.behaviouralcategoryscore = :behaviouralcategoryscore")
    , @NamedQuery(name = "Vwrecommendation.findByFunctionalcategoryscore", query = "SELECT v FROM Vwrecommendation v WHERE v.functionalcategoryscore = :functionalcategoryscore")
    , @NamedQuery(name = "Vwrecommendation.findByKnowledgecategoryscore", query = "SELECT v FROM Vwrecommendation v WHERE v.knowledgecategoryscore = :knowledgecategoryscore")
    , @NamedQuery(name = "Vwrecommendation.findByProfessionalcategoryscore", query = "SELECT v FROM Vwrecommendation v WHERE v.professionalcategoryscore = :professionalcategoryscore")
    , @NamedQuery(name = "Vwrecommendation.findByTechnologicalcategoryscore", query = "SELECT v FROM Vwrecommendation v WHERE v.technologicalcategoryscore = :technologicalcategoryscore")
    , @NamedQuery(name = "Vwrecommendation.findByBehaviouralrecommendation", query = "SELECT v FROM Vwrecommendation v WHERE v.behaviouralrecommendation = :behaviouralrecommendation")
    , @NamedQuery(name = "Vwrecommendation.findByFunctionalrecommendation", query = "SELECT v FROM Vwrecommendation v WHERE v.functionalrecommendation = :functionalrecommendation")
    , @NamedQuery(name = "Vwrecommendation.findByKnowledgerecommendation", query = "SELECT v FROM Vwrecommendation v WHERE v.knowledgerecommendation = :knowledgerecommendation")
    , @NamedQuery(name = "Vwrecommendation.findByProfessionalrecommendation", query = "SELECT v FROM Vwrecommendation v WHERE v.professionalrecommendation = :professionalrecommendation")
    , @NamedQuery(name = "Vwrecommendation.findByTechnologicalrecommendation", query = "SELECT v FROM Vwrecommendation v WHERE v.technologicalrecommendation = :technologicalrecommendation")})
public class Vwrecommendation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id")
    @Id
    private int id;
    @Column(name = "NAME")
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
    @Basic(optional = false)
    @Column(name = "behaviouralrecommendation")
    private String behaviouralrecommendation;
    @Basic(optional = false)
    @Column(name = "functionalrecommendation")
    private String functionalrecommendation;
    @Basic(optional = false)
    @Column(name = "knowledgerecommendation")
    private String knowledgerecommendation;
    @Basic(optional = false)
    @Column(name = "professionalrecommendation")
    private String professionalrecommendation;
    @Basic(optional = false)
    @Column(name = "technologicalrecommendation")
    private String technologicalrecommendation;

    public Vwrecommendation() {
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

    public String getBehaviouralrecommendation() {
        return behaviouralrecommendation;
    }

    public void setBehaviouralrecommendation(String behaviouralrecommendation) {
        this.behaviouralrecommendation = behaviouralrecommendation;
    }

    public String getFunctionalrecommendation() {
        return functionalrecommendation;
    }

    public void setFunctionalrecommendation(String functionalrecommendation) {
        this.functionalrecommendation = functionalrecommendation;
    }

    public String getKnowledgerecommendation() {
        return knowledgerecommendation;
    }

    public void setKnowledgerecommendation(String knowledgerecommendation) {
        this.knowledgerecommendation = knowledgerecommendation;
    }

    public String getProfessionalrecommendation() {
        return professionalrecommendation;
    }

    public void setProfessionalrecommendation(String professionalrecommendation) {
        this.professionalrecommendation = professionalrecommendation;
    }

    public String getTechnologicalrecommendation() {
        return technologicalrecommendation;
    }

    public void setTechnologicalrecommendation(String technologicalrecommendation) {
        this.technologicalrecommendation = technologicalrecommendation;
    }
    
}
