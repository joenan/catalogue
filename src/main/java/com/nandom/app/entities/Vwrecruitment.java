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
@Table(name = "vwrecruitment")
@NamedQueries({
    @NamedQuery(name = "Vwrecruitment.findAll", query = "SELECT v FROM Vwrecruitment v")
    , @NamedQuery(name = "Vwrecruitment.findById", query = "SELECT v FROM Vwrecruitment v WHERE v.id = :id")
    , @NamedQuery(name = "Vwrecruitment.findByName", query = "SELECT v FROM Vwrecruitment v WHERE v.name = :name")
    , @NamedQuery(name = "Vwrecruitment.findByEmail", query = "SELECT v FROM Vwrecruitment v WHERE v.email = :email")
    , @NamedQuery(name = "Vwrecruitment.findByUsername", query = "SELECT v FROM Vwrecruitment v WHERE v.username = :username")
    , @NamedQuery(name = "Vwrecruitment.findByInstitution", query = "SELECT v FROM Vwrecruitment v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwrecruitment.findByPhone", query = "SELECT v FROM Vwrecruitment v WHERE v.phone = :phone")
    , @NamedQuery(name = "Vwrecruitment.findByUsertype", query = "SELECT v FROM Vwrecruitment v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwrecruitment.findByAverage", query = "SELECT v FROM Vwrecruitment v WHERE v.average = :average")})
public class Vwrecruitment implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id")
    @Id
    private int id;
    @Column(name = "NAME")
    private String name;
    @Column(name = "email")
    private String email;
    @Column(name = "username")
    private String username;
    @Column(name = "institution")
    private String institution;
    @Column(name = "phone")
    private String phone;
    @Column(name = "usertype")
    private String usertype;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "average")
    private BigDecimal average;

    public Vwrecruitment() {
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public BigDecimal getAverage() {
        return average;
    }

    public void setAverage(BigDecimal average) {
        this.average = average;
    }
    
}
