package co.mini.soyg.likeIt.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.mini.soyg.likeIt.service.LikeItService;
import co.mini.soyg.likeIt.vo.LikeItVO;

@Controller
public class LikeItController {
	@Autowired
	private LikeItService dao;
	
	@ResponseBody
	@RequestMapping("/likeItEdit.do")
	public void likeItUpdate(HttpServletRequest request, LikeItVO vo, Model model) {
		// 좋아요 버튼 누르면 실행
		String class_code = request.getParameter("c_code");
		String userid = request.getParameter("id");

		vo.setClass_code(Integer.parseInt(class_code));
		vo.setUserId(userid);
		
		System.out.println("likeItUpdate test : "+vo.getClass_code() +","+ vo.getUserId());
		
		boolean check = dao.likeItCheck(vo);
		System.out.println(check);
		
		if (check == false) {
		// 사용자가 해당 스터디를 좋아요한 적이 없는 경우
			model.addAttribute("likeItUpdate", dao.likeItUpdate(vo));
			//System.out.println();
		} else {
		// 사용자가 해당 스터디를 좋아요한 적이 있는 경우
			model.addAttribute("likeItUndo", dao.likeItUndo(vo));
		}
	}
	
	@ResponseBody
	@RequestMapping("/likeItCount.do")
	public void likeItCount(LikeItVO vo, Model model) {
		// 좋아요 개수 카운트
		System.out.println(vo);
		model.addAttribute("likeItCount", dao.likeItCount(vo));
	}
	
}
