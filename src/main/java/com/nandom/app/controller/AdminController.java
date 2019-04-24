/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Userprofile;
import com.nandom.app.entities.Vwbehaviouralcategory;
import com.nandom.app.entities.Vwfunctionalcategory;
import com.nandom.app.entities.Vwknowledgecategory;
import com.nandom.app.entities.Vwoveralltotal;
import com.nandom.app.entities.Vwprofessionalcategory;
import com.nandom.app.entities.Vwtechnologicalcategory;
import com.nandom.app.service.AppService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Nandom Gusen
 */
@Controller
public class AdminController {

    @Autowired
    AppService service;

    static Map<Object, Object> map = null;

    String chartContainer = "<div id=\"chartContainer\" style=\"height: 370px; width: 100%;\"></div>";

    String failedLogin = " <div class=\"alert alert-warning alert-dismissible\" role=\"alert\">\n"
            + "                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n"
            + "                            <strong>Login Failed!</strong> Check your email and password again.\n"
            + "                        </div>";

    @GetMapping("/adminLogin")
    public String getAdminLogin(ModelMap model) {
        return "index/adminform";
    }

    @PostMapping("/adminLogin")
    public String postAdminLogin(ModelMap model, @RequestParam("username") String username, @RequestParam("password") String password) {
        if (username.equals("admin") && password.equals("admin")) {
            return "redirect:admin";
        } else {
            model.addAttribute("loginError", failedLogin);
            return "index/adminform";
        }

    }

    @GetMapping("/admin")
    public String getAdminPage(ModelMap model) {
        model.addAttribute("performance", service.getOverallTotalRepository().findAll());
        return "admin/performance";
    }

    @GetMapping("/admin/performancechart/{id}")
    public String getPerformanceChart(ModelMap model, @PathVariable("id") Integer id) {

        Vwoveralltotal entity = service.getOverallTotalRepository().findEntityById(id);

        List<List<Map<Object, Object>>> performanceList = new ArrayList<List<Map<Object, Object>>>();
        List<Map<Object, Object>> dataPoints1 = new ArrayList<Map<Object, Object>>();

        map = new HashMap<Object, Object>();
        map.put("label", "Behavioural category");
        map.put("y", entity.getBehaviouralcategoryscore());
        dataPoints1.add(map);
        map = new HashMap<Object, Object>();
        map.put("label", "Functional categoryscore");
        map.put("y", entity.getFunctionalcategoryscore());
        dataPoints1.add(map);
        map = new HashMap<Object, Object>();
        map.put("label", "Knowledge categoryscore");
        map.put("y", entity.getKnowledgecategoryscore());
        dataPoints1.add(map);
        map = new HashMap<Object, Object>();
        map.put("label", "Professional categoryscore");
        map.put("y", entity.getProfessionalcategoryscore());
        dataPoints1.add(map);
        map = new HashMap<Object, Object>();
        map.put("label", "Technological categoryscore");
        map.put("y", entity.getTechnologicalcategoryscore());
        dataPoints1.add(map);

        performanceList.add(dataPoints1);
        model.addAttribute("dataPointsList", performanceList);
        model.addAttribute("performance", service.getOverallTotalRepository().findAll());
        model.addAttribute("chartContainer", chartContainer);
        model.addAttribute("entity", entity);

        return "admin/performance";
    }

    @GetMapping("/admin/individual")
    public String getIndividualPage(ModelMap model) {
        model.addAttribute("individual", service.getOverallTotalRepository().findAll());
        model.addAttribute("userList", service.getUserService().findAll());
        return "admin/individual";
    }

    @GetMapping("/admin/invidividual/view")
    public String getIndividualPage(@RequestParam("name") String name, ModelMap model) {
        // Userprofile user = service.getUserService().findUserByName(name);
        //get Behavioural Category
        List<Vwbehaviouralcategory> behaviouralCategoryList = service.getBehaviouralCategoryService().findUserByName(name);
        List<Vwfunctionalcategory> functionalCategoryList = service.getFunctionalCategoryService().findUserByName(name);
        List<Vwknowledgecategory> knowledgeCategoryList = service.getKnowledgeCategoryService().findUserByName(name);
        List<Vwknowledgecategory> professionalCategoryList = service.getProfessionalCategoryService().findUserByName(name);
        List<Vwknowledgecategory> technologicalCategoryList = service.getTechnologicalCategoryRepository().findUserByName(name);

        model.addAttribute("behaviouralCategoryList", behaviouralCategoryList);
        model.addAttribute("functionalCategoryList", functionalCategoryList);
        model.addAttribute("knowledgeCategoryList", knowledgeCategoryList);
        model.addAttribute("professionalCategoryList", professionalCategoryList);
        model.addAttribute("technologicalCategoryList", technologicalCategoryList);

        model.addAttribute("userList", service.getUserService().findAll());
        return "admin/individual";
    }

    @GetMapping("/admin/recommendations")
    public String getRecommendationsPage(ModelMap model) {
        model.addAttribute("performance", service.getOverallTotalRepository().findAll());
        return "admin/recommendations";
    }

    @GetMapping("/admin/getrecommendation")
    public String getRecommendationsPage(ModelMap model, @RequestParam("recommendation") String recommendation) {

        if (recommendation.equals("Recruitment")) { 
            model.addAttribute("recruitment", service.getRecruitmentService().findByAverage());
            return "admin/recommendations";

        }
        if (recommendation.equals("Re-training")) {

            model.addAttribute("behaviouralretraining", service.getRecommendationService().findBehavouralByRetraining());
            model.addAttribute("functionalretraining", service.getRecommendationService().findFunctionalByRetraining());
            model.addAttribute("knowledgeretraining", service.getRecommendationService().findKnowledgerecommendationByRetraining());
            model.addAttribute("professionalretraining", service.getRecommendationService().findProfessionalrecommendationByRetraining());
            model.addAttribute("technologicalretraining", service.getRecommendationService().findTechnologicalrecommendationByRetraining());
            return "admin/recommendations";

        }
        if (recommendation.equals("Redeployment")) {

            model.addAttribute("behaviouralredeployment", service.getRecommendationService().findBehavouralByRedeployment());
            model.addAttribute("functionalredeployment", service.getRecommendationService().findFunctionalByRedeployment());
            model.addAttribute("knowledgeredeployment", service.getRecommendationService().findKnowledgerecommendationByRedeployment());
            model.addAttribute("professionalredeployment", service.getRecommendationService().findProfessionalrecommendationByRedeployment());
            model.addAttribute("technologicalredeployment", service.getRecommendationService().findTechnologicalrecommendationByRedeployment());
            return "admin/recommendations";
        }

        model.addAttribute("performance", service.getOverallTotalRepository().findAll());
        return "admin/recommendations";
    }
}
