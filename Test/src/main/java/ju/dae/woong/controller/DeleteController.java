package ju.dae.woong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import ju.dae.woong.service.GongiService;

@Controller
public class DeleteController {
	@Autowired private GongiService service;
	
	@GetMapping("/gongi/delete")
	public String delete(int num) {
		service.delete(num);
		return "redirect:/gongi/list";
	}
}
