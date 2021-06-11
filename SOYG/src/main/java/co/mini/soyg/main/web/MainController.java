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
		model.addAttribute("regionList", dao.regionList(vo));
		return ("main/regionList");
	}
	
}
