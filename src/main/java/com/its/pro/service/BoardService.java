package com.its.pro.service;

import com.its.pro.DTO.BoardDTO;
import com.its.pro.DTO.PageDTO;
import com.its.pro.comons.PagingConst;
import com.its.pro.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


    public List<BoardDTO> boardList(int page) {
        int pagingStart = (page-1)*PagingConst.PAGE_LIMIT;
        Map<String , Integer> pagingParams = new HashMap<>();
        pagingParams.put("start",pagingStart);
        pagingParams.put("limit",PagingConst.PAGE_LIMIT);
        List<BoardDTO>pagingList = boardRepository.boardList(pagingParams);
        return pagingList;



    }

    public BoardDTO boardDetail(Long id) {
        return boardRepository.boardDetail(id);
    }

    public void boardUpdate(BoardDTO boardDTO) {
        boardRepository.boardUpdate(boardDTO);
    }

    public void boardDel(Long id) {
        boardRepository.boardDel(id);
    }

    public void boardup(Long id) {
        boardRepository.boardup(id);
    }

    public PageDTO boardPage(int page) {
       int pageCount = boardRepository.boardPage();
       int maxPage = (int) (Math.ceil((double) pageCount / PagingConst.PAGE_LIMIT));
        int startPage = (((int)(Math.ceil((double) page / PagingConst.BLOCK_LIMIT))) - 1) * PagingConst.BLOCK_LIMIT + 1;
        int endPage = startPage + PagingConst.BLOCK_LIMIT - 1;
        if(endPage>maxPage){
            endPage = maxPage;
        }
        PageDTO pageDTO = new PageDTO();
        pageDTO.setPage(page);
        pageDTO.setMaxPage(maxPage);
        pageDTO.setEndPage(endPage);
        pageDTO.setStartPage(startPage);
        return pageDTO;

    }

    public List<BoardDTO> boardList2(int page, int page_limit) {
        int pagingStart = (page-1)*page_limit;
        Map<String , Integer> pagingParams = new HashMap<>();
        pagingParams.put("start",pagingStart);
        pagingParams.put("limit",page_limit);
        List<BoardDTO>pagingList = boardRepository.boardList(pagingParams);
        return pagingList;
    }


    public PageDTO boardPage2(int page, int page_limit) {
        int pageCount = boardRepository.boardPage();
        int maxPage = (int) (Math.ceil((double) pageCount / page_limit));
        int startPage = (((int)(Math.ceil((double) page / PagingConst.BLOCK_LIMIT))) - 1) * PagingConst.BLOCK_LIMIT + 1;
        int endPage = startPage + PagingConst.BLOCK_LIMIT - 1;
        if(endPage>maxPage){
            endPage = maxPage;
        }
        PageDTO pageDTO = new PageDTO();
        pageDTO.setPage(page);
        pageDTO.setMaxPage(maxPage);
        pageDTO.setEndPage(endPage);
        pageDTO.setStartPage(startPage);
        return pageDTO;

    }
}