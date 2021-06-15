package co.mini.soyg.member.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import co.mini.soyg.member.service.MemberService;
import co.mini.soyg.member.serviceImpl.MemberServiceImpl;
import co.mini.soyg.member.vo.MemberVO;
import co.mini.soyg.studyclass.serviceImpl.StudyClassServiceImpl;
import co.mini.soyg.studyclass.vo.StudyClassVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService dao; // new MemberServiceImpl()

	@Autowired
	private MemberServiceImpl dao2;

	// 홈 > 멤버조인페이지 이동
	@RequestMapping("/memberJoin.do")
	public String memberJoin(Model model) {
		return "member/MemberJoinForm";
	}

	// 홈 > 로그인페이지 이동
	@RequestMapping("/memberLoginpage.do")
	public String memberLoginpage(Model model) {

		return "member/MemberLogin";
	}

	// 로그인페이지 > 로그인
	@RequestMapping("/memberLogin.do")
	public String memberLogin(HttpServletRequest request, MemberVO vo) {
		HttpSession session = request.getSession();
		MemberVO mvo;
		mvo = dao2.loginCheck(vo);

		String path = "";

		if (mvo == null) {
			// 받아온 ID/PASS값이 일치하지않아 값이 없을때
			path = "member/MemberLoginFail";
			// 로그인 실패 페이지이동
		} else {
			// 받아온 ID/Pass값이 일치
			// 로그인 정보 세션유지
			session.setAttribute("id", mvo.getUserId());
			session.setAttribute("user", mvo);
			path = "redirect:home.do";
		}

		return path;
	}

	// 로그아웃
	@RequestMapping("/logOut.do")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:home.do";
	}

	// 마이페이지 이동
	@RequestMapping("/mymenu.do")
	public String mymenu(HttpServletRequest request, HttpServletResponse response, MemberVO vo,Model model) {

		HttpSession session = request.getSession();
		StudyClassServiceImpl study = new StudyClassServiceImpl();
		MemberVO mvo = new MemberVO();
		String userId = (String) session.getAttribute("id");
		
		vo.setUserId(userId);

		mvo = dao.selectMember(vo);
		model.addAttribute("class",study.selectStudyList(userId));
		

		request.setAttribute("info", mvo);

		return "member/mymenu";
	}

	// 내정보수정페이지 이동
	@RequestMapping("/infomationUpdatepage.do")
	public String infomationUpdatepage(HttpServletRequest request, HttpServletResponse response, MemberVO vo) {
		HttpSession session = request.getSession();
		MemberVO mvo = new MemberVO();
		String userId = (String) session.getAttribute("id");

		vo.setUserId(userId);

		mvo = dao.selectMember(vo);

		request.setAttribute("info", mvo);

		return "member/infomationUpdate";
	}

	// 내정보 주소 수정 >> 주소
	@RequestMapping("/updateAddress.do")
	public String updateAddress(HttpServletRequest request, MemberVO vo) {
		HttpSession session = request.getSession();

		String userId = (String) session.getAttribute("id");
		String adr1 = request.getParameter("postcode");
		String adr2 = request.getParameter("roadAddress");
		String adr3 = request.getParameter("detailAddress");
		String adr4 = request.getParameter("extraAddress");

		String address = " ( " + adr1 + " ) " + adr2 + " " + adr3 + " " + adr4;

		vo.setAddress(address);
		vo.setUserId(userId);

		dao2.updateAddress(vo);

		return "redirect:infomationUpdatepage.do";

	}

	// 내정보 주소 수정 >> 기본정보
	@RequestMapping("/updateInfo.do")
	public String updateInfo(HttpServletRequest request, MemberVO vo) {
		HttpSession session = request.getSession();

		String userId = (String) session.getAttribute("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		vo.setUserId(userId);
		vo.setName(name);
		vo.setEmail(email);
		vo.setPhone(phone);

		dao2.updateMember(vo);

		return "redirect:infomationUpdatepage.do";

	}

	// 내정보수정 >> 비밀번호 수정
	@RequestMapping("/updatePassword.do")
	public String updatePassword(HttpServletRequest request, HttpServletResponse response, MemberVO vo)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		MemberVO mvo = new MemberVO();

		String userId = (String) session.getAttribute("id");
		String pastPassword = request.getParameter("pastPassword");
		String password = request.getParameter("password");

		mvo.setUserId(userId);
		mvo.setPassword(pastPassword);

		boolean N = dao2.passwordCheck(mvo);
		int cnt = 0;
		if (N == true) {
			vo.setUserId(userId);
			vo.setPassword(password);
			dao2.updatePassword(vo);
			cnt = 1;
			response.getWriter().print(cnt);
		} else {
			response.getWriter().print(cnt);
		}
		return null;
	}
	// 회원탈퇴 페이지 이동
	@RequestMapping("/memberDeletepage.do")
	public String memberDeletepage(Model model) {
		return "member/memberDeletepage";
	}
	// 회원탈퇴 실행
	@RequestMapping("/memberDelete.do")
	public String memberDelete(HttpServletRequest request, HttpServletResponse response, MemberVO vo)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("id");
		String password = request.getParameter("password");
		
		MemberVO mvo = new MemberVO();
		
		mvo.setUserId(userId);
		mvo.setPassword(password);
		
		boolean N = dao2.passwordCheck(mvo);
		int Cnt=0;
		if( N == true) {
			vo.setUserId(userId);
			dao2.deleteMember(vo);
			Cnt=1;
			session.invalidate();
			response.getWriter().print(Cnt);
		} else {
			response.getWriter().print(Cnt);
		}
		return null;
	}
	// 회원 가입
	@RequestMapping("/memberInsert.do")
	public String memberInsert(HttpServletRequest request, MemberVO vo, Model model) {
		String adr1 = request.getParameter("postcode");
		String adr2 = request.getParameter("roadAddress");
		String adr3 = request.getParameter("detailAddress");
		String adr4 = request.getParameter("extraAddress");

		String address = " ( " + adr1 + " ) " + adr2 + " " + adr3 + " " + adr4;

		vo.setAddress(address);

		dao.insertMember(vo);

		return "redirect:home.do";
	}

	// 회원가입 ID중복체크
	@RequestMapping("/UserIdCheck.do")
	public void UserIdCheck(HttpServletResponse response, MemberVO vo) throws IOException {

		boolean b = dao.idCheck(vo);

		response.getWriter().print(b);

	}

}
