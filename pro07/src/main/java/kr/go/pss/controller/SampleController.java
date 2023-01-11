package kr.go.pss.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.go.pss.dto.SampleDTO;
import kr.go.pss.service.SampleService;

@Controller
@RequestMapping("/sample/*")
public class SampleController {
	@Autowired
	SampleService sampleService;
	
	@GetMapping("list")
	public String sampleList(Model model) throws Exception {
		List<SampleDTO> sampleLst = sampleService.sampleList();
		model.addAttribute("sampleList",sampleLst);
		return "sample/list";
	}
	
}
