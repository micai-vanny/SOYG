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
	
	/* 지역별 스터디 리스트 뷰가 일반 리스트 형식이 있고 그리드 형식이 있는데,
	 * 뷰 페이지가 각각임. 이럴 경우 컨트롤러가 각각 필요한 건지?
	 * 같은 컨트롤러를 공유할 수 있는 방법은 없는지?
	*/
}
