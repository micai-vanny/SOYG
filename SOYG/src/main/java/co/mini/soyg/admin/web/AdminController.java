package co.mini.soyg.admin.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.admin.service.ClassService;
import co.mini.soyg.admin.vo.ClassVO;

@Controller
public class AdminController {
	@Autowired
	private ClassService dao;
	
	@RequestMapping("/admin.do")
	public String admin (Model model) {
		return "admin/adminPage";
	}
	@RequestMapping("/adminClassList.do")
	public String classList(Model model) {
		model.addAttribute("classes", dao.classSelectList());
		return "admin/adminClassList";
	}
	@RequestMapping("/adminClassSelect.do")
	public String classSelect(Model model) {
		
		return "admin/adminClassSelect";
	}
}
