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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Nandom Gusen
 */
@Entity
@Table(name = "cataloguerprofile")
@NamedQueries({
    @NamedQuery(name = "Cataloguerprofile.findAll", query = "SELECT c FROM Cataloguerprofile c")
    , @NamedQuery(name = "Cataloguerprofile.findByProfileid", query = "SELECT c FROM Cataloguerprofile c WHERE c.profileid = :profileid")
    , @NamedQuery(name = "Cataloguerprofile.findByDescription", query = "SELECT c FROM Cataloguerprofile c WHERE c.description = :description")
    , @NamedQuery(name = "Cataloguerprofile.findByNumberofmaterials", query = "SELECT c FROM Cataloguerprofile c WHERE c.numberofmaterials = :numberofmaterials")})
public class Cataloguerprofile implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "profileid")
    private Integer profileid;
    @Column(name = "description")
    private String description;
    @Column(name = "numberofmaterials")
    private Integer numberofmaterials;
    @JoinColumn(name = "userid", referencedColumnName = "userid")
    @ManyToOne
    private Userprofile userid;

    public Cataloguerprofile() {
    }

    public Cataloguerprofile(Integer profileid) {
        this.profileid = profileid;
    }

    public Integer getProfileid() {
        return profileid;
    }

    public void setProfileid(Integer profileid) {
        this.profileid = profileid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getNumberofmaterials() {
        return numberofmaterials;
    }

    public void setNumberofmaterials(Integer numberofmaterials) {
        this.numberofmaterials = numberofmaterials;
    }

    public Userprofile getUserid() {
        return userid;
    }

    public void setUserid(Userprofile userid) {
        this.userid = userid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (profileid != null ? profileid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cataloguerprofile)) {
            return false;
        }
        Cataloguerprofile other = (Cataloguerprofile) object;
        if ((this.profileid == null && other.profileid != null) || (this.profileid != null && !this.profileid.equals(other.profileid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nandom.app.entities.Cataloguerprofile[ profileid=" + profileid + " ]";
    }
    
}
