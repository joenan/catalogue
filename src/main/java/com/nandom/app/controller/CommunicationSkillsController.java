/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Communicationskills;
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
public class CommunicationSkillsController {

    public double communicationSkills = 0;

    @Autowired
    AppService service;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";

    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Communication Skills Assessment Completed\n"
            + "</div>";

    @GetMapping("/communicationskills")
    public String getCommunicationSkills(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Communicationskills> list = service.getCommunicationSkillsService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/communicationskills";
        }

    }

    @PostMapping("/communicationskills")
    public String postCommunicationSkills(
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
            ModelMap model) {

        if (q1 != null && q1.equals("A")) {
            communicationSkills++;
        }
        if (q2 != null && q2.equals("D")) {
            communicationSkills++;
        }
        if (q3 != null && q3.equals("D")) {
            communicationSkills++;
        }
        if (q4 != null && q4.equals("A")) {
            communicationSkills++;
        }
        if (q5 != null && q5.equals("B")) {
            communicationSkills++;
        }
        if (q6 != null && q6.equals("A")) {
            communicationSkills++;
        }
        if (q7 != null && q7.equals("B")) {
            communicationSkills++;
        }
        if (q8 != null && q8.equals("B")) {
            communicationSkills++;
        }
        if (q9 != null && q9.equals("B")) {
            communicationSkills++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 9;
        double percent = (communicationSkills / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Communicationskills k = new Communicationskills();
        k.setScore(communicationSkills);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);


        service.getCommunicationSkillsService().save(k);

        communicationSkills = 0;

        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }

}
