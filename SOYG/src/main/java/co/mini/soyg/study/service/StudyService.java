package co.mini.soyg.study.service;

import java.util.List;

import co.mini.soyg.study.vo.StudyVO;
import co.mini.soyg.study.vo.TestVO;

public interface StudyService {
		// 전체리스트
		List<TestVO> StudySelectList();

		// 클래스 하나
		StudyVO studySelect(StudyVO vo);

		// 클래스 추가
		int studyInsert(StudyVO vo);

		// 클래스 수정
		int studyUpdate(StudyVO vo);
		
		// 클래스 삭제
		int studyDelete(StudyVO vo);
}
