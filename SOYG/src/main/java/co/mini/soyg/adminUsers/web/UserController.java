package co.mini.soyg.adminUsers.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	// 회원 하나 조회
	@RequestMapping("/userSelect.do")
	public String userSelect(UserVO vo, Model model, @RequestParam("userID") String userID) {
		// @requestparam()~~ = httpsrequest ㅇㅇ
		
		vo.setUserID(userID);
		
		model.addAttribute("user", dao.userSelect(vo));
				
		return "adminUserControl/userUpdatePage";
	}

	
//	// 회원 수정 페이지
//	@RequestMapping("/userUpdatePage.do")
//	public String userUpdatePage(HttpServletRequest req, Model model, UserVO vo) {
//		
//		String user = req.getParameter("userID");
//		
//		vo.setUserID(user);
//		
//		model.addAttribute("user", dao.userSelect(vo));
//		
//		return "adminUserControl/userUpdatePage";
//	}
	
	// 회원 정보 수정
	@RequestMapping("/userUpdate.do")
	public String userUpdate(HttpServletRequest req, UserVO vo, Model model) {
		
		int result = 0;
		
		String user = req.getParameter("userID");
		String pass = req.getParameter("password");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String birth = req.getParameter("birth");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		
		vo.setAddress(address);
		vo.setBirth(birth);
		vo.setEmail(email);
		vo.setGender(gender);
		vo.setPassword(pass);
		vo.setPhone(phone);
		vo.setUserID(user);
		vo.setName(name);
		
		result = dao.userUpdate(vo);
		
		if (result != 0) {
			
			System.out.println("유저 정보 수정 : " + result + "건 완료.");
		} else {
			
			System.out.println("수정 안 됨.");
		}
		
		return "adminUserControl/userUpdate";
	}
	
	// 회원 삭제 페이지
	@RequestMapping("/userDeletePage.do")
	public String userDeletePage() {
		
		return "adminUserControl/userDeletePage";
	}
	
	// 회원 탈퇴
	@RequestMapping("/userDelete.do")
	public String userDelete(HttpServletRequest req, UserVO vo, Model model) {
		
		int result = 0;
		String user = req.getParameter("userID");
		
		vo.setUserID(user);
		result = dao.userDelete(vo);
		
		if (result != 0) {
			
			System.out.println("유저 삭제 : " + result + "건 완료.");
		} else {
			
			System.out.println("삭제 안 됨.");
		}
		
		return "adminUserControl/userList";	// 에이잭스 쓰는 순간 이거는 의미 없어진다.
	}
}
