package co.mini.soyg.likeIt.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.likeIt.service.LikeItService;
import co.mini.soyg.likeIt.vo.LikeItVO;

@Controller
public class LikeItController {
	@Autowired
	private LikeItService dao;
	
	@RequestMapping("/likeItUpdate.do")
	public String likeItUpdate(LikeItVO vo, Model model) {
		// 좋아요 버튼 누르면 실행
		model.addAttribute("likeIt", dao.likeItUpdate(vo));
		return null;
	}

	@RequestMapping("/likeItCount.do")
	public String likeItCount(LikeItVO vo, Model model) {
		// 좋아요 개수 카운트
		return null;
	}
	
	@RequestMapping("/likeItUndo.do")
	public String likeItUndo(LikeItVO vo, Model model) {
		// 좋아요 취소
		return null;
	}
	
}
