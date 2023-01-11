package kr.go.pss.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.pss.dto.BoardDTO;
@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	SqlSession sqlSession;
	
	// 공지사항 목록
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	// 공지사항 상세보기
	
	@Override
	public BoardDTO boardDetail(int no) throws Exception {
		 sqlSession.update("board.visitedUp",no); 
		return sqlSession.selectOne("board.boardDetail", no);
	}
	
	// 공지사항 수정
	@Override
	public void updateBoard(BoardDTO dto) throws Exception {
			sqlSession.update("board.updateBoard",dto);
		
	}

	// 공지사항 등록
	@Override
	public void insertBoard(BoardDTO dto) throws Exception {
			sqlSession.insert("board.insertBoard",dto);
		
	}

	// 공지사항 삭제
	@Override
	public void deleteBoard(int no) throws Exception {
			sqlSession.delete("board.deleteBoard",no);
		
	}

	
	

}
