package co.mini.soyg.study.web;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.JsonObject;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.mini.soyg.study.service.StudyService;
import co.mini.soyg.study.vo.StudyVO;

@Controller
public class StudyController {
	@Autowired
	private StudyService dao;
	
	@RequestMapping("/studySelect.do")
	public String studySelect(StudyVO vo, Model model) {
		
		model.addAttribute("study", dao.studySelect(vo));

		return "class/classSelect";
	}
	
	@RequestMapping("/studyVideo.do")
	public String studyVideo() {
		return "class/classVideo";
	}
	
	@RequestMapping("/classCreateForm.do")
	public String studyCreate() {
		return "class/classCreateForm";
	}
	
	@RequestMapping("classInsert.do")
	public String studyInsert(HttpServletRequest req, HttpServletResponse resp) {
		resp.setCharacterEncoding("UTF-8");
		String path = null;
		ServletContext sc = this.getServletContext();
		path = sc.getRealPath("resources/classImage");
		System.out.println(path);

		MultipartRequest multi = new MultipartRequest( //
				req, //
				path, //
				8 * 1024 * 1024, // 
				"UTF-8", //
				new DefaultFileRenamePolicy());
		
		Enumeration en = multi.getFileNames();
		String fileN = null;
		while(en.hasMoreElements()) {
			String name = (String) en.nextElement();
			String fileName = multi.getFilesystemName(name);
			fileN = fileName;
		}
		JsonObject json = new JsonObject();
		json.addProperty("fileName", fileN);
		json.addProperty("uploaded", 1);
		json.addProperty("url", req.getContextPath() + "/resources/classImage/" + fileN);
		resp.getWriter().print(json);
		
		return "redirect:home.do";
	}
	
}
