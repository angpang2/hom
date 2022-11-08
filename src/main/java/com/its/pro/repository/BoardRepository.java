package com.its.pro.repository;

import com.its.pro.DTO.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public BoardDTO boardSave(BoardDTO boardDTO) {
        sql.insert("Board.save",boardDTO);
        return boardDTO;
    }

    public void saveFileName(BoardDTO boardDTO) {
        sql.insert("Board.saveFile",boardDTO);
    }

    public List<BoardDTO> boardList() {
      return sql.selectList("Board.boardList");
    }

    public BoardDTO boardDetail(Long id) {
        return sql.selectOne("Board.boardDetail",id);
    }

    public void boardUpdate(BoardDTO boardDTO) {
        sql.update("Board.boardUpdate",boardDTO);
    }

    public void boardDel(Long id) {
        sql.delete("Board.boardDel",id);
    }
}