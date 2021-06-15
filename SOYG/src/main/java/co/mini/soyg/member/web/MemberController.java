package co.mini.soyg.member.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.member.service.MemberService;
import co.mini.soyg.member.serviceImpl.MemberServiceImpl;
import co.mini.soyg.member.vo.MemberVO;

@Controller
public class MemberController {
	 
	@Autowired
	   private MemberService dao; //new MemberServiceImpl()
	
	@Autowired
	private MemberServiceImpl dao2;
	
	//홈 > 멤버조인페이지 이동
	@RequestMapping("/memberJoin.do")
	public String memberJoin(Model model) {
		return "member/MemberJoinForm";
	}
	//홈 > 로그인페이지 이동
	@RequestMapping("/memberLoginpage.do")
	public String memberLoginpage(Model model) {
		
		return "member/MemberLogin";	
	}
	//로그인페이지 > 로그인
	@RequestMapping("/memberLogin.do")
	public String memberLogin(HttpServletRequest request ,MemberVO vo) {
		HttpSession session = request.getSession();
		MemberVO mvo;
		mvo = dao2.loginCheck(vo);
		
		String path = "";
		
		if(mvo == null) {
			//받아온 ID/PASS값이 일치하지않아 값이 없을때
			path = "member/MemberLoginFail";
			//로그인 실패 페이지이동
		} else {
			//받아온 ID/Pass값이 일치
			//로그인 정보 세션유지
			session.setAttribute("id", mvo.getUserId());
			session.setAttribute("user", mvo);
			path ="redirect:home.do";
		}
		
		return path;
	}
	//로그아웃
	@RequestMapping("/logOut.do")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:home.do";
	}
	
	//마이페이지 이동
	@RequestMapping("/mymenu.do")
	public String mymenu(Model model) {
		return "member/mymenu";
	}
	//내정보수정페이지 이동
	@RequestMapping("/infomationUpdatepage.do")
	public String infomationUpdatepage(Model model) {
		return "member/infomationUpdate";
	}
	//내정보 주소 수정
	@RequestMapping("/updateAddress.do")
	public String updateAddress(HttpServletRequest request , MemberVO vo) {
		
		String adr1 = request.getParameter("postcode");
		String adr2 = request.getParameter("roadAddress");
		String adr3 = request.getParameter("detailAddress");
		String adr4 = request.getParameter("extraAddress");
		
		String address = " ( " + adr1 + " ) " + adr2 + " " +adr3 + " " + adr4;
		
		vo.setAddress(address);
		
//		dao.updateAddress(vo); 임시 주석처리 함. 병합 때 무시해도 됨 - jw
		
		return "redirect:infomationUpdatepage.do";
		
	}

	//회원 가입
	@RequestMapping("/memberInsert.do")
	public String memberInsert(HttpServletRequest request ,MemberVO vo ,Model model) {
		String adr1 = request.getParameter("postcode");
		String adr2 = request.getParameter("roadAddress");
		String adr3 = request.getParameter("detailAddress");
		String adr4 = request.getParameter("extraAddress");
		
		String address = " ( " + adr1 + " ) " + adr2 + " " +adr3 + " " + adr4;
		
		vo.setAddress(address);
		
		dao.insertMember(vo);
		
		
		return "redirect:home.do";
	}
	//회원가입 ID중복체크
	@RequestMapping("/UserIdCheck.do")
	public void UserIdCheck(HttpServletResponse response, MemberVO vo) throws IOException {
	
		boolean b = dao.idCheck(vo);
		
		response.getWriter().print(b);
		
	}


}
