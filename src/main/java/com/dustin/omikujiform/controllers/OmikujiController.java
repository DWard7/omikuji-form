package com.dustin.omikujiform.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {

  @RequestMapping("/omikuji")
  public String index() {
    return "index.jsp";
  }

  @PostMapping("/omikuji/show")
  public String show(
    @RequestParam("years") String years,
    @RequestParam("city") String city,
    @RequestParam("person") String person,
    @RequestParam("hobby") String hobby,
    @RequestParam("thing") String thing,
    @RequestParam("someone") String someone,
    HttpSession session
  ) {
    session.setAttribute("years", years);
    session.setAttribute("city", city);
    session.setAttribute("person", person);
    session.setAttribute("hobby", hobby);
    session.setAttribute("thing", thing);
    session.setAttribute("someone", someone);
    return "redirect:/omikuji/show";
  }

  @RequestMapping("/omikuji/show")
  public String display(){
    return "show.jsp";
  }
}
