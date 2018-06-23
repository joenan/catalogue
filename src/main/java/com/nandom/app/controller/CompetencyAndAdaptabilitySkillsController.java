/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Consistencyandadaptabilityskills;
import com.nandom.app.entities.Userprofile;
import com.nandom.app.service.AppService;
import com.nandom.app.service.AssessmentStatus;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Nandom Gusen
 */
@Controller
public class CompetencyAndAdaptabilitySkillsController {

    @Autowired
    AppService service;

    public double consistencyAndAdaptibilitySkills = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";
    
    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Competency And Adaptability Skills Assessment Completed\n"
            + "</div>";

    @GetMapping("/competencyandadaptabilityskills")
    public String getConsistAndAdaptabilitySkills(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Consistencyandadaptabilityskills> list = service.getCompetencyAndAdaptabilitySkillsService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/competencyandadaptabilityskills";
        }

    }

    @PostMapping("/competencyandadaptabilityskills")
    public String postConsistAndAdaptabilitySkills(
            HttpServletRequest request,
            @RequestParam(value = "question-1-answers", required = false) String q1,
            @RequestParam(value = "question-2-answers", required = false) String q2,
            @RequestParam(value = "question-3-answers", required = false) String q3,
            @RequestParam(value = "question-4-answers", required = false) String q4,
            @RequestParam(value = "question-5-answers", required = false) String q5,
            ModelMap model) {

        if (q1 != null && q1.equals("B")) {
            consistencyAndAdaptibilitySkills++;
        }

        if (q2 != null && q2.equals("A")) {
            consistencyAndAdaptibilitySkills++;
        }

        if (q3 != null && q3.equals("A")) {
            consistencyAndAdaptibilitySkills++;
        }

        if (q4 != null && q4.equals("A")) {
            consistencyAndAdaptibilitySkills++;
        }

        if (q5 != null && q5.equals("A")) {
            consistencyAndAdaptibilitySkills++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 5;
        double percent = (consistencyAndAdaptibilitySkills / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Consistencyandadaptabilityskills k = new Consistencyandadaptabilityskills();
        k.setScore(consistencyAndAdaptibilitySkills);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);
        
        
        service.getCompetencyAndAdaptabilitySkillsService().save(k);

        consistencyAndAdaptibilitySkills = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }

}
