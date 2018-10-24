/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Teamwork;
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
public class TeamworkController {

    public double teamWork = 0;

    public String examStatusAlert = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "You have already written this assessment\n"
            + "</div>";

    public String examCompleted = "<div id=\"success-alert\" class=\"alert alert-danger\" data-auto-dismiss=\"3000\">\n"
            + "Teamwork Skills Assessment Completed\n"
            + "</div>";

    @Autowired
    AppService service;

    @GetMapping("/teamwork")
    public String getTeamwork(ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        List<Teamwork> list = service.getTeamworkService().findByStatus(user, AssessmentStatus.WRITTEN);
        if (list != null && !list.isEmpty()) {

            model.addAttribute("status", examStatusAlert);
            return "dashboard/dashboard";

        } else {
            return "category/teamwork";
        }

    }

    @PostMapping("/teamwork")
    public String postTeamwork(
            HttpServletRequest request,
            @RequestParam(value = "question-1-answers", required = false) String q1, ModelMap model) {

        if (q1 != null && q1.equals("C")) {
            ++teamWork;
        }

        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");

        Integer numberOfQuestions = 1;
        double percent = (teamWork / numberOfQuestions) * (100 / 1);
        DecimalFormat df = new DecimalFormat("##");
        String answer = df.format(percent);
        Integer percentageScore = Integer.valueOf(answer);

        Teamwork k = new Teamwork();
        k.setScore(teamWork);
        k.setStatus(AssessmentStatus.WRITTEN);
        k.setNoofquestions(1);
        k.setPercentagescore(percentageScore);
        k.setUserid(user);

        service.getTeamworkService().save(k);
        teamWork = 0;
        model.addAttribute("status", examCompleted);
        return "dashboard/dashboard";
    }

}
