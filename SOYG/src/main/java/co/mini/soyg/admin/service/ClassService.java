package co.mini.soyg.admin.service;

import java.util.List;

import co.mini.soyg.admin.vo.ClassVO;
import co.mini.soyg.admin.vo.Criteria;

public interface ClassService {
		
		List<ClassVO> list(Criteria cri);
		int listCount();
		List<ClassVO> classSelectList();		//전체조회
		ClassVO classSelect(int class_code);	//한건조회
		int classDelete(int class_code);		//삭제
		int classUpdate(ClassVO vo);			//수정
}
