package kr.go.pss.dao;

import java.util.List;

import kr.go.pss.dto.BoardDTO;

public interface BoardDAO {
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int no) throws Exception;
	public void updateBoard(BoardDTO dto) throws Exception;
	public void insertBoard(BoardDTO dto) throws Exception;
	public void deleteBoard(int no) throws Exception;
}


