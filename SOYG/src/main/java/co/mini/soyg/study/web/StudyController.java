package co.mini.soyg.study.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.study.service.StudyService;
import co.mini.soyg.study.vo.StudyInsertVO;
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
	public String studyCreate(Model model) {
		model.addAttribute("loc", dao.locateList());
		model.addAttribute("field", dao.fieldList());
		
		return "class/classCreateForm";
	}
	
	@RequestMapping("/classInsert.do")
	public String studyInsert(Model model, StudyInsertVO vo, HttpSession session) {
		String userid = (String) session.getAttribute("id");
		vo.setCaptain(userid);
		
		System.out.println(vo);
		
		dao.studyInsert(vo);
		
		return "redirect:regionList.do?loc_code=" + vo.getLoc_code();
	}
	
}
