/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Knowledgeskills;
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
public class KnowledgeSkillsController {

    @Autowired
    AppService service;

    public double knowledgeSkills = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";

    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Knowledge Skills Assessment Completed\n"
            + "</div>";

    @GetMapping("/knowledgeskills")
    public String getKnowledgeSkills(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Knowledgeskills> list = service.getKnowledgeService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/knowledgeskills";
        }

    }

    @PostMapping("/knowledgeskills")
    public String postKnowledgeSkills(
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
            ModelMap model
    ) {
        if (q1 != null && q1.equals("C")) {
            knowledgeSkills++;
        }
        if (q2 != null && q2.equals("E")) {
            knowledgeSkills++;
        }
        if (q3 != null && q3.equals("D")) {
            knowledgeSkills++;
        }
        if (q4 != null && q4.equals("E")) {
            knowledgeSkills++;
        }
        if (q5 != null && q5.equals("B")) {
            knowledgeSkills++;
        }
        if (q6 != null && q6.equals("D")) {
            knowledgeSkills++;
        }
        if (q7 != null && q7.equals("E")) {
            knowledgeSkills++;
        }
        if (q8 != null && q8.equals("E")) {
            knowledgeSkills++;
        }
        if (q9 != null && q9.equals("B")) {
            knowledgeSkills++;
        }
        if (q10 != null && q10.equals("D")) {
            knowledgeSkills++;
        }
        if (q11 != null && q11.equals("B")) {
            knowledgeSkills++;
        }
        if (q12 != null && q12.equals("D")) {
            knowledgeSkills++;
        }
        if (q13 != null && q13.equals("A")) {
            knowledgeSkills++;
        }
        if (q14 != null && q14.equals("D")) {
            knowledgeSkills++;
        }
        if (q15 != null && q15.equals("B")) {
            knowledgeSkills++;
        }
        if (q16 != null && q16.equals("B")) {
            knowledgeSkills++;
        }
        if (q17 != null && q17.equals("A")) {
            knowledgeSkills++;
        }
        if (q18 != null && q18.equals("A")) {
            knowledgeSkills++;
        }
        if (q19 != null && q19.equals("D")) {
            knowledgeSkills++;
        }
        if (q20 != null && q20.equals("A")) {
            knowledgeSkills++;
        }
        if (q21 != null && q21.equals("C")) {
            knowledgeSkills++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 21;
        double percent = (knowledgeSkills / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Knowledgeskills k = new Knowledgeskills();
        k.setScore(knowledgeSkills);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);

        

        service.getKnowledgeService().save(k);

        knowledgeSkills = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }
}
