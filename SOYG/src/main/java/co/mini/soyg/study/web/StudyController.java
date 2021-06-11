package co.mini.soyg.study.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.study.service.StudyService;
import co.mini.soyg.study.vo.StudyVO;

@Controller
public class StudyController {
	@Autowired
	private StudyService dao;

	@RequestMapping("/studySelect.do")
	public String study(Model model) {
		
		model.addAttribute("study", dao.StudySelectList());

		return "class/classSelect";
	}
}
