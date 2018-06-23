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
@Table(name = "vwtotalfunctionalcategory")
@NamedQueries({
    @NamedQuery(name = "Vwtotalfunctionalcategory.findAll", query = "SELECT v FROM Vwtotalfunctionalcategory v")
    , @NamedQuery(name = "Vwtotalfunctionalcategory.findById", query = "SELECT v FROM Vwtotalfunctionalcategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwtotalfunctionalcategory.findByName", query = "SELECT v FROM Vwtotalfunctionalcategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwtotalfunctionalcategory.findByInstitution", query = "SELECT v FROM Vwtotalfunctionalcategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwtotalfunctionalcategory.findByUsertype", query = "SELECT v FROM Vwtotalfunctionalcategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwtotalfunctionalcategory.findByTotalscore", query = "SELECT v FROM Vwtotalfunctionalcategory v WHERE v.totalscore = :totalscore")})
public class Vwtotalfunctionalcategory implements Serializable {

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
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "totalscore")
    private BigDecimal totalscore;

    public Vwtotalfunctionalcategory() {
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

    public BigDecimal getTotalscore() {
        return totalscore;
    }

    public void setTotalscore(BigDecimal totalscore) {
        this.totalscore = totalscore;
    }
    
}
