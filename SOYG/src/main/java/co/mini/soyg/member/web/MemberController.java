package co.mini.soyg.member.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.mini.soyg.member.service.MemberService;
import co.mini.soyg.member.serviceImpl.MemberServiceImpl;
import co.mini.soyg.member.vo.MemberVO;

@Controller
public class MemberController {
	 
	@Autowired
	   private MemberService dao; //new MemberServiceImpl()
	
	//홈 > 멤버조인페이지 이동
	@RequestMapping("/memberJoin.do")
	public String memberJoin(Model model) {
		return "member/MemberJoinForm";
	}
	
	//회원 가입
	@RequestMapping("/memberInsert.do")
	public String memberInsert(HttpServletRequest request ,MemberVO vo ,Model model) {
		String adr1 = request.getParameter("postcode");
		String adr2 = request.getParameter("roadAddress");
		String adr3 = request.getParameter("detailAddress");
		String adr4 = request.getParameter("extraAddress");
		
		String address = " ( " + adr1 + " ) " + adr2 + adr3 + adr4;
		System.out.println(address);
		
		vo.setAddress(address);
		
		dao.insertMember(vo);
		
		
		return "home.do";
	}
	//회원가입 ID중복체크
	@RequestMapping("/UserIdCheck.do")
	public void UserIdCheck(HttpServletResponse response, MemberVO vo) throws IOException {
	
		boolean b = dao.idCheck(vo);
		
		response.getWriter().print(b);
		
	}


}
