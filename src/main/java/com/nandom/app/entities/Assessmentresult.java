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
@Table(name = "assessmentresult")
@NamedQueries({
    @NamedQuery(name = "Assessmentresult.findAll", query = "SELECT a FROM Assessmentresult a")
    , @NamedQuery(name = "Assessmentresult.findById", query = "SELECT a FROM Assessmentresult a WHERE a.id = :id")
    , @NamedQuery(name = "Assessmentresult.findByUsername", query = "SELECT a FROM Assessmentresult a WHERE a.username = :username")
    , @NamedQuery(name = "Assessmentresult.findByName", query = "SELECT a FROM Assessmentresult a WHERE a.name = :name")
    , @NamedQuery(name = "Assessmentresult.findByUsertype", query = "SELECT a FROM Assessmentresult a WHERE a.usertype = :usertype")
    , @NamedQuery(name = "Assessmentresult.findByEmail", query = "SELECT a FROM Assessmentresult a WHERE a.email = :email")
    , @NamedQuery(name = "Assessmentresult.findByInstitution", query = "SELECT a FROM Assessmentresult a WHERE a.institution = :institution")
    , @NamedQuery(name = "Assessmentresult.findByPhone", query = "SELECT a FROM Assessmentresult a WHERE a.phone = :phone")
    , @NamedQuery(name = "Assessmentresult.findByCataloguingscore", query = "SELECT a FROM Assessmentresult a WHERE a.cataloguingscore = :cataloguingscore")
    , @NamedQuery(name = "Assessmentresult.findByClassificationscore", query = "SELECT a FROM Assessmentresult a WHERE a.classificationscore = :classificationscore")
    , @NamedQuery(name = "Assessmentresult.findByConsistencyscore", query = "SELECT a FROM Assessmentresult a WHERE a.consistencyscore = :consistencyscore")
    , @NamedQuery(name = "Assessmentresult.findByIndexingscore", query = "SELECT a FROM Assessmentresult a WHERE a.indexingscore = :indexingscore")
    , @NamedQuery(name = "Assessmentresult.findByJudgementscore", query = "SELECT a FROM Assessmentresult a WHERE a.judgementscore = :judgementscore")
    , @NamedQuery(name = "Assessmentresult.findByKnowledgeskillscore", query = "SELECT a FROM Assessmentresult a WHERE a.knowledgeskillscore = :knowledgeskillscore")
    , @NamedQuery(name = "Assessmentresult.findByLeadershipskills", query = "SELECT a FROM Assessmentresult a WHERE a.leadershipskills = :leadershipskills")
    , @NamedQuery(name = "Assessmentresult.findByProblemsolvingscore", query = "SELECT a FROM Assessmentresult a WHERE a.problemsolvingscore = :problemsolvingscore")
    , @NamedQuery(name = "Assessmentresult.findByProfessionalscore", query = "SELECT a FROM Assessmentresult a WHERE a.professionalscore = :professionalscore")
    , @NamedQuery(name = "Assessmentresult.findByTeamworkscore", query = "SELECT a FROM Assessmentresult a WHERE a.teamworkscore = :teamworkscore")
    , @NamedQuery(name = "Assessmentresult.findByTechnologicalskillscore", query = "SELECT a FROM Assessmentresult a WHERE a.technologicalskillscore = :technologicalskillscore")})
public class Assessmentresult implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "id")
    @Id
    private int id;
    @Column(name = "username")
    private String username;
    @Column(name = "NAME")
    private String name;
    @Column(name = "usertype")
    private String usertype;
    @Column(name = "email")
    private String email;
    @Column(name = "institution")
    private String institution;
    @Column(name = "phone")
    private String phone;
    @Column(name = "cataloguingscore")
    private Integer cataloguingscore;
    @Column(name = "classificationscore")
    private Integer classificationscore;
    @Column(name = "consistencyscore")
    private Integer consistencyscore;
    @Column(name = "indexingscore")
    private Integer indexingscore;
    @Column(name = "judgementscore")
    private Integer judgementscore;
    @Column(name = "knowledgeskillscore")
    private Integer knowledgeskillscore;
    @Column(name = "leadershipskills")
    private Integer leadershipskills;
    @Column(name = "problemsolvingscore")
    private Integer problemsolvingscore;
    @Column(name = "professionalscore")
    private Integer professionalscore;
    @Column(name = "teamworkscore")
    private Integer teamworkscore;
    @Column(name = "technologicalskillscore")
    private Integer technologicalskillscore;

    public Assessmentresult() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public Integer getCataloguingscore() {
        return cataloguingscore;
    }

    public void setCataloguingscore(Integer cataloguingscore) {
        this.cataloguingscore = cataloguingscore;
    }

    public Integer getClassificationscore() {
        return classificationscore;
    }

    public void setClassificationscore(Integer classificationscore) {
        this.classificationscore = classificationscore;
    }

    public Integer getConsistencyscore() {
        return consistencyscore;
    }

    public void setConsistencyscore(Integer consistencyscore) {
        this.consistencyscore = consistencyscore;
    }

    public Integer getIndexingscore() {
        return indexingscore;
    }

    public void setIndexingscore(Integer indexingscore) {
        this.indexingscore = indexingscore;
    }

    public Integer getJudgementscore() {
        return judgementscore;
    }

    public void setJudgementscore(Integer judgementscore) {
        this.judgementscore = judgementscore;
    }

    public Integer getKnowledgeskillscore() {
        return knowledgeskillscore;
    }

    public void setKnowledgeskillscore(Integer knowledgeskillscore) {
        this.knowledgeskillscore = knowledgeskillscore;
    }

    public Integer getLeadershipskills() {
        return leadershipskills;
    }

    public void setLeadershipskills(Integer leadershipskills) {
        this.leadershipskills = leadershipskills;
    }

    public Integer getProblemsolvingscore() {
        return problemsolvingscore;
    }

    public void setProblemsolvingscore(Integer problemsolvingscore) {
        this.problemsolvingscore = problemsolvingscore;
    }

    public Integer getProfessionalscore() {
        return professionalscore;
    }

    public void setProfessionalscore(Integer professionalscore) {
        this.professionalscore = professionalscore;
    }

    public Integer getTeamworkscore() {
        return teamworkscore;
    }

    public void setTeamworkscore(Integer teamworkscore) {
        this.teamworkscore = teamworkscore;
    }

    public Integer getTechnologicalskillscore() {
        return technologicalskillscore;
    }

    public void setTechnologicalskillscore(Integer technologicalskillscore) {
        this.technologicalskillscore = technologicalskillscore;
    }
    
}
