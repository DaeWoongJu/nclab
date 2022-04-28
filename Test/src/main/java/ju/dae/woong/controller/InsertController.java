package ju.dae.woong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import ju.dae.woong.service.GongiService;
import ju.dae.woong.vo.GongiVo;

@Controller
public class InsertController {
	@Autowired private GongiService service;
	
	@GetMapping("/gongi/insert")
	public String form() {
		return "gongi/insert";
	}
	@PostMapping("/gongi/insert")
	public String insert(GongiVo vo,Model model) {
		int n=service.insert(vo);
		try {
			model.addAttribute("result","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("result","success");
		}
		return "gongi/result";
	}
}
