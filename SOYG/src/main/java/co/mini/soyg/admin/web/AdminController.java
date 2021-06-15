package co.mini.soyg.admin.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.mini.soyg.admin.service.ClassService;
import co.mini.soyg.admin.vo.ClassVO;
import co.mini.soyg.admin.vo.Criteria;
import co.mini.soyg.admin.vo.PageMaker;
import oracle.net.ano.Service;

@Controller
public class AdminController {
	@Autowired
	private ClassService dao;
	
	//관리자페이지
	@RequestMapping("/admin.do")
	public String admin (Model model) {
		return "admin/adminPage";
	}

	/*
	 * //관리자-class전체리스트
	 * 
	 * @RequestMapping("/adminClassList.do") public String classList(Model model) {
	 * model.addAttribute("classes", dao.classSelectList());
	 * return"admin/adminClassList"; }
	 */
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
	public String classUpdate(Model model, ClassVO vo, @RequestParam("class_code") int class_code) {
		System.out.println(vo.getClass_code());
		 dao.classUpdate(vo);
		 model.addAttribute("classes", dao.classSelect(class_code));
		 
		return"admin/adminClassSelect";
	}
	//관리자-리스트 삭제
	@RequestMapping("/adminClassDelete.do")
	public String classDelete(Model model, @RequestParam("class_code") int class_code ) {
		System.out.println(class_code);
		dao.classDelete(class_code);
		model.addAttribute("classes", dao.classSelectList());
		return "admin/adminClassList";
	}
	//리스트 목록 조회
	@RequestMapping("/adminClassList.do")
	public String list(Model model, Criteria cri) {
		model.addAttribute("list", dao.list(cri));
		model.addAttribute("classes", dao.classSelectList());
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(dao.listCount());
		
		model.addAttribute("pageMaker",pageMaker);
	return "admin/adminClassList";
	
	}
}
