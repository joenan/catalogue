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
@Table(name = "answers")
@NamedQueries({
    @NamedQuery(name = "Answers.findAll", query = "SELECT a FROM Answers a")
    , @NamedQuery(name = "Answers.findByAnswerId", query = "SELECT a FROM Answers a WHERE a.answerId = :answerId")
    , @NamedQuery(name = "Answers.findByBehaviouralSkills", query = "SELECT a FROM Answers a WHERE a.behaviouralSkills = :behaviouralSkills")
    , @NamedQuery(name = "Answers.findByClassficationSkills", query = "SELECT a FROM Answers a WHERE a.classficationSkills = :classficationSkills")
    , @NamedQuery(name = "Answers.findByCommunicationSkills", query = "SELECT a FROM Answers a WHERE a.communicationSkills = :communicationSkills")
    , @NamedQuery(name = "Answers.findByConsistencyAndAdaptibilitySkills", query = "SELECT a FROM Answers a WHERE a.consistencyAndAdaptibilitySkills = :consistencyAndAdaptibilitySkills")
    , @NamedQuery(name = "Answers.findByFunctionalSkills", query = "SELECT a FROM Answers a WHERE a.functionalSkills = :functionalSkills")
    , @NamedQuery(name = "Answers.findByIndexingSkills", query = "SELECT a FROM Answers a WHERE a.indexingSkills = :indexingSkills")
    , @NamedQuery(name = "Answers.findByJudgementSkills", query = "SELECT a FROM Answers a WHERE a.judgementSkills = :judgementSkills")
    , @NamedQuery(name = "Answers.findByKnowledgeSkills", query = "SELECT a FROM Answers a WHERE a.knowledgeSkills = :knowledgeSkills")
    , @NamedQuery(name = "Answers.findByProblemSolvingSkills", query = "SELECT a FROM Answers a WHERE a.problemSolvingSkills = :problemSolvingSkills")
    , @NamedQuery(name = "Answers.findByProfessionalSkills", query = "SELECT a FROM Answers a WHERE a.professionalSkills = :professionalSkills")
    , @NamedQuery(name = "Answers.findByTechnologicalSkills", query = "SELECT a FROM Answers a WHERE a.technologicalSkills = :technologicalSkills")})
public class Answers implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "answer_id")
    private Integer answerId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "behaviouralSkills")
    private Double behaviouralSkills;
    @Column(name = "classficationSkills")
    private Double classficationSkills;
    @Column(name = "communicationSkills")
    private Double communicationSkills;
    @Column(name = "consistencyAndAdaptibilitySkills")
    private Double consistencyAndAdaptibilitySkills;
    @Column(name = "functionalSkills")
    private Double functionalSkills;
    @Column(name = "indexingSkills")
    private Double indexingSkills;
    @Column(name = "judgementSkills")
    private Double judgementSkills;
    @Column(name = "knowledgeSkills")
    private Double knowledgeSkills;
    @Column(name = "problemSolvingSkills")
    private Double problemSolvingSkills;
    @Column(name = "professionalSkills")
    private Double professionalSkills;
    @Column(name = "technologicalSkills")
    private Double technologicalSkills;
    @JoinColumn(name = "user_id", referencedColumnName = "userid")
    @ManyToOne
    private Userprofile userId;

    public Answers() {
    }

    public Answers(Integer answerId) {
        this.answerId = answerId;
    }

    public Integer getAnswerId() {
        return answerId;
    }

    public void setAnswerId(Integer answerId) {
        this.answerId = answerId;
    }

    public Double getBehaviouralSkills() {
        return behaviouralSkills;
    }

    public void setBehaviouralSkills(Double behaviouralSkills) {
        this.behaviouralSkills = behaviouralSkills;
    }

    public Double getClassficationSkills() {
        return classficationSkills;
    }

    public void setClassficationSkills(Double classficationSkills) {
        this.classficationSkills = classficationSkills;
    }

    public Double getCommunicationSkills() {
        return communicationSkills;
    }

    public void setCommunicationSkills(Double communicationSkills) {
        this.communicationSkills = communicationSkills;
    }

    public Double getConsistencyAndAdaptibilitySkills() {
        return consistencyAndAdaptibilitySkills;
    }

    public void setConsistencyAndAdaptibilitySkills(Double consistencyAndAdaptibilitySkills) {
        this.consistencyAndAdaptibilitySkills = consistencyAndAdaptibilitySkills;
    }

    public Double getFunctionalSkills() {
        return functionalSkills;
    }

    public void setFunctionalSkills(Double functionalSkills) {
        this.functionalSkills = functionalSkills;
    }

    public Double getIndexingSkills() {
        return indexingSkills;
    }

    public void setIndexingSkills(Double indexingSkills) {
        this.indexingSkills = indexingSkills;
    }

    public Double getJudgementSkills() {
        return judgementSkills;
    }

    public void setJudgementSkills(Double judgementSkills) {
        this.judgementSkills = judgementSkills;
    }

    public Double getKnowledgeSkills() {
        return knowledgeSkills;
    }

    public void setKnowledgeSkills(Double knowledgeSkills) {
        this.knowledgeSkills = knowledgeSkills;
    }

    public Double getProblemSolvingSkills() {
        return problemSolvingSkills;
    }

    public void setProblemSolvingSkills(Double problemSolvingSkills) {
        this.problemSolvingSkills = problemSolvingSkills;
    }

    public Double getProfessionalSkills() {
        return professionalSkills;
    }

    public void setProfessionalSkills(Double professionalSkills) {
        this.professionalSkills = professionalSkills;
    }

    public Double getTechnologicalSkills() {
        return technologicalSkills;
    }

    public void setTechnologicalSkills(Double technologicalSkills) {
        this.technologicalSkills = technologicalSkills;
    }

    public Userprofile getUserId() {
        return userId;
    }

    public void setUserId(Userprofile userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (answerId != null ? answerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Answers)) {
            return false;
        }
        Answers other = (Answers) object;
        if ((this.answerId == null && other.answerId != null) || (this.answerId != null && !this.answerId.equals(other.answerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.nandom.app.entities.Answers[ answerId=" + answerId + " ]";
    }
    
}
