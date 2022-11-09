package com.its.pro.repository;

import com.its.pro.DTO.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

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

    public List<BoardDTO> boardList(Map<String, Integer> pagingParams) {
      return sql.selectList("Board.boardList",pagingParams);
    }

    public BoardDTO boardDetail(Long id) {
        BoardDTO result = sql.selectOne("Board.boardDetail",id);
        if(result.getFileAttached() == 1){
            BoardDTO file = sql.selectOne("Board.file",id);
            result.setStoredFileName(file.getStoredFileName());
            return result;
        }else {
         return result;
        }
    }

    public void boardUpdate(BoardDTO boardDTO) {
        sql.update("Board.boardUpdate",boardDTO);
    }

    public void boardDel(Long id) {
        sql.delete("Board.boardDel",id);
    }

    public void boardup(Long id) {
        sql.update("Board.boardUp",id);
    }

    public int boardPage() {
        return sql.selectOne("Board.boardCount");
    }
}