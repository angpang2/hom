package com.its.pro.controller;

import com.its.pro.DTO.BoardDTO;
import com.its.pro.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.IOException;
import java.util.List;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    @GetMapping("/boardList")
    public String boardList(Model model){
        List<BoardDTO>boardDTOList = boardService.boardList();
        model.addAttribute("BoardList",boardDTOList);
        return "boardList";
    }

    @GetMapping("/boardSave")
    public String boardSavePage(){
        return "boardSave";
    }

    @PostMapping("/boardSave")
    public String boardSave(@ModelAttribute BoardDTO boardDTO ) throws IOException {
        boardService.boardSave(boardDTO);
        return "/index";
    }
}
