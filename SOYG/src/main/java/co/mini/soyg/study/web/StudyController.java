package co.mini.soyg.study.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.study.service.StudyService;
import co.mini.soyg.study.serviceImpl.StudyServiceImpl;
import co.mini.soyg.study.vo.StudyVO;

@Controller
public class StudyController {
	@Autowired
	private StudyService dao;

//	@RequestMapping("/studySelect.do")
//	public String study(Model model) {
//		StudyService service = new StudyServiceImpl();
//	
//		List<StudyVO> list = service.StudySelectList();
//		
//		for (StudyVO vo : list) {
//			System.out.println(vo.getClassName());
//		}
//
//		return "class/classSelect";
//	}
	
	@RequestMapping("/studySelect.do")
	public String study(Model model) {
		model.addAttribute("study", dao.StudySelectList());
		return ("class/classSelect");
	}
}
