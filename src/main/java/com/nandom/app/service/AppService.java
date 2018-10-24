/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.service;

import com.nandom.app.repository.AssessmentresultRepository;
import com.nandom.app.repository.CataloguerprofileRepository;
import com.nandom.app.repository.CataloguingSkillsRepository;
import com.nandom.app.repository.ClassificationSkillsRepository;
import com.nandom.app.repository.CommunicationSkillsRepository;
import com.nandom.app.repository.CompetencyAndAdaptabilitySkillsRepository;
import com.nandom.app.repository.IndexingSkillsRepository;
import com.nandom.app.repository.JudgementSkillsRepository;
import com.nandom.app.repository.KnowledgeSkillsRepository;
import com.nandom.app.repository.LeadershipSkillsRepository;
import com.nandom.app.repository.ProblemSolvingSkillsRepository;
import com.nandom.app.repository.ProfessionalSkillsRepository;
import com.nandom.app.repository.TeamWorkRepository;
import com.nandom.app.repository.TechnologicalSkillsRepository;
import com.nandom.app.repository.UserprofileRepository;
import com.nandom.app.repository.VwRecruitmentRepository;
import com.nandom.app.repository.VwbehaviouralCategoryRepository;
import com.nandom.app.repository.VwfunctionalCategoryRepository;
import com.nandom.app.repository.VwknowledgeCategoryRepository;
import com.nandom.app.repository.VwoveralltotalRepository;
import com.nandom.app.repository.VwprofessionalCategoryRepository;
import com.nandom.app.repository.VwrecommendationRepository;
import com.nandom.app.repository.VwtechnologicalCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Nandom Gusen
 */
@Service
@Transactional
public class AppService {

    @Autowired
    KnowledgeSkillsRepository knowledgeService;

    @Autowired
    ProfessionalSkillsRepository professionalService;

    @Autowired
    UserprofileRepository userService;

    @Autowired
    ClassificationSkillsRepository classificationService;

    @Autowired
    CommunicationSkillsRepository communicationSkillsService;

    @Autowired
    CompetencyAndAdaptabilitySkillsRepository competencyAndAdaptabilitySkillsService;

    @Autowired
    IndexingSkillsRepository indexSkillsService;

    @Autowired
    JudgementSkillsRepository judgementSkillsService;

    @Autowired
    LeadershipSkillsRepository leadershipSkillsService;

    @Autowired
    ProblemSolvingSkillsRepository problemSolvingSkillsService;

    @Autowired
    TeamWorkRepository teamworkService;

    @Autowired
    TechnologicalSkillsRepository technologicalSkillsService;

    @Autowired
    CataloguingSkillsRepository cataloguingSkillsService;

    @Autowired
    AssessmentresultRepository assessmentService;

    @Autowired
    VwbehaviouralCategoryRepository behaviouralCategoryService;

    @Autowired
    VwfunctionalCategoryRepository functionalCategoryService;

    @Autowired
    VwknowledgeCategoryRepository knowledgeCategoryService;

    @Autowired
    VwprofessionalCategoryRepository professionalCategoryService;

    @Autowired
    VwtechnologicalCategoryRepository technologicalCategoryRepository;

    @Autowired
    VwoveralltotalRepository overallTotalRepository;

    @Autowired
    VwRecruitmentRepository recruitmentService;

    @Autowired
    VwrecommendationRepository recommendationService;

    @Autowired
    CataloguerprofileRepository cataloguerProfile;

    public KnowledgeSkillsRepository getKnowledgeService() {
        return knowledgeService;
    }

    public void setKnowledgeService(KnowledgeSkillsRepository knowledgeService) {
        this.knowledgeService = knowledgeService;
    }

    public ProfessionalSkillsRepository getProfessionalService() {
        return professionalService;
    }

    public void setProfessionalService(ProfessionalSkillsRepository professionalService) {
        this.professionalService = professionalService;
    }

    public UserprofileRepository getUserService() {
        return userService;
    }

    public void setUserService(UserprofileRepository userService) {
        this.userService = userService;
    }

    public ClassificationSkillsRepository getClassificationService() {
        return classificationService;
    }

    public void setClassificationService(ClassificationSkillsRepository classificationService) {
        this.classificationService = classificationService;
    }

    public CommunicationSkillsRepository getCommunicationSkillsService() {
        return communicationSkillsService;
    }

    public void setCommunicationSkillsService(CommunicationSkillsRepository communicationSkillsService) {
        this.communicationSkillsService = communicationSkillsService;
    }

    public CompetencyAndAdaptabilitySkillsRepository getCompetencyAndAdaptabilitySkillsService() {
        return competencyAndAdaptabilitySkillsService;
    }

    public void setCompetencyAndAdaptabilitySkillsService(CompetencyAndAdaptabilitySkillsRepository competencyAndAdaptabilitySkillsService) {
        this.competencyAndAdaptabilitySkillsService = competencyAndAdaptabilitySkillsService;
    }

    public IndexingSkillsRepository getIndexSkillsService() {
        return indexSkillsService;
    }

    public void setIndexSkillsService(IndexingSkillsRepository indexSkillsService) {
        this.indexSkillsService = indexSkillsService;
    }

    public JudgementSkillsRepository getJudgementSkillsService() {
        return judgementSkillsService;
    }

    public void setJudgementSkillsService(JudgementSkillsRepository judgementSkillsService) {
        this.judgementSkillsService = judgementSkillsService;
    }

    public LeadershipSkillsRepository getLeadershipSkillsService() {
        return leadershipSkillsService;
    }

    public void setLeadershipSkillsService(LeadershipSkillsRepository leadershipSkillsService) {
        this.leadershipSkillsService = leadershipSkillsService;
    }

    public ProblemSolvingSkillsRepository getProblemSolvingSkillsService() {
        return problemSolvingSkillsService;
    }

    public void setProblemSolvingSkillsService(ProblemSolvingSkillsRepository problemSolvingSkillsService) {
        this.problemSolvingSkillsService = problemSolvingSkillsService;
    }

    public TeamWorkRepository getTeamworkService() {
        return teamworkService;
    }

    public void setTeamworkService(TeamWorkRepository teamworkService) {
        this.teamworkService = teamworkService;
    }

    public TechnologicalSkillsRepository getTechnologicalSkillsService() {
        return technologicalSkillsService;
    }

    public void setTechnologicalSkillsService(TechnologicalSkillsRepository technologicalSkillsService) {
        this.technologicalSkillsService = technologicalSkillsService;
    }

    public CataloguingSkillsRepository getCataloguingSkillsService() {
        return cataloguingSkillsService;
    }

    public void setCataloguingSkillsService(CataloguingSkillsRepository cataloguingSkillsService) {
        this.cataloguingSkillsService = cataloguingSkillsService;
    }

    public AssessmentresultRepository getAssessmentService() {
        return assessmentService;
    }

    public void setAssessmentService(AssessmentresultRepository assessmentService) {
        this.assessmentService = assessmentService;
    }

    public VwbehaviouralCategoryRepository getBehaviouralCategoryService() {
        return behaviouralCategoryService;
    }

    public void setBehaviouralCategoryService(VwbehaviouralCategoryRepository behaviouralCategoryService) {
        this.behaviouralCategoryService = behaviouralCategoryService;
    }

    public VwfunctionalCategoryRepository getFunctionalCategoryService() {
        return functionalCategoryService;
    }

    public void setFunctionalCategoryService(VwfunctionalCategoryRepository functionalCategoryService) {
        this.functionalCategoryService = functionalCategoryService;
    }

    public VwknowledgeCategoryRepository getKnowledgeCategoryService() {
        return knowledgeCategoryService;
    }

    public void setKnowledgeCategoryService(VwknowledgeCategoryRepository knowledgeCategoryService) {
        this.knowledgeCategoryService = knowledgeCategoryService;
    }

    public VwprofessionalCategoryRepository getProfessionalCategoryService() {
        return professionalCategoryService;
    }

    public void setProfessionalCategoryService(VwprofessionalCategoryRepository professionalCategoryService) {
        this.professionalCategoryService = professionalCategoryService;
    }

    public VwtechnologicalCategoryRepository getTechnologicalCategoryRepository() {
        return technologicalCategoryRepository;
    }

    public void setTechnologicalCategoryRepository(VwtechnologicalCategoryRepository technologicalCategoryRepository) {
        this.technologicalCategoryRepository = technologicalCategoryRepository;
    }

    public VwoveralltotalRepository getOverallTotalRepository() {
        return overallTotalRepository;
    }

    public void setOverallTotalRepository(VwoveralltotalRepository overallTotalRepository) {
        this.overallTotalRepository = overallTotalRepository;
    }

    public VwRecruitmentRepository getRecruitmentService() {
        return recruitmentService;
    }

    public void setRecruitmentService(VwRecruitmentRepository recruitmentService) {
        this.recruitmentService = recruitmentService;
    }

    public VwrecommendationRepository getRecommendationService() {
        return recommendationService;
    }

    public void setRecommendationService(VwrecommendationRepository recommendationService) {
        this.recommendationService = recommendationService;
    }

    public CataloguerprofileRepository getCataloguerProfile() {
        return cataloguerProfile;
    }

    public void setCataloguerProfile(CataloguerprofileRepository cataloguerProfile) {
        this.cataloguerProfile = cataloguerProfile;
    }

}
