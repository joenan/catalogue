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
@Table(name = "vwtotalknowledgecategory")
@NamedQueries({
    @NamedQuery(name = "Vwtotalknowledgecategory.findAll", query = "SELECT v FROM Vwtotalknowledgecategory v")
    , @NamedQuery(name = "Vwtotalknowledgecategory.findById", query = "SELECT v FROM Vwtotalknowledgecategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwtotalknowledgecategory.findByName", query = "SELECT v FROM Vwtotalknowledgecategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwtotalknowledgecategory.findByPhone", query = "SELECT v FROM Vwtotalknowledgecategory v WHERE v.phone = :phone")
    , @NamedQuery(name = "Vwtotalknowledgecategory.findByEmail", query = "SELECT v FROM Vwtotalknowledgecategory v WHERE v.email = :email")
    , @NamedQuery(name = "Vwtotalknowledgecategory.findByInstitution", query = "SELECT v FROM Vwtotalknowledgecategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwtotalknowledgecategory.findByUsertype", query = "SELECT v FROM Vwtotalknowledgecategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwtotalknowledgecategory.findByTotalscore", query = "SELECT v FROM Vwtotalknowledgecategory v WHERE v.totalscore = :totalscore")})
public class Vwtotalknowledgecategory implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id")
    @Id
    private int id;
    @Column(name = "NAME")
    private String name;
    @Column(name = "phone")
    private String phone;
    @Column(name = "email")
    private String email;
    @Column(name = "institution")
    private String institution;
    @Column(name = "usertype")
    private String usertype;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "totalscore")
    private BigDecimal totalscore;

    public Vwtotalknowledgecategory() {
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public BigDecimal getTotalscore() {
        return totalscore;
    }

    public void setTotalscore(BigDecimal totalscore) {
        this.totalscore = totalscore;
    }
    
}
