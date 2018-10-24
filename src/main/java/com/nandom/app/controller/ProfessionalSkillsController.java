/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Professionalskills;
import com.nandom.app.entities.Userprofile;
import com.nandom.app.service.AppService;
import com.nandom.app.service.AssessmentStatus;
import java.text.DecimalFormat;
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
public class ProfessionalSkillsController {

    @Autowired
    AppService service;

    public double professionalSkills = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";

    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Professional Skills Assessment Completed\n"
            + "</div>";

    @GetMapping("/professionalskills")
    public String getIndexingSkills(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Professionalskills> list = service.getProfessionalService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/professionalskills";
        }

    }

    @PostMapping("/professionalskills")
    public String getProfessionalSkillsQuestions(
            HttpServletRequest request,
            @RequestParam(value = "question-1-answers", required = false) String q1,
            @RequestParam(value = "question-2-answers", required = false) String q2,
            @RequestParam(value = "question-3-answers", required = false) String q3,
            @RequestParam(value = "question-4-answers", required = false) String q4,
            @RequestParam(value = "question-5-answers", required = false) String q5,
            @RequestParam(value = "question-6-answers", required = false) String q6,
            @RequestParam(value = "question-7-answers", required = false) String q7,
            @RequestParam(value = "question-8-answers", required = false) String q8,
            @RequestParam(value = "question-9-answers", required = false) String q9,
            @RequestParam(value = "question-10-answers", required = false) String q10,
            @RequestParam(value = "question-11-answers", required = false) String q11,
            @RequestParam(value = "question-12-answers", required = false) String q12,
            @RequestParam(value = "question-13-answers", required = false) String q13,
            @RequestParam(value = "question-14-answers", required = false) String q14,
            @RequestParam(value = "question-15-answers", required = false) String q15,
            @RequestParam(value = "question-16-answers", required = false) String q16,
            @RequestParam(value = "question-17-answers", required = false) String q17,
            @RequestParam(value = "question-18-answers", required = false) String q18,
            @RequestParam(value = "question-19-answers", required = false) String q19,
            @RequestParam(value = "question-20-answers", required = false) String q20,
            @RequestParam(value = "question-21-answers", required = false) String q21,
            @RequestParam(value = "question-22-answers", required = false) String q22,
            @RequestParam(value = "question-23-answers", required = false) String q23,
            @RequestParam(value = "question-24-answers", required = false) String q24,
            @RequestParam(value = "question-25-answers", required = false) String q25,
            @RequestParam(value = "question-26-answers", required = false) String q26,
            @RequestParam(value = "question-27-answers", required = false) String q27,
            @RequestParam(value = "question-28-answers", required = false) String q28,
            @RequestParam(value = "question-29-answers", required = false) String q29,
            @RequestParam(value = "question-30-answers", required = false) String q30,
            @RequestParam(value = "question-31-answers", required = false) String q31,
            @RequestParam(value = "question-32-answers", required = false) String q32,
            @RequestParam(value = "question-33-answers", required = false) String q33,
            @RequestParam(value = "question-34-answers", required = false) String q34,
            @RequestParam(value = "question-35-answers", required = false) String q35,
            ModelMap model) {

        if (q1 != null && q1.equals("D")) {
            professionalSkills++;
        }
        if (q2 != null && q2.equals("A")) {
            professionalSkills++;
        }
        if (q3 != null && q3.equals("B")) {
            professionalSkills++;
        }
        if (q4 != null && q4.equals("A")) {
            professionalSkills++;
        }
        if (q5 != null && q5.equals("B")) {
            professionalSkills++;
        }
        if (q6 != null && q6.equals("A")) {
            professionalSkills++;
        }
        if (q7 != null && q7.equals("B")) {
            professionalSkills++;
        }
        if (q8 != null && q8.equals("B")) {
            professionalSkills++;
        }
        if (q9 != null && q9.equals("A")) {
            professionalSkills++;
        }
        if (q10 != null && q10.equals("A")) {
            professionalSkills++;
        }
        if (q11 != null && q11.equals("A")) {
            professionalSkills++;
        }
        if (q12 != null && q12.equals("A")) {
            professionalSkills++;
        }
        if (q13 != null && q13.equals("A")) {
            professionalSkills++;
        }
        if (q14 != null && q14.equals("A")) {
            professionalSkills++;
        }
        if (q15 != null && q15.equals("A")) {
            professionalSkills++;
        }
        if (q16 != null && q16.equals("B")) {
            professionalSkills++;
        }
        if (q17 != null && q17.equals("B")) {
            professionalSkills++;
        }
        if (q18 != null && q18.equals("D")) {
            professionalSkills++;
        }
        if (q19 != null && q19.equals("C")) {
            professionalSkills++;
        }
        if (q20 != null && q20.equals("A")) {
            professionalSkills++;
        }
        if (q21 != null && q21.equals("A")) {
            professionalSkills++;
        }
        if (q22 != null && q22.equals("A")) {
            professionalSkills++;
        }
        if (q23 != null && q23.equals("A")) {
            professionalSkills++;
        }
        if (q24 != null && q24.equals("A")) {
            professionalSkills++;
        }
        if (q25 != null && q25.equals("A")) {
            professionalSkills++;
        }
        if (q26 != null && q26.equals("A")) {
            professionalSkills++;
        }
        if (q27 != null && q27.equals("A")) {
            professionalSkills++;
        }
        if (q28 != null && q28.equals("A")) {
            professionalSkills++;
        }
        if (q29 != null && q29.equals("A")) {
            professionalSkills++;
        }
        if (q30 != null && q30.equals("A")) {
            professionalSkills++;
        }
        if (q31 != null && q31.equals("A")) {
            professionalSkills++;
        }
        if (q32 != null && q32.equals("A")) {
            professionalSkills++;
        }
        if (q33 != null && q33.equals("A")) {
            professionalSkills++;
        }
        if (q34 != null && q34.equals("A")) {
            professionalSkills++;
        }
        if (q35 != null && q35.equals("A")) {
            professionalSkills++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 35;
        double percent = (professionalSkills / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Professionalskills k = new Professionalskills();
        k.setScore(professionalSkills);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);
        
       

        service.getProfessionalService().save(k);
        professionalSkills = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";

    }
}
