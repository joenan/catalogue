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
@Table(name = "vwbehaviouralcategory")
@NamedQueries({
    @NamedQuery(name = "Vwbehaviouralcategory.findAll", query = "SELECT v FROM Vwbehaviouralcategory v")
    , @NamedQuery(name = "Vwbehaviouralcategory.findById", query = "SELECT v FROM Vwbehaviouralcategory v WHERE v.id = :id")
    , @NamedQuery(name = "Vwbehaviouralcategory.findByName", query = "SELECT v FROM Vwbehaviouralcategory v WHERE v.name = :name")
    , @NamedQuery(name = "Vwbehaviouralcategory.findByInstitution", query = "SELECT v FROM Vwbehaviouralcategory v WHERE v.institution = :institution")
    , @NamedQuery(name = "Vwbehaviouralcategory.findByUsertype", query = "SELECT v FROM Vwbehaviouralcategory v WHERE v.usertype = :usertype")
    , @NamedQuery(name = "Vwbehaviouralcategory.findByLeadershipskillscore", query = "SELECT v FROM Vwbehaviouralcategory v WHERE v.leadershipskillscore = :leadershipskillscore")
    , @NamedQuery(name = "Vwbehaviouralcategory.findByCommunicationskillscore", query = "SELECT v FROM Vwbehaviouralcategory v WHERE v.communicationskillscore = :communicationskillscore")
    , @NamedQuery(name = "Vwbehaviouralcategory.findByTeamworkscore", query = "SELECT v FROM Vwbehaviouralcategory v WHERE v.teamworkscore = :teamworkscore")})
public class Vwbehaviouralcategory implements Serializable {

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
    @Column(name = "leadershipskillscore")
    private Integer leadershipskillscore;
    @Column(name = "communicationskillscore")
    private Integer communicationskillscore;
    @Column(name = "teamworkscore")
    private Integer teamworkscore;

    public Vwbehaviouralcategory() {
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

    public Integer getLeadershipskillscore() {
        return leadershipskillscore;
    }

    public void setLeadershipskillscore(Integer leadershipskillscore) {
        this.leadershipskillscore = leadershipskillscore;
    }

    public Integer getCommunicationskillscore() {
        return communicationskillscore;
    }

    public void setCommunicationskillscore(Integer communicationskillscore) {
        this.communicationskillscore = communicationskillscore;
    }

    public Integer getTeamworkscore() {
        return teamworkscore;
    }

    public void setTeamworkscore(Integer teamworkscore) {
        this.teamworkscore = teamworkscore;
    }
    
}
