package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;
	public int insertBoard(BoardVO vo, MultipartFile file){

		int result = sqlSession.insert("Board.insertBoard", vo);

		return result;
	}



	public int deleteBoard(int seq){
		int result = sqlSession.delete("Board.deleteBoard", seq);

		return result;
	}

	public int updateBoard(BoardVO vo, MultipartFile file){
		int result = sqlSession.update("Board.updateBoard",vo);


		return result;
	}

	public BoardVO getBoard(int seq) {
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}

	public List<BoardVO> getBoardList(){
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}


	public String getPhotoFilename(int seq) {
		String filename = null;
		filename=sqlSession.selectOne("Board.getphoto",seq);

		return filename;
	}
}
