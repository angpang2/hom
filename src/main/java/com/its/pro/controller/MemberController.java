package com.its.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
    @GetMapping("/login")
    public String loginpage(){
        return "loginPage";
    }

    @GetMapping("/save")
    public String savePage(){
        return "savePage";
    }

}
