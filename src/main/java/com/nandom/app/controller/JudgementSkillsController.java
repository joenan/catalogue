/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Judgementskills;
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
public class JudgementSkillsController {

    @Autowired
    AppService service;

    public double judgementSkills = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";
    
    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Judgement Skills Assessment Completed\n"
            + "</div>";

    @GetMapping("/judgementskills")
    public String getJudgementSkills(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Judgementskills> list = service.getJudgementSkillsService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/judgementskills";
        }

    }

    @PostMapping("/judgementskills")
    public String postJudgementSkills(
            HttpServletRequest request,
            @RequestParam(value = "question-1-answers", required = false) String q1,
            @RequestParam(value = "question-2-answers", required = false) String q2,
            @RequestParam(value = "question-3-answers", required = false) String q3,
            @RequestParam(value = "question-4-answers", required = false) String q4,
            @RequestParam(value = "question-5-answers", required = false) String q5,
            @RequestParam(value = "question-6-answers", required = false) String q6,
            @RequestParam(value = "question-7-answers", required = false) String q7,
            ModelMap model) {

        if (q1 != null && q1.equals("B")) {
            judgementSkills++;
        }
        if (q2 != null && q2.equals("A")) {
            judgementSkills++;
        }
        if (q3 != null && q3.equals("C")) {
            judgementSkills++;
        }
        if (q4 != null && q4.equals("C")) {
            judgementSkills++;
        }
        if (q5 != null && q5.equals("A")) {
            judgementSkills++;
        }
        if (q6 != null && q6.equals("A")) {
            judgementSkills++;
        }
        if (q7 != null && q7.equals("C")) {
            judgementSkills++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 9;
        double percent = (judgementSkills / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Judgementskills k = new Judgementskills();
        k.setScore(judgementSkills);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);
        
              
        service.getJudgementSkillsService().save(k);
        judgementSkills = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }

}
