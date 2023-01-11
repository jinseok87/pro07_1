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

import kr.go.pss.dto.QnaDTO;
import kr.go.pss.service.QnaService;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	@Autowired
	QnaService qnaService;

	@Autowired
	HttpSession session;

	@GetMapping("list")
	public String qnaList(Model model) throws Exception {
		List<QnaDTO> qnaList = qnaService.qnaList();

		model.addAttribute("qnaList", qnaList);
		return "qna/list";
	}

	@GetMapping("detail")
	public String qnaDetail(Model model, @RequestParam int no) throws Exception {
		QnaDTO qna = qnaService.qnaDetail(no);
		model.addAttribute("qna", qna);
		return "qna/detail";
	}

	@GetMapping("updateForm")
	public String qnaUpdateForm(Model model, @RequestParam int no) throws Exception {
		QnaDTO qna = qnaService.qnaDetail(no);
		model.addAttribute("qna", qna);
		return "qna/updateForm";
	}

	@PostMapping("update")
	public String qnaUpdate(Model model, QnaDTO qna) throws Exception {
		qnaService.qnaUpdate(qna);
		return "redirect:/qna/list";
	}

	@GetMapping("qForm")
	public String qForm(Model model) throws Exception {
		return "qna/qForm";
	}

	@PostMapping("qWrite")
	public String qWrite(Model model, QnaDTO qna) throws Exception {
		qnaService.qWrite(qna);
		return "redirect:/qna/list";
	}

	@GetMapping("aForm")
	public String aForm(Model model, @RequestParam("lev") int lev, @RequestParam("parno") int parno) throws Exception {
		model.addAttribute("lev", lev);
		model.addAttribute("parno", parno);
		return "qna/aForm";
	}

	@PostMapping("aWrite")
	public String aWrite(Model model, QnaDTO qna) throws Exception {
		qnaService.aWrite(qna);
		return "redirect:/qna/list";
	}

}
