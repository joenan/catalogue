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
@Table(name = "judgementskills")
@NamedQueries({
    @NamedQuery(name = "Judgementskills.findAll", query = "SELECT j FROM Judgementskills j")
    , @NamedQuery(name = "Judgementskills.findById", query = "SELECT j FROM Judgementskills j WHERE j.id = :id")
    , @NamedQuery(name = "Judgementskills.findByNoofquestions", query = "SELECT j FROM Judgementskills j WHERE j.noofquestions = :noofquestions")
    , @NamedQuery(name = "Judgementskills.findByPercentagescore", query = "SELECT j FROM Judgementskills j WHERE j.percentagescore = :percentagescore")
    , @NamedQuery(name = "Judgementskills.findByScore", query = "SELECT j FROM Judgementskills j WHERE j.score = :score")
    , @NamedQuery(name = "Judgementskills.findByStatus", query = "SELECT j FROM Judgementskills j WHERE j.status = :status")})
public class Judgementskills implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "noofquestions")
    private Integer noofquestions;
    @Column(name = "percentagescore")
    private Integer percentagescore;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "score")
    private Double score;
    @Column(name = "status")
    private String status;
    @JoinColumn(name = "userid", referencedColumnName = "userid")
    @ManyToOne
    private Userprofile userid;

    public Judgementskills() {
    }

    public Judgementskills(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNoofquestions() {
        return noofquestions;
    }

    public void setNoofquestions(Integer noofquestions) {
        this.noofquestions = noofquestions;
    }

    public Integer getPercentagescore() {
        return percentagescore;
    }

    public void setPercentagescore(Integer percentagescore) {
        this.percentagescore = percentagescore;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Judgementskills)) {
            return false;
        }
        Judgementskills other = (Judgementskills) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nandom.app.entities.Judgementskills[ id=" + id + " ]";
    }
    
}
