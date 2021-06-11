package co.mini.soyg.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
		
	@RequestMapping("/regionsg.do")
	public String seoulgyoenggi(Model model) {
		//seoul.jsp(서울/경기권 스터디 뷰)
		return ("mainRegion/seoul");
	}
	
	@RequestMapping("/regiongw.do")
	public String gangwon(Model model) {
		//gangwon.jsp(강원도권 뷰)
		return ("mainRegion/gangwon");
	}
	@RequestMapping("/regiondj.do")

	public String daejeon(Model model) {
		//daejeon.jsp(대전/충북권 뷰)
		return ("mainRegion/daejeon");
	}
	
	@RequestMapping("/regioncn.do")
	public String choungnam(Model model) {
		//choungnam.jsp(충남권 뷰)
		return ("mainRegion/choungnam");
	}
	
	@RequestMapping("/regionjb.do")
	public String jeonbuk(Model model) {
		//jeonbuk.jsp(전북권 뷰)
		return ("mainRegion/jeonbuk");
	}
	
	@RequestMapping("/regiongj.do")
	public String gwangju(Model model) {
		//gwangju.jsp(광주/전남권 뷰)
		return ("mainRegion/gwangju");
	}
	
	@RequestMapping("/regiondg.do")
	public String daegu(Model model) {
		//daegu.jsp(대구/경북권 뷰)
		return ("mainRegion/daegu");
	}
	
	@RequestMapping("/regionbs.do")
	public String busan(Model model) {
		//busan.jsp(부산/경남 뷰)
		return ("mainRegion/busan");
	}
	
	@RequestMapping("/regionjj.do")
	public String jeju(Model model) {
		//jeju.jsp(제주 뷰)
		return ("mainRegion/jeju");
	}
	
}
