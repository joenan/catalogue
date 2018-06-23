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
@Table(name = "vwtotaltechnologicalcategory")
@NamedQueries({
    @NamedQuery(name = "Vwtotaltechnologicalcategory.findAll", query = "SELECT v FROM Vwtotaltechnologicalcategory v")
    , @NamedQuery(name = "Vwtotaltechnologicalcategory.findById", query = "SELECT v FROM Vwtotaltechnologicalcategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwtotaltechnologicalcategory.findByName", query = "SELECT v FROM Vwtotaltechnologicalcategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwtotaltechnologicalcategory.findByInstitution", query = "SELECT v FROM Vwtotaltechnologicalcategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwtotaltechnologicalcategory.findByUsertype", query = "SELECT v FROM Vwtotaltechnologicalcategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwtotaltechnologicalcategory.findByTotalscore", query = "SELECT v FROM Vwtotaltechnologicalcategory v WHERE v.totalscore = :totalscore")})
public class Vwtotaltechnologicalcategory implements Serializable {

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
    @Column(name = "totalscore")
    private Integer totalscore;

    public Vwtotaltechnologicalcategory() {
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

    public Integer getTotalscore() {
        return totalscore;
    }

    public void setTotalscore(Integer totalscore) {
        this.totalscore = totalscore;
    }
    
}
