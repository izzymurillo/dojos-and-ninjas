package com.izzy.dojos_and_ninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izzy.dojos_and_ninjas.models.Dojo;
import com.izzy.dojos_and_ninjas.models.Ninja;
import com.izzy.dojos_and_ninjas.services.DojoService;
import com.izzy.dojos_and_ninjas.services.NinjaService;

@Controller
public class MainController {

  @Autowired DojoService dojoService;

  @Autowired NinjaService ninjaService;

  
  @RequestMapping(value={"/", "/dojos/new"})
  public String newDojo(@ModelAttribute("dojo") Dojo dojo){
    return "dojos/new.jsp";
  }

  @PostMapping("/dojos")
  public String createDojo(@ModelAttribute("dojo") Dojo dojo) {
    dojoService.createDojo(dojo);
    return "redirect:/";
  }
  
  @RequestMapping(value={"/ninjas/new"})
  public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model){
    List<Dojo> dojos = dojoService.allDojos();
    model.addAttribute("dojos", dojos);
    return "ninjas/new.jsp";
  }

  @PostMapping("/ninjas")
  public String createNinja(@ModelAttribute("ninja") Ninja ninja) {
    ninjaService.createNinja(ninja);
    return "redirect:/";
  }

  @RequestMapping("/dojos/{dojoId}")
  public String display(@PathVariable("dojoId") Long id, Model model) {
    Dojo dojo = dojoService.findDojo(id);
    model.addAttribute("dojo", dojo);
    return "dojos/show.jsp";
  }

}
