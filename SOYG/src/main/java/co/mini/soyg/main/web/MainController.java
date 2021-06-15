package co.mini.soyg.main.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.mini.soyg.main.service.MainService;
import co.mini.soyg.main.vo.MainVO;

@Controller
public class MainController {
	@Autowired
	private MainService dao;
	
	@RequestMapping("/regionList.do")
	public String regionList(MainVO vo, Model model) {
		//지역별 스터디 리스트 뷰
		System.out.println(vo.getLoc_code());
		// 리스트 정보
		model.addAttribute("regionList", dao.regionList(vo));
		// 카테고리 리스트(pull-down menu)
		model.addAttribute("regSelect", dao.regselect());
		//간판에 지역 이름 달아주자
		model.addAttribute("regionName", dao.regionName(vo));
		return ("main/regionList");
	}
	
	@RequestMapping("/regionGrid.do")
	public String regionGrid(MainVO vo, Model model) {
		// 지역별 그리드 리스트
		System.out.println(vo.getLoc_code());
		// 리스트 정보
		model.addAttribute("regionList", dao.regionList(vo));
		// 카테고리 리스트(pull-down menu)
		model.addAttribute("regSelect", dao.regselect());
		//간판에 지역 이름 달아주자
		model.addAttribute("regionName", dao.regionName(vo));
		return ("main/regionGridList");
	}
	
	@RequestMapping("/fieldsList.do")
	public String fieldsList(MainVO vo, Model model) {
		//분야별 스터디 리스트 뷰
		System.out.println("분야코드 : "+vo.getField_code());
		// 리스트 정보
		model.addAttribute("fieldsList", dao.fieldsList(vo));
		//카테고리 리스트
		model.addAttribute("fieldsSelect", dao.fieldsSelect());
		//간판에 분야명 달아주자
		model.addAttribute("fieldsName", dao.fieldsName(vo));
		return ("main/fieldsList");
	}
	
	@RequestMapping("/fieldsGrid.do")
	public String fieldsGrid(MainVO vo, Model model) {
		// 분야별 그리드 리스트
		System.out.println(vo.getField_code());
		//리스트 정보
		model.addAttribute("fieldsList", dao.fieldsList(vo));
		//카테고리 리스트
		model.addAttribute("fieldsSelect", dao.fieldsSelect());
		//간판에 분야명 달아주자
		model.addAttribute("fieldsName", dao.fieldsName(vo));
		return ("main/fieldsGridList");
	}
	
	@RequestMapping("/searchClass.do")
	public String searchClass(MainVO vo, Model model) {
		System.out.println(vo.getSearch());
		//스터디 검색
		model.addAttribute("searchClass", dao.searchClass(vo));
		return ("main/searchView");
	}
	
}
