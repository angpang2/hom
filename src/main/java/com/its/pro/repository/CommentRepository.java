package com.its.pro.repository;


import com.its.pro.DTO.BoardDTO;
import com.its.pro.DTO.CommentDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommentRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void save(CommentDTO commentDTO) {

        sql.insert("Comment.save", commentDTO);
        Long id = commentDTO.getBoardId();
        BoardDTO result = sql.selectOne("Board.boardDetail",id);
        if(result.getBoardC() == 0){
            sql.update("Board.boardC",id);
            System.out.println("commentDTO = " + commentDTO);
            System.out.printf("이프문넘어옴");
        }

    }

    public List<CommentDTO> findAll(Long boardId) {
        return sql.selectList("Comment.findAll", boardId);
    }
}