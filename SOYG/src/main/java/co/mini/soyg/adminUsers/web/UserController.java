package co.mini.soyg.adminUsers.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.adminUsers.service.UserService;
import co.mini.soyg.adminUsers.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	private UserService dao;
	
	// 컨트롤러
	@RequestMapping("/userControlPage.do")
	public String user() {
		
		return "adminUserControl/userControl";
	}
	
	// 회원 전체 조회
	@RequestMapping("/userList.do")
	public String userList(Model model) {
		
		model.addAttribute("users", dao.userList());
		return "adminUserControl/userList";
	}
	
	// 회원 하나 조회 ~> 일치하는 정보 없으면 페이지 하나 새로 만들어야 하나?
	@RequestMapping("/userSelect.do")
	public String userSelect(UserVO vo, Model model) {
		
		System.out.println("VO는 : " + vo);
		System.out.println("model은 : " + model);
		
		return "adminUserControl/userSelect";
	}
	
	// 회원 등록 페이지
	@RequestMapping("/userInsertPage.do")
	public String userInsertPage() {
		
		return "adminUserControl/userInsertPage";
	}
	
	// 회원 등록
	@RequestMapping("/userInsert.do")
	public String userInsert(UserVO vo, Model model) {
		
		int result = 0;
		String path;
		
		if (result != 0) {
			
			System.out.println("유저 정보 등록 : " + result + "건 완료.");
			path = "adminUserControl/userInsert";
		} else {
			
			System.out.println("등록 안 됨.");
			path = "#";
		}
		
		return path;
	}
	
	
	// 회원 수정 페이지
	@RequestMapping("/userUpdatePage.do")
	public String userUpdatePage() {
		
		return "adminUserControl/userUpdatePage";
	}
	
	// 회원 정보 수정
	@RequestMapping("/userUpdate.do")
	public String userUpdate(UserVO vo, Model model) {
		
		int result = 0;
		String path;
		
		if (result != 0) {
			
			System.out.println("유저 정보 수정 : " + result + "건 완료.");
			path = "adminUserControl/userUpdate";
		} else {
			
			System.out.println("수정 안 됨.");
			path = "#";
		}
		
		return path;
	}
	
	// 회원 삭제 페이지
	@RequestMapping("/userDeletePage.do")
	public String userDeletePage() {
		
		return "adminUserControl/userDeletePage";
	}
	
	// 회원 탈퇴
	@RequestMapping("/userDelete.do")
	public String userDelete(UserVO vo, Model model) {
		
		int result = 0;
		String path;
		
		if (result != 0) {
			
			System.out.println("유저 삭제 : " + result + "건 완료.");
			path = "adminUserControl/userDelete";
		} else {
			
			System.out.println("삭제 안 됨.");
			path = "#";
		}
		
		return path;
	}
}
