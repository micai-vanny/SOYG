package co.mini.soyg.admin.service;

import java.util.List;

import co.mini.soyg.admin.vo.ClassVO;

public interface ClassService {

		List<ClassVO> classSelectList();		//전체조히
		ClassVO classSelect(ClassVO vo);		//한건조회
		int classInsert(ClassVO vo);			//추가
		int classDelete(ClassVO vo);			//삭제
		int classUpdate(ClassVO vo);
}
