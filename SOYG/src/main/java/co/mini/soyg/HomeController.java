package co.mini.soyg;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.main.service.MainService;

@Controller
public class HomeController {
	@Autowired
	private MainService dao;
	
	@RequestMapping("/home.do")
	public String home(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		// 최근 등록된 스터디 모임 리스트
		model.addAttribute("recentlyClass", dao.recentlyClassList());
		// 지역별 카테고리
		model.addAttribute("mainRegionList", dao.mainRegionList());
		// 분야별 카테고리
		model.addAttribute("mainFieldsList", dao.mainFieldsList());
		return "tiles/main";
	}
	
}
