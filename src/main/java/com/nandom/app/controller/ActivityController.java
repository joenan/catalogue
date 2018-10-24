/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nandom.app.controller;

import com.nandom.app.entities.Cataloguerprofile;
import com.nandom.app.entities.Userprofile;
import com.nandom.app.service.AppService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
public class ActivityController {

    @Autowired
    AppService service;

    @PostMapping("/saveActivity")
    public String saveActivity(HttpServletRequest request, @RequestParam("activity") String noofmaterials, @RequestParam("type") String activitytype, ModelMap map) {
        HttpSession session = request.getSession(false);
        Userprofile user = (Userprofile) session.getAttribute("user");
        Cataloguerprofile cp = new Cataloguerprofile();
        cp.setDescription(activitytype);
        cp.setNumberofmaterials(Integer.valueOf(noofmaterials));
        cp.setUserid(user);
        service.getCataloguerProfile().save(cp);
        map.addAttribute("listOfRegistries", service.getCataloguerProfile().findAll());
        
        return "dashboard/activitylog";
    }

    @GetMapping("/activitylog")
    public String getActivityList(ModelMap map) {
        map.addAttribute("listOfRegistries", service.getCataloguerProfile().findAll());
        return "dashboard/activitylog";
    }

    @GetMapping("/deleteactivity/{id}")
    public String deleteActivity(@PathVariable("id") int id, ModelMap map) {
        this.service.getCataloguerProfile().delete(id);
        map.addAttribute("listOfRegistries", service.getCataloguerProfile().findAll());
        return "dashboard/activitylog";
    }

    @GetMapping("/dashboard")
    public String getDashboard() {
        return "dashboard/dashboard";
    }

}
