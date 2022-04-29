package ju.dae.woong.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StringUtils;
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
	@Autowired private ServletContext sc;
	
	@GetMapping("/gongi/insert")
	public String form() {
		log.info("insert page loading......!");
		return "gongi/insert";
	}
	/*
	 * @PostMapping("/gongi/insert") public String insert(GongiVo vo,Model model,
	 * MultipartFile uploadFile) { int n=service.insert(vo); try {
	 * log.info("파일 이름 : " + uploadFile.getOriginalFilename()); log.info("파일 타입 : "
	 * + uploadFile.getContentType()); log.info("파일 크기 : " + uploadFile.getSize());
	 * 
	 * String uploadFolder = "C:\\Users\\NCLAB\\Documents\\upload";
	 * 
	 * SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); Date date = new
	 * Date(); String str = sdf.format(date); String datePath = str.replace("-",
	 * File.separator);
	 * 
	 * File uploadPath = new File(uploadFolder, datePath); if(uploadPath.exists() ==
	 * false) { uploadPath.mkdirs(); } model.addAttribute("result","success");
	 * }catch(Exception e) { e.printStackTrace();
	 * model.addAttribute("result","success"); }
	 * 
	 * return "gongi/result"; }
	 */
	
	@PostMapping("/gongi/insert")

	public String sellerInsert(GongiVo vo, MultipartFile file1, HttpServletRequest req) {
		System.out.println(vo+"aaa");

		try {
			String id = new String(StringUtils.cleanPath(vo.getId()).getBytes("8859_1"),"utf-8");
			String images = new String(StringUtils.cleanPath(vo.getImages()).getBytes("8859_1"),"utf-8");
			String title = new String(StringUtils.cleanPath(vo.getTitle()).getBytes("8859_1"),"utf-8");
			String content = new String(StringUtils.cleanPath(vo.getContent()).getBytes("8859_1"),"utf-8");
			vo.setId(id);
			vo.setImages(images);
			vo.setTitle(title);
			vo.setContent(content);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		System.out.println("vo : " + vo);
		String path = sc.getRealPath("/resources/img");
		System.out.println("경로 : " + path);
		String orgFileName = file1.getOriginalFilename();
		String saveFileName = UUID.randomUUID() + "_" + orgFileName;
		if (!file1.isEmpty()) {
			vo.setImages(saveFileName);
		}
		service.insert(vo);
		try {
			InputStream is = file1.getInputStream();
			FileOutputStream fos = new FileOutputStream(path + "\\" + saveFileName);
			FileCopyUtils.copy(is, fos);
			is.close();
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}		
		return "redirect:/";
	}
}
