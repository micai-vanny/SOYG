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
	//관리자페이지
	@RequestMapping("/admin.do")
	public String admin (Model model) {
		return "admin/adminPage";
	}
	//관리자-class전체리스트
	@RequestMapping("/adminClassList.do")
	public String classList(Model model) {
		model.addAttribute("classes", dao.classSelectList());
		return "admin/adminClassList";
	}
	//관리자-리스트 한건 선택
	@RequestMapping("/adminClassSelect.do")
	public String classSelect(Model model, int class_code) {
		model.addAttribute("classes", dao.classSelect(class_code));
		return "admin/adminClassSelect";
	}
	//관리자-리스트 수정뷰
	@RequestMapping("/adminClassUpdateView.do")
	public String updateView(Model model, int class_code) {
		model.addAttribute("classes", dao.classSelect(class_code));
		return "admin/adminClassUpdate";
	}
	
	//관리자-리스트 수정
	@RequestMapping("/adminClassUpdate.do")
	public String classUpdate(Model model, ClassVO vo) {
		model.addAttribute("classes", dao.classUpdate(vo));
		return"admin/adminClassSelect";
	}
	//관리자-리스트 삭제
	@RequestMapping("/adminClassDelete.do")
	public String classDelete(Model model, int class_code) {
		dao.classDelete(class_code);
		return "admin/adminClassList";
	}
}
