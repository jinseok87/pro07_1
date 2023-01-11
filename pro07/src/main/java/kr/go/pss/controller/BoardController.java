package kr.go.pss.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.pss.dto.BoardDTO;
import kr.go.pss.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	HttpSession session;
	
	// 공지사항 목록
	@GetMapping("list")
	public String boardList(Model model) throws Exception{
		List<BoardDTO> boardList = boardService.boardList();
		model.addAttribute("boardList",boardList);
		return "board/list";
	}
	
	// 공지사항 상세보기
	@GetMapping("detail")
	public String boardDetail(@RequestParam int no, Model model) throws Exception{
		BoardDTO board = boardService.boardDetail(no);
		model.addAttribute("board",board);
		return "board/detail";
	}
	
	// 공지사항 수정 폼
	@GetMapping("updateForm")
	public String updateForm(Model model,@RequestParam int no) throws Exception{
		BoardDTO board = boardService.boardDetail(no);
		model.addAttribute("board",board);
		return "board/updateForm";
	}
	
	// 공지사항 수정
	@PostMapping("update")
	public String updateBoard(BoardDTO board, Model model) throws Exception{
		boardService.updateBoard(board);
		return "redirect:/board/list";
	}
	
	@GetMapping("insertForm")
	public String insertForm(Model model) throws Exception{
		return "board/insertForm";
	}
	
	@PostMapping("insert")
	public String insertBoard(BoardDTO dto, Model model) throws Exception{
		boardService.insertBoard(dto);
		return "redirect:/";
	}
	
	@GetMapping("delete")
	public String deleteBoard(@RequestParam int no, HttpSession session, Model model) throws Exception{
		boardService.deleteBoard(no);
		session.invalidate();
		return "redirect:/";
	}
}
