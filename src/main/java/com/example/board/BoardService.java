package com.example.board;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface BoardService {
    public int insertBoard(BoardVO vo, MultipartFile file);
    public int deleteBoard(int seq);
    public int updateBoard(BoardVO vo, MultipartFile file);
    public BoardVO getBoard(int seq);
    public List <BoardVO> getBoardList();
}
