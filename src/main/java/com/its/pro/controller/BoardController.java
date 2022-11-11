package com.its.pro.controller;

import com.its.pro.DTO.BoardDTO;
import com.its.pro.DTO.CommentDTO;
import com.its.pro.DTO.PageDTO;
import com.its.pro.comons.PagingConst;
import com.its.pro.service.BoardService;
import com.its.pro.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;
    @Autowired
    private CommentService commentService;


    @GetMapping("/boardList")
    public String boardList(Model model , @RequestParam(value = "page",required = false,defaultValue = "1")int page , @RequestParam(value = "selectView",required = false , defaultValue = "1")int selectView){
        List<BoardDTO>boardDTOList = boardService.boardList(page,selectView);
        model.addAttribute("BoardList",boardDTOList);
       PageDTO pageDTO = boardService.boardPage(page);
        System.out.println("pageDTO확인 = " + pageDTO);
        model.addAttribute("paging",pageDTO);


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

    @GetMapping("/page")
    public String page(@RequestParam("page")int page){
        PagingConst.PAGE_LIMIT = page;
        return "redirect:/boardList";

    }



    @GetMapping("/pageView")
    public String boardList(Model model,@RequestParam(value = "page",required = false,defaultValue = "1")int page,
     @RequestParam(value = "PAGE_LIMIT",required = false, defaultValue = "5")int PAGE_LIMIT ,@RequestParam(value = "selectView",required = false , defaultValue = "1")int selectView){
        List<BoardDTO>boardDTOList = boardService.boardList2(page,PAGE_LIMIT ,selectView);
        model.addAttribute("BoardList",boardDTOList);
        PageDTO pageDTO = boardService.boardPage2(page,PAGE_LIMIT);
        System.out.println("pageDTO확인 = " + pageDTO);
        model.addAttribute("paging",pageDTO);
        model.addAttribute("pageLimit",PAGE_LIMIT);
        model.addAttribute("select",selectView);
        return "boardList";
    }

    @GetMapping("selectView")
        public String boardList2(Model model,@RequestParam(value = "page",required = false,defaultValue = "1")int page,
        @RequestParam(value = "PAGE_LIMIT",required = false, defaultValue = "5")int PAGE_LIMIT , @RequestParam(value = "selectView",required = false , defaultValue = "1")int selectView){
            List<BoardDTO>boardDTOList = boardService.boardList3(page,PAGE_LIMIT,selectView);
            model.addAttribute("BoardList",boardDTOList);
            PageDTO pageDTO = boardService.boardPage2(page,PAGE_LIMIT);
            System.out.println("pageDTO확인 = " + pageDTO);
            model.addAttribute("paging",pageDTO);
            model.addAttribute("pageLimit",PAGE_LIMIT);
            model.addAttribute("select",selectView);
            return "boardList";
        }



    }









