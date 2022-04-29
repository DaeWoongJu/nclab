package ju.dae.woong.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import ju.dae.woong.service.GongiService;
import ju.dae.woong.vo.GongiVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class InsertController {
	@Autowired private GongiService service;
	
	@GetMapping("/gongi/insert")
	public String form() {
		log.info("insert page loading......!");
		return "gongi/insert";
	}
	@PostMapping("/gongi/insert")
	public String insert(GongiVo vo,Model model, MultipartFile uploadFile) {
		int n=service.insert(vo);
		try {
			log.info("파일 이름 : " + uploadFile.getOriginalFilename());
			log.info("파일 타입 : " + uploadFile.getContentType());
			log.info("파일 크기 : " + uploadFile.getSize());
			
			String uploadFolder = "C:\\Users\\NCLAB\\Documents\\upload";
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String str = sdf.format(date);
			String datePath = str.replace("-", File.separator);
			
			File uploadPath = new File(uploadFolder, datePath);
			if(uploadPath.exists() == false) {
				uploadPath.mkdirs();
			}
			model.addAttribute("result","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("result","success");
		}
		
		return "gongi/result";
	}
	
}
