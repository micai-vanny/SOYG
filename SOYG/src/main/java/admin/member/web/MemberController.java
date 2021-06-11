package admin.member.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.member.service.MemberService;
import admin.member.vo.MemberVO;

public class MemberController {

	@Autowired
	private MemberService dao;
	
	
	// 회원 전체 조회
	@RequestMapping("/memberList.do")
	public String memberList(Model model) {
		
		model.addAttribute("members", dao.memberSelectList());
		return "adminMemberControl/memberList";
	}
	
	// 회원 하나 조회 ~> 일치하는 정보 없으면 페이지 하나 새로 만들어야 하나?
	@RequestMapping("/memberSelect.do")
	public String memberSelect(MemberVO vo, Model model) {
		
		return "adminMemberControl/memberSelect";
	}
	
	// 회원 등록
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo, Model model) {
		
		int result = 0;
		String path;
		
		if (result != 0) {
			
			System.out.println("회원 정보 등록 : " + result + "건 완료.");
			path = "adminMemberControl/memberInsert";
		} else {
			
			System.out.println("등록 안 됨.");
			path = "#";
		}
		
		return path;
	}
	
	// 회원 정보 수정
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo, Model model) {
		
		int result = 0;
		String path;
		
		if (result != 0) {
			
			System.out.println("회원 정보 수정 : " + result + "건 완료.");
			path = "adminMemberControl/memberUpdate";
		} else {
			
			System.out.println("수정 안 됨.");
			path = "#";
		}
		
		return path;
	}
	
	// 회원 탈퇴
	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO vo, Model model) {
		
		int result = 0;
		String path;
		
		if (result != 0) {
			
			System.out.println("회원 삭제 : " + result + "건 완료.");
			path = "adminMemberControl/memberDelete";
		} else {
			
			System.out.println("삭제 안 됨.");
			path = "#";
		}
		
		return path;
	}
}
