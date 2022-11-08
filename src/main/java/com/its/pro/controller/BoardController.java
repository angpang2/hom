package com.its.pro.controller;

import com.its.pro.DTO.BoardDTO;
import com.its.pro.DTO.CommentDTO;
import com.its.pro.service.BoardService;
import com.its.pro.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;
    @Autowired
    private CommentService commentService;


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

    @GetMapping("/board")
    public String board(Model model , @RequestParam("id")Long id){
        boardService.boardup(id);
       BoardDTO boardDTO  = boardService.boardDetail(id);
       model.addAttribute("board",boardDTO);
        List<CommentDTO> commentDTOList = commentService.findAll(id);
        model.addAttribute("commentList", commentDTOList);
        return "boardDetail";
    }

    @GetMapping("/boardUpdate")
    public String boardUpdate(Model model , @RequestParam("id")Long id){
        BoardDTO boardDTO  = boardService.boardDetail(id);
        model.addAttribute("board",boardDTO);
        return "/boardUpdate";
    }


    @PostMapping("/boardUpdate")
    public String update(@ModelAttribute BoardDTO boardDTO){
        boardService.boardUpdate(boardDTO);
        return "redirect:/boardList";
    }

    @GetMapping("/boardDel")
    public String del( @RequestParam("id")Long id){
        boardService.boardDel(id);
        return "redirect:/boardList";
    }

}
