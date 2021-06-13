package co.mini.soyg.admin.service;

import java.util.List;

import co.mini.soyg.admin.vo.ClassVO;

public interface ClassService {

		List<ClassVO> classSelectList();		//전체조히
		ClassVO classSelect(int class_code);		//한건조회
		int classDelete(int class_code);			//삭제
		int classUpdate(ClassVO vo);
}
