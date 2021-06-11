package co.mini.soyg.member.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	@RequestMapping("/memberJoin.do")
	public String memberJoin(Model model) {
		return "member/MemberJoinForm";
	}
	
	@RequestMapping("/memberInsert.do")
	public String insertMember(Model model) {
		
		return null;
	}
}
