package com.its.pro.controller;



import com.its.pro.DTO.CommentDTO;
import com.its.pro.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CommentController {
    @Autowired
    private CommentService commentService;
//    @PostMapping("/comment/save")
//    public @ResponseBody List<CommentDTO> comment_save(@ModelAttribute CommentDTO commentDTO,Model model){
////        CommentDTO commentDTO = new CommentDTO();
////        commentDTO.setCommentWriter(commentWriter);
////        commentDTO.setCommentContents(commentContents);
////        commentDTO.setBoardId(boardId);
//        List<CommentDTO>commentDTOList = commentService.save(commentDTO);
//        model.addAttribute("commentList",commentDTOList);
//        System.out.println("컨트롤러에서 받는값"+commentDTOList);
//        return commentDTOList;
//    }

    @PostMapping("/comment/save")
    public @ResponseBody List<CommentDTO>save(@ModelAttribute CommentDTO commentDTO) {
        commentService.save(commentDTO);
        List<CommentDTO> commentDTOList = commentService.findAll(commentDTO.getBoardId());
        return commentDTOList;
    }









//    @PostMapping("/comment/save")
//    public List<CommentDTO> com_check(@RequestParam("value1")Long comment_id,Model model){
//        List<CommentDTO>result = commentService.check(comment_id);
//        model.addAttribute("comment",result);
//        return null;
//    }

}
