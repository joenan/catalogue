/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Leadershipskills;
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
public class LeadershipSkillsController {

    public double leadershipSkills = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";

    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Leadership Skills Assessment Completed\n"
            + "</div>";

    @Autowired
    AppService service;

    @GetMapping("/leadershipskills")
    public String getLeadershipSkills(HttpServletRequest request, ModelMap model) {

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Leadershipskills> list = service.getLeadershipSkillsService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/leadershipskills";
        }

    }

    @PostMapping("/leadershipskills")
    public String postLeadershipSkills(
            HttpServletRequest request,
            @RequestParam(value = "question-1-answers", required = false) String q1,
            @RequestParam(value = "question-2-answers", required = false) String q2,
            @RequestParam(value = "question-3-answers", required = false) String q3,
            ModelMap model) {

        if (q1 != null && q1.equals("D")) {
            leadershipSkills++;
        }
        if (q2 != null && q2.equals("B")) {
            leadershipSkills++;
        }
        if (q3 != null && q3.equals("A")) {
            leadershipSkills++;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 3;
        double percent = (leadershipSkills / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Leadershipskills k = new Leadershipskills();
        k.setScore(leadershipSkills);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(numberOfQuestions);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);

       
        service.getLeadershipSkillsService().save(k);
        leadershipSkills = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }

}
