package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.File;
import java.util.List;
import java.util.UUID;

@Service
public class BoardServicelmpl implements BoardService{

    @Autowired
    BoardDAO boardDAO;
    @Override
    public int insertBoard(BoardVO vo, MultipartFile file){

        return boardDAO.insertBoard(vo, file);
    }
    @Override
    public int deleteBoard(int seq) {
        return boardDAO.deleteBoard(seq);
    }
    @Override
    public int updateBoard(BoardVO vo, MultipartFile file){
        return boardDAO.updateBoard(vo, file);
    }
    @Override
    public BoardVO getBoard(int seq) {
        return boardDAO.getBoard(seq);
    }
    @Override
    public List<BoardVO> getBoardList() {
        return boardDAO.getBoardList();
    }


}
