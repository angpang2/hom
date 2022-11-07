package com.its.pro.controller;

import com.its.pro.DTO.MemberDTO;
import com.its.pro.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;







@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String savePage(){
        return "savePage";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) throws IOException {
        System.out.println("memberDTO = " + memberDTO);
        memberService.save(memberDTO);
       return "index";
    }

    @GetMapping("/emailCheck")
    public @ResponseBody String mailCheck(@RequestParam("value1")String memberEmail){
        System.out.println(memberEmail);
        MemberDTO result =memberService.emailCheck(memberEmail);
        if(result==null){
            return "yes";
        }else {
            return "no";
        }
    }


    @GetMapping("/login")
public String login(){
        return "loginPage";
    }















}

