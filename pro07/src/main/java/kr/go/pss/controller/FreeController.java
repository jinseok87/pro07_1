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

import kr.go.pss.dto.FreeDTO;
import kr.go.pss.service.FreeService;

@Controller
@RequestMapping("/free/")
public class FreeController {
	@Autowired
	FreeService freeService;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("list")
	public String freeList(Model model) throws Exception{
		List<FreeDTO> freeList = freeService.freeList();
		model.addAttribute("freeList",freeList);
		return "free/list";
	}
	
	@GetMapping("detail")
	public String freeDetail(Model model, @RequestParam int no) throws Exception{
		FreeDTO free= freeService.freeDetail(no);
		model.addAttribute("free",free);
		return "free/detail";
	}
	
	@GetMapping("updateForm")
	public String updateForm(Model model, @RequestParam int no) throws Exception{
		FreeDTO free = freeService.freeDetail(no);
		model.addAttribute("free",free);
		return "free/updateForm";
	}
	
	@PostMapping("update")
	public String freeUpdate(Model model, FreeDTO free) throws Exception{
		freeService.freeUpdate(free);
		return "redirect:/";
	}
	
	
	@GetMapping("insertForm")
	public String insertForm(Model model) throws Exception{
		return "free/insertForm";
	}
	
	@PostMapping("insert")
	public String freeInsert(Model model, FreeDTO dto) throws Exception{
		freeService.freeInsert(dto);
		return "redirect:/";
	}
	
	@GetMapping("delete")
	public String freeDelete(Model model, @RequestParam int no, HttpSession session) throws Exception {
		freeService.freeDelete(no);
		session.invalidate();
		return "redirect:/";
	}
	
}
