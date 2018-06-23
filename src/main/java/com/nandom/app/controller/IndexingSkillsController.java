/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Indexingskills;
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
public class IndexingSkillsController {

    @Autowired
    AppService service;

    public double indexing = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";
    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Indexing Skills Assessment Completed\n"
            + "</div>";

    @GetMapping("/indexingskills")
    public String getIndexingSkills(ModelMap model, HttpServletRequest request) {

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Indexingskills> list = service.getIndexSkillsService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/indexingskills";
        }

    }

    @PostMapping("/indexingskills")
    public String postIndexingSkills(
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
            ModelMap model) {

        if (q1 != null && q1.equals("A")) {
            indexing++;
        }
        if (q2 != null && q2.equals("A")) {
            indexing++;
        }
        if (q3 != null && q3.equals("A")) {
            indexing++;
        }
        if (q4 != null && q4.equals("A")) {
            indexing++;
        }
        if (q5 != null && q5.equals("A")) {
            indexing++;
        }
        if (q6 != null && q6.equals("A")) {
            indexing++;
        }
        if (q7 != null && q7.equals("A")) {
            indexing++;
        }
        if (q8 != null && q8.equals("C")) {
            indexing++;
        }
        if (q9 != null && q9.equals("D")) {
            indexing++;
        }
            if (q10 != null && q10.equals("B")) {
            indexing++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 10;
        double percent = (indexing / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Indexingskills k = new Indexingskills();
        k.setScore(indexing);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);
        
       
        
        service.getIndexSkillsService().save(k);
        indexing = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }

}
