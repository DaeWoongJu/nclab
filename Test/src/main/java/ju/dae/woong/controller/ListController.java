package ju.dae.woong.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ju.dae.woong.service.GongiService;
import ju.dae.woong.util.PageUtil;
import ju.dae.woong.vo.GongiVo;

@Controller
public class ListController {
	@Autowired private GongiService service;
	/*
	 * @PostMapping("/gongi/list") public String listForm(Model model) {
	 * model.addAttribute("/WEB-INF/views/gongi/list.jsp"); return "layout"; }
	 */
	
	@RequestMapping("/gongi/list")
	public String list(@RequestParam(value = "pageNum",defaultValue = "1") int pageNum,String field,String keyword,Model model) {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("field", field);
		map.put("keyword", keyword);
		
		int totalRowCount=service.getCount(map);
		PageUtil pu=new PageUtil(pageNum, 10, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		List<GongiVo> list=service.selectList(map);
		model.addAttribute("field",field);
		model.addAttribute("keyword",keyword);
		model.addAttribute("list",list);
		model.addAttribute("pu",pu);
		return "gongi/list";
	}
}
