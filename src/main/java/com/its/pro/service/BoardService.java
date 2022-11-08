package com.its.pro.service;

import com.its.pro.DTO.BoardDTO;
import com.its.pro.DTO.MemberDTO;
import com.its.pro.repository.BoardRepository;
import com.its.pro.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;

    public void boardSave(BoardDTO boardDTO) throws IOException {
        if (!boardDTO.getBoardFile().isEmpty()) {
            MultipartFile boardFile = boardDTO.getBoardFile();
            String originalFilename = boardFile.getOriginalFilename();
            String storedFilename = System.currentTimeMillis() + "-" + originalFilename;
            boardDTO.setOriginalFileName(originalFilename);
            boardDTO.setStoredFileName(storedFilename);
            String savePath = "D:\\spring_img\\" + storedFilename;
            boardFile.transferTo(new File(savePath));
            boardDTO.setFileAttached(1);
            BoardDTO savedBoard = boardRepository.boardSave(boardDTO);
            boardRepository.saveFileName(savedBoard);
        } else {
            boardDTO.setFileAttached(0);
            boardRepository.boardSave(boardDTO);

        }
    }


    public List<BoardDTO> boardList() {
        return boardRepository.boardList();
    }
}