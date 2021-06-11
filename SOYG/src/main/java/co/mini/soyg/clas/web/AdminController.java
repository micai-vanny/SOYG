package co.mini.soyg.clas.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.clas.service.ClassService;

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
		model.addAttribute("class", dao.classSelectList());
		return "admin/adminClassList";
	}
}
