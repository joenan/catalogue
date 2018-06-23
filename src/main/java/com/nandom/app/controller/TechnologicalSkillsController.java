/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Technologicalskills;
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
public class TechnologicalSkillsController {

    @Autowired
    AppService service;

    public double technologicalSkills = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";

    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Technological Skills Assessment Completed\n"
            + "</div>";

    @GetMapping("/technologicalskills")
    public String getTechnologicalSkills(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Technologicalskills> list = service.getTechnologicalSkillsService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/technologicalskills";
        }

    }

    @PostMapping("/technologicalskills")
    public String postTechnologicalSkills(
            HttpServletRequest request,
            @RequestParam(value = "question-1-answers") String q1,
            @RequestParam(value = "question-2-answers") String q2,
            @RequestParam(value = "question-3-answers") String q3,
            @RequestParam(value = "question-4-answers") String q4,
            @RequestParam(value = "question-5-answers") String q5,
            @RequestParam(value = "question-6-answers") String q6,
            @RequestParam(value = "question-7-answers") String q7,
            @RequestParam(value = "question-8-answers") String q8,
            @RequestParam(value = "question-9-answers") String q9,
            @RequestParam(value = "question-10-answers") String q10,
            @RequestParam(value = "question-11-answers") String q11,
            @RequestParam(value = "question-12-answers") String q12,
            @RequestParam(value = "question-13-answers") String q13,
            @RequestParam(value = "question-14-answers") String q14,
            @RequestParam(value = "question-15-answers") String q15,
            @RequestParam(value = "question-16-answers") String q16,
            @RequestParam(value = "question-17-answers") String q17,
            @RequestParam(value = "question-18-answers") String q18,
            @RequestParam(value = "question-19-answers") String q19,
            @RequestParam(value = "question-20-answers") String q20,
            @RequestParam(value = "question-21-answers") String q21,
            @RequestParam(value = "question-22-answers") String q22,
            @RequestParam(value = "question-23-answers") String q23,
            @RequestParam(value = "question-24-answers") String q24,
            @RequestParam(value = "question-25-answers") String q25,
            @RequestParam(value = "question-26-answers") String q26,
            @RequestParam(value = "question-27-answers") String q27,
            @RequestParam(value = "question-28-answers") String q28,
            @RequestParam(value = "question-29-answers") String q29,
            @RequestParam(value = "question-30-answers") String q30,
            @RequestParam(value = "question-31-answers") String q31,
            @RequestParam(value = "question-32-answers") String q32,
            ModelMap model
    ) {

        if (q1 != null && q1.equals("C")) {
            technologicalSkills++;
        }
        if (q2 != null && q2.equals("D")) {
            technologicalSkills++;
        }
        if (q3 != null && q3.equals("D")) {
            technologicalSkills++;
        }
        if (q4 != null && q4.equals("D")) {
            technologicalSkills++;
        }
        if (q5 != null && q5.equals("A")) {
            technologicalSkills++;
        }
        if (q6 != null && q6.equals("C")) {
            technologicalSkills++;
        }
        if (q7 != null && q7.equals("C")) {
            technologicalSkills++;
        }
        if (q8 != null && q8.equals("D")) {
            technologicalSkills++;
        }
        if (q9 != null && q9.equals("D")) {
            technologicalSkills++;
        }
        if (q10 != null && q10.equals("D")) {
            technologicalSkills++;
        }
        if (q11 != null && q11.equals("A")) {
            technologicalSkills++;
        }
        if (q12 != null && q12.equals("A")) {
            technologicalSkills++;
        }
        if (q13 != null && q13.equals("A")) {
            technologicalSkills++;
        }
        if (q14 != null && q14.equals("A")) {
            technologicalSkills++;
        }
        if (q15 != null && q15.equals("A")) {
            technologicalSkills++;
        }
        if (q16 != null && q16.equals("A")) {
            technologicalSkills++;
        }
        if (q17 != null && q17.equals("A")) {
            technologicalSkills++;
        }
        if (q18 != null && q18.equals("A")) {
            technologicalSkills++;
        }
        if (q19 != null && q19.equals("A")) {
            technologicalSkills++;
        }
        if (q20 != null && q20.equals("A")) {
            technologicalSkills++;
        }
        if (q21 != null && q21.equals("D")) {
            technologicalSkills++;
        }
        if (q22 != null && q22.equals("D")) {
            technologicalSkills++;
        }
        if (q23 != null && q23.equals("D")) {
            technologicalSkills++;
        }
        if (q24 != null && q24.equals("D")) {
            technologicalSkills++;
        }
        if (q25 != null && q25.equals("C")) {
            technologicalSkills++;
        }
        if (q26 != null && q26.equals("A")) {
            technologicalSkills++;
        }
        if (q27 != null && q27.equals("A")) {
            technologicalSkills++;
        }
        if (q28 != null && q28.equals("A")) {
            technologicalSkills++;
        }
        if (q29 != null && q29.equals("A")) {
            technologicalSkills++;
        }
        if (q30 != null && q30.equals("A")) {
            technologicalSkills++;
        }
        if (q31 != null && q31.equals("A")) {
            technologicalSkills++;
        }
        if (q32 != null && q32.equals("B")) {
            technologicalSkills++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 32;
        double percent = (technologicalSkills / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Technologicalskills k = new Technologicalskills();
        k.setScore(technologicalSkills);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);

        service.getTechnologicalSkillsService().save(k);

        technologicalSkills = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }

}
